<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Procedures_archive extends CI_Migration
{
	public function up()
	{
		$now = date('Y-m-d H:i:s');
		$this->db->trans_start();

		if ($this->db->where(array('type' => 'news', 'slug' => 'thu-tuc'))->count_all_results('categories') === 0)
		{
			$this->db->insert('categories', array(
				'type' => 'news',
				'name' => 'Thủ tục',
				'slug' => 'thu-tuc',
				'description' => 'Hướng dẫn và thông báo về các thủ tục',
				'sort_order' => 0,
				'status' => 1,
				'created_at' => $now,
				'updated_at' => $now
			));
		}

		$this->db->where('location', 'main')
			->where('url', '/trang/thu-tuc')
			->where('parent_id IS NULL', NULL, FALSE)
			->update('menus', array('url' => '/thu-tuc', 'updated_at' => $now));
		$this->db->where('location', 'main')
			->where_in('url', array('/trang/thu-tuc-dau-tu', '/du-an/khu-cong-nghiep-nam-pleiku'))
			->update('menus', array('status' => 0, 'updated_at' => $now));
		$this->db->where_in('slug', array('thu-tuc', 'thu-tuc-dau-tu'))
			->where('content_html', '<p>Nội dung đang được cập nhật.</p>')
			->update('pages', array('status' => 'draft', 'updated_at' => $now));

		$this->db->trans_complete();
	}

	public function down()
	{
		// Preserve posts, categories, and menu edits made through the CMS.
	}
}
