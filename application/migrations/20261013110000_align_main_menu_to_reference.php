<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Align_main_menu_to_reference extends CI_Migration
{
	public function up()
	{
		$now = date('Y-m-d H:i:s');
		$this->db->trans_start();

		// Preserve CMS-managed menu records while setting the public navigation to the approved design.
		$roots = array(
			array('/', 'Trang chủ', 'Home', 1),
			array('/gioi-thieu', 'Giới thiệu chi nhánh', 'Branch introduction', 2),
			array('/du-an', 'Dự án', 'Projects', 3),
			array('/san-pham', 'Sản phẩm', 'Products', 4),
			array('/tin-tuc', 'Tin tức', 'News', 5),
			array('/trang/thu-tuc', 'Thủ tục', 'Procedures', 6),
			array('/trang/tuyen-dung', 'Tuyển dụng', 'Careers', 7),
			array('/lien-he', 'Liên hệ', 'Contact', 8)
		);

		foreach ($roots as $item)
		{
			$this->upsertMenu(NULL, $item[0], $item[1], $item[2], $item[3], $now);
		}

		// Keep legacy links available in the CMS, but remove them from the public main navigation.
		$this->db->where('location', 'main')->where('parent_id IS NULL', NULL, FALSE)
			->where_in('url', array('/linh-vuc', '/cong-bo-thong-tin', '/thong-tin-noi-bo'))
			->update('menus', array('status' => 0, 'updated_at' => $now));

		$pages = array(
			array('Thủ tục', 'thu-tuc', 'Procedures'),
			array('Tuyển dụng', 'tuyen-dung', 'Careers'),
			array('Thủ tục đầu tư', 'thu-tuc-dau-tu', 'Investment procedures'),
			array('Cơ hội nghề nghiệp', 'co-hoi-nghe-nghiep', 'Career opportunities')
		);
		foreach ($pages as $page)
		{
			if ($this->db->where('slug', $page[1])->count_all_results('pages') === 0)
			{
				$this->db->insert('pages', array(
					'title' => $page[0], 'slug' => $page[1], 'status' => 'published',
					'excerpt' => '', 'content_html' => '<p>Nội dung đang được cập nhật.</p>',
					'published_at' => $now, 'created_at' => $now, 'updated_at' => $now
				));
			}
		}

		$projects = $this->db->select('id')->where('slug', 'khu-cong-nghiep-nam-pleiku')->get('projects')->row_array();
		if (! empty($projects))
		{
			$this->upsertMenu((int) $this->menuId('main', NULL, '/du-an'), '/du-an/khu-cong-nghiep-nam-pleiku', 'Khu công nghiệp Nam Pleiku', 'Nam Pleiku Industrial Park', 1, $now);
		}
		$this->upsertMenu((int) $this->menuId('main', NULL, '/trang/thu-tuc'), '/trang/thu-tuc-dau-tu', 'Thủ tục đầu tư', 'Investment procedures', 1, $now);
		$this->upsertMenu((int) $this->menuId('main', NULL, '/trang/tuyen-dung'), '/trang/co-hoi-nghe-nghiep', 'Cơ hội nghề nghiệp', 'Career opportunities', 1, $now);

		$this->db->trans_complete();
	}

	private function menuId($location, $parentId, $url)
	{
		$this->db->where(array('location' => $location, 'url' => $url));
		$parentId === NULL ? $this->db->where('parent_id IS NULL', NULL, FALSE) : $this->db->where('parent_id', $parentId);
		$row = $this->db->select('id')->get('menus')->row_array();
		return empty($row) ? 0 : (int) $row['id'];
	}

	private function upsertMenu($parentId, $url, $title, $titleEn, $sortOrder, $now)
	{
		$location = 'main';
		$id = $this->menuId($location, $parentId, $url);
		$data = array(
			'location' => $location, 'parent_id' => $parentId, 'title' => $title,
			'title_en' => $titleEn, 'url' => $url, 'target' => '_self',
			'sort_order' => $sortOrder, 'status' => 1, 'updated_at' => $now
		);
		if ($id > 0)
		{
			$this->db->where('id', $id)->update('menus', $data);
		}
		else
		{
			$data['created_at'] = $now;
			$this->db->insert('menus', $data);
		}
	}

	public function down()
	{
		// Keep editorial content and menu records so CMS changes are never discarded on rollback.
	}
}
