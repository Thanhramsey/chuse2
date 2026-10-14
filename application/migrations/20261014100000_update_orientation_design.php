<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Update_orientation_design extends CI_Migration
{
	public function up()
	{
		$vision = 'Trở thành đơn vị phát triển và kinh doanh hạ tầng công nghiệp uy tín tại Gia Lai, từng bước xây dựng các khu, cụm công nghiệp có chất lượng, hiệu quả và phát triển bền vững; góp phần hình thành môi trường đầu tư thuận lợi, thu hút các dự án phù hợp và thúc đẩy phát triển công nghiệp của địa phương.';
		$missions = array(
			'Kiến tạo hạ tầng:' => 'Phát triển các khu, cụm công nghiệp hiện đại, đáp ứng tối đa nhu cầu của nhà đầu tư.',
			'Đồng hành đối tác:' => 'Cung cấp giải pháp toàn diện và dịch vụ chuyên nghiệp, đồng hành cùng doanh nghiệp từ ý tưởng đến thành công.',
			'Phát triển bền vững:' => 'Tận dụng tối đa lợi thế nguyên liệu, nông nghiệp địa phương; phát triển công nghiệp xanh gắn liền với bảo vệ môi trường và lợi ích cộng đồng.'
		);
		$content = '<div class="home-orientation"><div class="home-vision"><h3>TẦM NHÌN</h3><p>' . html_escape($vision) . '</p></div><div class="home-mission"><h3>SỨ MỆNH</h3><div class="home-mission-points">';
		foreach ($missions as $heading => $description)
		{
			$content .= '<p><strong>' . html_escape($heading) . '</strong> ' . html_escape($description) . '</p>';
		}
		$content .= '</div></div></div>';

		$this->db->where('section_key', 'orientation')->update('home_sections', array(
			'title' => 'Tầm nhìn & Sứ mệnh',
			'title_en' => 'Vision & Mission',
			'subtitle' => '',
			'section_type' => 'html',
			'content_html' => $content,
			'link_label' => '',
			'link_url' => '',
			'updated_at' => date('Y-m-d H:i:s')
		));
	}

	public function down()
	{
		// Keep content that may have been edited in the CMS.
	}
}
