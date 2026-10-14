<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Recruitment_news_archive extends CI_Migration
{
	public function up()
	{
		$now = date('Y-m-d H:i:s');
		$this->db->trans_start();

		if ($this->db->where(array('type' => 'news', 'slug' => 'tuyen-dung'))->count_all_results('categories') === 0)
		{
			$this->db->insert('categories', array(
				'type' => 'news',
				'name' => 'Tuyển dụng',
				'slug' => 'tuyen-dung',
				'description' => 'Thông báo tuyển dụng và cơ hội nghề nghiệp',
				'sort_order' => 0,
				'status' => 1,
				'created_at' => $now,
				'updated_at' => $now
			));
		}

		$this->db->where('location', 'main')
			->where('url', '/trang/tuyen-dung')
			->where('parent_id IS NULL', NULL, FALSE)
			->update('menus', array('url' => '/tuyen-dung', 'updated_at' => $now));
		$this->db->where('location', 'main')
			->where('url', '/trang/co-hoi-nghe-nghiep')
			->update('menus', array('status' => 0, 'updated_at' => $now));
		$this->db->where_in('slug', array('tuyen-dung', 'co-hoi-nghe-nghiep'))
			->where('content_html', '<p>Nội dung đang được cập nhật.</p>')
			->update('pages', array('status' => 'draft', 'updated_at' => $now));

		$this->db->trans_complete();
	}

	public function down()
	{
		// Preserve posts, categories, and menu edits made through the CMS.
	}
}
