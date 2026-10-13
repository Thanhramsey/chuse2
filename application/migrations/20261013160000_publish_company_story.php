<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Publish_company_story extends CI_Migration
{
	public function up()
	{
		$this->db->where('section_key', 'company_story')->update('home_sections', array(
			'position' => 'full',
			'section_type' => 'html',
			'image_path' => 'assets/images/website-reference-kcn-story.jpg',
			'content_html' => '<p>Được điều hành bởi một đội ngũ có trình độ và kinh nghiệm dày dặn, KCN Việt Nam mang đến cho hệ sinh thái công nghiệp một nền tảng hướng tới giải pháp, đặt con người làm trọng tâm. Với sự năng động và nỗ lực tạo giá trị gia tăng, chúng tôi là đối tác chiến lược và nhà cung ứng giải pháp có mối quan hệ chặt chẽ với các bên liên quan tại địa phương.</p><p>Là nhà đầu tư bất động sản công nghiệp đầu ngành tại Việt Nam, chúng tôi tạo điều kiện cho sự phát triển và thành công của doanh nghiệp, từ giai đoạn đầu tiên khi xây dựng xưởng cho đến giai đoạn hoàn thành khi đi vào hoạt động.</p>',
			'sort_order' => 3,
			'status' => 1,
			'updated_at' => date('Y-m-d H:i:s')
		));
	}

	public function down()
	{
		// Retain the customer editable company story on rollback.
	}
}
