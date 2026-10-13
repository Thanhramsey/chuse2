<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Restore_reference_home_widgets extends CI_Migration
{
	public function up()
	{
		$now = date('Y-m-d H:i:s');

		// Restore the three left-rail blocks shown in Website.pdf.
		$this->db->where_in('section_key', array('photo_bank', 'videos'))
			->update('home_sections', array('status' => 1, 'updated_at' => $now));

		$featuredNews = $this->db->get_where('home_sections', array('section_key' => 'featured_news'))->row_array();
		if (empty($featuredNews))
		{
			$this->db->insert('home_sections', array(
				'section_key' => 'featured_news',
				'title' => 'Bài viết nổi bật',
				'title_en' => 'Featured article',
				'subtitle' => '',
				'position' => 'left',
				'section_type' => 'content',
				'content_html' => '',
				'image_path' => NULL,
				'link_label' => '',
				'link_url' => '/tin-tuc',
				'source_resource' => 'news',
				'source_category_id' => NULL,
				'item_limit' => 1,
				'sort_order' => 3,
				'status' => 1,
				'created_at' => $now,
				'updated_at' => $now
			));
		}
		else
		{
			$this->db->where('section_key', 'featured_news')->update('home_sections', array(
				'position' => 'left',
				'section_type' => 'content',
				'source_resource' => 'news',
				'item_limit' => 1,
				'sort_order' => 3,
				'status' => 1,
				'updated_at' => $now
			));
		}

		$this->db->where('section_key', 'featured_projects')->update('home_sections', array(
			'title' => 'Dự án',
			'title_en' => 'Projects',
			'subtitle' => '',
			'updated_at' => $now
		));
	}

	public function down()
	{
		// Keep the restored blocks and editorial content if this migration is rolled back.
	}
}
