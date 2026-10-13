<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Align_orientation_section extends CI_Migration
{
	public function up()
	{
		$this->db->where('section_key', 'orientation')->update('home_sections', array(
			'title' => 'Tầm nhìn & Sứ mệnh',
			'title_en' => 'Vision & Mission',
			'subtitle' => '',
			'link_label' => '',
			'link_url' => '',
			'updated_at' => date('Y-m-d H:i:s')
		));
	}

	public function down()
	{
		// Keep the approved heading and preserve all content entered through the CMS.
	}
}
