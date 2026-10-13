<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Add_company_story_section extends CI_Migration
{
	public function up()
	{
		if ($this->db->where('section_key', 'company_story')->count_all_results('home_sections') > 0)
		{
			return;
		}

		$now = date('Y-m-d H:i:s');
		$this->db->insert('home_sections', array(
			'section_key' => 'company_story',
			'title' => 'Cách chúng tôi đồng hành cùng bạn',
			'title_en' => 'How we support you',
			'subtitle' => '',
			'position' => 'full',
			'section_type' => 'html',
			'content_html' => '',
			'image_path' => NULL,
			'link_label' => '',
			'link_url' => '',
			'source_resource' => NULL,
			'source_category_id' => NULL,
			'item_limit' => 1,
			'sort_order' => 3,
			'status' => 0,
			'created_at' => $now,
			'updated_at' => $now
		));
	}

	public function down()
	{
		// Keep editorial content so a rollback cannot remove text entered in the CMS.
	}
}
