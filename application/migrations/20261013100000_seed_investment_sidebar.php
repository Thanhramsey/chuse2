<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Seed_investment_sidebar extends CI_Migration
{
	public function up()
	{
		$now = date('Y-m-d H:i:s');
		$items = array(
			array('Giới thiệu về tỉnh Gia Lai', 'gioi-thieu-ve-tinh-gia-lai', 'Introduction to Gia Lai Province'),
			array('Giới thiệu chủ đầu tư', 'gioi-thieu-chu-dau-tu', 'About the Investor'),
			array('Các dự án triển khai', 'cac-du-an-trien-khai', 'Projects Under Development'),
			array('Cơ sở hạ tầng', 'co-so-ha-tang', 'Infrastructure'),
			array('Chính sách đầu tư', 'chinh-sach-dau-tu', 'Investment Policies'),
			array('Lợi thế đầu tư', 'loi-the-dau-tu', 'Investment Advantages'),
			array('Tài liệu giới thiệu', 'tai-lieu-gioi-thieu', 'Introduction Materials')
		);

		foreach ($items as $index => $item)
		{
			if ($this->db->where('slug', $item[1])->count_all_results('pages') === 0)
			{
				$this->db->insert('pages', array(
					'title' => $item[0], 'slug' => $item[1], 'status' => 'published',
					'excerpt' => '', 'content_html' => '<p>Nội dung đang được cập nhật.</p>',
					'published_at' => $now, 'created_at' => $now, 'updated_at' => $now
				));
			}

			$url = '/trang/' . $item[1];
			if ($this->db->where(array('location' => 'home_sidebar', 'url' => $url))->count_all_results('menus') === 0)
			{
				$this->db->insert('menus', array(
					'location' => 'home_sidebar', 'parent_id' => NULL,
					'title' => $item[0], 'title_en' => $item[2], 'url' => $url,
					'target' => '_self', 'sort_order' => $index + 1, 'status' => 1,
					'created_at' => $now, 'updated_at' => $now
				));
			}
		}
	}

	public function down()
	{
		// Keep CMS pages and menus because editors may have updated them after seeding.
	}
}
