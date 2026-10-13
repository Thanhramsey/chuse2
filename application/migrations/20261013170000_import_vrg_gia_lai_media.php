<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Migration_Import_vrg_gia_lai_media extends CI_Migration
{
	public function up()
	{
		$now = date('Y-m-d H:i:s');
		$news = array(
			array(
				'slug' => 'lanh-dao-tinh-gia-lai-kiem-tra-tien-do-kcn-nam-pleiku',
				'title' => 'Chủ tịch UBND tỉnh Gia Lai Phạm Anh Tuấn thị sát Khu công nghiệp Nam Pleiku',
				'cover_path' => 'assets/uploads/d0409e99e9250e6653354a0edaa8f6b5.jpg',
				'excerpt' => 'Lãnh đạo tỉnh Gia Lai khảo sát tiến độ hạ tầng, mặt bằng và tình hình thu hút nhà đầu tư tại KCN Nam Pleiku.',
				'published_at' => '2026-09-14 08:00:00',
				'content_html' => '<p>Trong chuyến công tác tại khu vực phía Tây Gia Lai, Chủ tịch UBND tỉnh Phạm Anh Tuấn cùng đại diện các cơ quan và doanh nghiệp đã khảo sát tình hình xây dựng tại KCN Nam Pleiku.</p><p>Đại diện chủ đầu tư báo cáo tiến độ hạ tầng và công tác chuẩn bị mặt bằng. Theo bài viết nguồn, 14 nhà đầu tư đã đăng ký với tổng diện tích khoảng 50 ha; tỉnh đề nghị tiếp tục đẩy nhanh hạ tầng và thu hút các doanh nghiệp có năng lực.</p><p>KCN Nam Pleiku có quy mô khoảng 205 ha, do Công ty TNHH MTV Cao su Chư Sê làm chủ đầu tư.</p><p><strong>Nguồn tham khảo:</strong> <a href="https://kcnvrggialai.com/chu-tich-ubnd-tinh-gia-lai-pham-anh-tuan-thi-sat-khu-cong-nghiep-nam-pleiku-135-25.html" target="_blank" rel="noopener noreferrer">Chi nhánh KCN VRG Gia Lai</a>.</p>',
				'images' => array(
					array('fbe996a3c95cd76d2958b4d298e5fd11.jpg', 'Giới thiệu dự án với lãnh đạo tỉnh'),
					array('c62bbd5be75af86e26fe8c320f551623.jpg', 'Lãnh đạo tỉnh làm việc tại dự án'),
					array('29ab87a56244f9fa425a2cad826a41ce.jpg', 'Trao đổi về tiến độ và thu hút đầu tư'),
				)
			),
			array(
				'slug' => 'nha-dau-tu-dau-tien-xay-dung-nha-xuong-kcn-nam-pleiku',
				'title' => 'Khu công nghiệp Nam Pleiku có nhà đầu tư đầu tiên xây dựng nhà xưởng',
				'cover_path' => 'assets/uploads/8d15965cf82b65476be547bfef93d83b.jpg',
				'excerpt' => 'Trung tâm chế biến nông sản xuất khẩu Tây Nguyên triển khai nhà xưởng tại KCN Nam Pleiku, mở đầu hoạt động đầu tư thứ cấp tại dự án.',
				'published_at' => '2026-09-14 07:00:00',
				'content_html' => '<p>Trung tâm chế biến nông sản xuất khẩu Tây Nguyên (Công ty Cổ phần Tiến Thịnh Gia Lai) là nhà đầu tư đầu tiên triển khai xây dựng trụ sở và nhà xưởng tại KCN Nam Pleiku.</p><p>Bài viết nguồn ghi nhận dự án có quy mô đầu tư trên 500 tỷ đồng, tập trung chế biến trái cây tươi, trái cây cô đặc và sản phẩm cấp đông. Công tác san lấp, bàn giao mặt bằng và hoàn thiện hạ tầng khu công nghiệp được triển khai song song.</p><p>Thông tin về tiến độ và kế hoạch vận hành dưới đây phản ánh thời điểm bài viết được đăng; vui lòng xem nguồn để đối chiếu cập nhật mới nhất.</p><p><strong>Nguồn tham khảo:</strong> <a href="https://kcnvrggialai.com/khu-cong-nghiep-nam-pleiku-co-nha-dau-tu-dau-tien-xay-dung-nha-xuong-136-25.html" target="_blank" rel="noopener noreferrer">Chi nhánh KCN VRG Gia Lai</a>.</p>',
				'published_at' => '2026-09-14 06:00:00',
				'images' => array(
					array('5c75ef4b44c83064c3d4fa5b9e526f00.jpg', 'Hạ tầng KCN Nam Pleiku đang hoàn thiện'),
					array('ff4fc4b8001fff6d89d45acea4491f58.jpg', 'Công tác san lấp mặt bằng KCN'),
					array('4b539c7a41f305c97c27e6487107d8ec.jpg', 'Trụ sở doanh nghiệp trên trục chính KCN'),
					array('4eb1c5389aec6684082839e0bbfcc229.jpg', 'Tuyến đường trong KCN Nam Pleiku'),
					array('b0e9a4ce723ae0b071025473804be59f.jpg', 'Thi công giao thông nội khu'),
					array('5e1ae7ead8b59995d37fbb895773f10f.jpg', 'Khu vực thi công tại dự án'),
					array('7f934f7a2e0505e7d8cdddf5ccaca15c.jpg', 'Lãnh đạo tỉnh thăm dự án'),
				)
			),
			array(
				'slug' => 'thu-ngo-moi-goi-dau-tu-kcn-nam-pleiku-va-ccn-dak-doa',
				'title' => 'Thư ngỏ mời hợp tác đầu tư tại KCN Nam Pleiku và các cụm công nghiệp Đak Đoa',
				'cover_path' => 'assets/uploads/3dc17f0993e30dc9ea6bec8c9dc2f5fc.png',
				'excerpt' => 'Chi nhánh KCN VRG Gia Lai giới thiệu cơ hội hợp tác tại KCN Nam Pleiku và ba cụm công nghiệp Đak Đoa.',
				'published_at' => '2026-09-14 05:00:00',
				'content_html' => '<p>Chi nhánh KCN VRG Gia Lai trân trọng mời các nhà đầu tư tìm hiểu cơ hội hợp tác tại KCN Nam Pleiku và các cụm công nghiệp Đak Đoa, Đak Đoa 3, Đak Đoa 4.</p><p>Thư ngỏ giới thiệu định hướng phát triển hạ tầng công nghiệp đồng bộ, quy mô KCN Nam Pleiku khoảng 205 ha, kết nối các trục giao thông khu vực và kế hoạch hoàn thiện hạ tầng theo tiến độ dự án.</p><p>Quy mô lô đất, điều kiện đầu tư và thời gian vận hành có thể thay đổi theo tiến độ thực tế. Nhà đầu tư vui lòng liên hệ Chi nhánh để nhận thông tin cập nhật.</p><p><strong>Nguồn tham khảo:</strong> <a href="https://kcnvrggialai.com/thu-ngo-134-25.html" target="_blank" rel="noopener noreferrer">Thư ngỏ của Chi nhánh KCN VRG Gia Lai</a>.</p>',
				'images' => array()
			),
			array(
				'slug' => 'gia-lai-diem-den-dau-tu-giau-tiem-nang',
				'title' => 'Gia Lai – điểm đến đầu tư giàu tiềm năng',
				'cover_path' => 'assets/uploads/kcn-gia-lai-ban-do.png',
				'excerpt' => 'Bài giới thiệu điểm qua lợi thế về vị trí, quy mô, vùng nguyên liệu và cơ hội phát triển công nghiệp tại Gia Lai.',
				'published_at' => '2026-09-11 08:00:00',
				'content_html' => '<p>Gia Lai có không gian phát triển đa dạng, nguồn nguyên liệu nông nghiệp phong phú và vị trí kết nối Tây Nguyên với duyên hải miền Trung. Đây là những điều kiện thuận lợi cho công nghiệp chế biến, logistics và các ngành sản xuất gắn với vùng nguyên liệu.</p><p>KCN Nam Pleiku được giới thiệu như một điểm đến công nghiệp tại phía Tây tỉnh, với định hướng đón các dự án sản xuất và chế biến.</p><p><strong>Nguồn tham khảo:</strong> <a href="https://kcnvrggialai.com/gioi-thieu-ve-tinh-gia-lai-133-25.html" target="_blank" rel="noopener noreferrer">Chi nhánh KCN VRG Gia Lai</a>.</p>',
				'images' => array()
			)
		);

		foreach ($news as $index => $item)
		{
			$this->saveSourcedNews($item, $now, $index);
		}

		$albumId = $this->saveContent('albums', array(
			'title' => 'Hoạt động và dự án KCN Nam Pleiku',
			'slug' => 'hoat-dong-va-du-an-kcn-nam-pleiku',
			'category_id' => NULL,
			'status' => 'published',
			'cover_path' => 'assets/uploads/8d15965cf82b65476be547bfef93d83b.jpg',
			'excerpt' => 'Hình ảnh hoạt động khảo sát, đầu tư và xây dựng hạ tầng tại Khu công nghiệp Nam Pleiku.',
			'content_html' => '<p>Ảnh được tổng hợp từ các bài viết công khai của Chi nhánh KCN VRG Gia Lai và Bản tin Tập đoàn Công nghiệp Cao su Việt Nam.</p><p><strong>Nguồn:</strong> <a href="https://kcnvrggialai.com/tin-tuc-25-21.html" target="_blank" rel="noopener noreferrer">kcnvrggialai.com</a> · <a href="https://news.vrg.vn/" target="_blank" rel="noopener noreferrer">news.vrg.vn</a>.</p>',
			'published_at' => $now
		), $now);

		$albumImages = array(
			array('d0409e99e9250e6653354a0edaa8f6b5.jpg', 'Lãnh đạo tỉnh Gia Lai thăm KCN Nam Pleiku'),
			array('fbe996a3c95cd76d2958b4d298e5fd11.jpg', 'Giới thiệu dự án với lãnh đạo tỉnh'),
			array('c62bbd5be75af86e26fe8c320f551623.jpg', 'Lãnh đạo tỉnh làm việc tại dự án'),
			array('29ab87a56244f9fa425a2cad826a41ce.jpg', 'Trao đổi về tiến độ và thu hút đầu tư'),
			array('8d15965cf82b65476be547bfef93d83b.jpg', 'Nhà xưởng nhà đầu tư đầu tiên tại KCN'),
			array('5c75ef4b44c83064c3d4fa5b9e526f00.jpg', 'Hạ tầng KCN Nam Pleiku đang hoàn thiện'),
			array('ff4fc4b8001fff6d89d45acea4491f58.jpg', 'Công tác san lấp mặt bằng KCN'),
			array('4b539c7a41f305c97c27e6487107d8ec.jpg', 'Trụ sở doanh nghiệp trên trục chính KCN'),
			array('4eb1c5389aec6684082839e0bbfcc229.jpg', 'Tuyến đường trong KCN Nam Pleiku'),
			array('b0e9a4ce723ae0b071025473804be59f.jpg', 'Thi công giao thông nội khu'),
			array('5e1ae7ead8b59995d37fbb895773f10f.jpg', 'Khu vực thi công tại dự án'),
			array('7f934f7a2e0505e7d8cdddf5ccaca15c.jpg', 'Lãnh đạo tỉnh thăm dự án')
		);
		$this->saveImages('albums', $albumId, $albumImages, $now);

		$videoId = $this->saveContent('videos', array(
			'title' => 'Khởi công dự án xây dựng Khu công nghiệp Nam Pleiku',
			'slug' => 'khoi-cong-du-an-khu-cong-nghiep-nam-pleiku',
			'category_id' => NULL,
			'status' => 'published',
			'cover_path' => 'assets/uploads/494c08c5b84673c6700426ee3c2f3eb0.jpg',
			'excerpt' => 'Video của Báo Nhân Dân được nhúng trên trang giới thiệu của Chi nhánh KCN VRG Gia Lai.',
			'content_html' => '<p>Video do Báo Nhân Dân đăng tải và được nhúng tại trang giới thiệu công khai của Chi nhánh KCN VRG Gia Lai.</p><p><strong>Nguồn tham khảo:</strong> <a href="https://kcnvrggialai.com/gioi-thieu-2-31.html" target="_blank" rel="noopener noreferrer">Trang giới thiệu Chi nhánh KCN VRG Gia Lai</a> · <a href="https://www.youtube.com/watch?v=POMYCE5f7-w" target="_blank" rel="noopener noreferrer">Báo Nhân Dân trên YouTube</a>.</p>',
			'extra_url' => 'https://www.youtube.com/watch?v=POMYCE5f7-w',
			'published_at' => $now
		), $now);
	}

	public function down()
	{
		// Preserve the imported material so a rollback cannot remove content later edited in the CMS.
	}

	private function saveSourcedNews($item, $now, $order)
	{
		$slug = $item['slug'];
		$row = $this->db->select('id')->get_where('news', array('slug' => $slug))->row_array();
		if (empty($row))
		{
			return;
		}
		$id = (int) $row['id'];
		$this->db->where('id', $id)->update('news', array(
			'title' => $item['title'],
			'status' => 'published',
			'cover_path' => $item['cover_path'],
			'excerpt' => $item['excerpt'],
			'content_html' => $item['content_html'],
			'published_at' => $item['published_at'],
			'updated_at' => date('Y-m-d H:i:s', strtotime($now) + 3 - $order)
		));
		$this->saveImages('news', $id, $item['images'], $now);
	}

	private function saveContent($table, $data, $now)
	{
		$row = $this->db->select('id')->get_where($table, array('slug' => $data['slug']))->row_array();
		$data['updated_at'] = $now;
		if (! empty($row))
		{
			$id = (int) $row['id'];
			$this->db->where('id', $id)->update($table, $data);
			return $id;
		}
		$data['created_at'] = $now;
		$this->db->insert($table, $data);
		return (int) $this->db->insert_id();
	}

	private function saveImages($resource, $itemId, $images, $now)
	{
		if ($itemId < 1 || empty($images))
		{
			return;
		}
		foreach ($images as $index => $image)
		{
			$path = 'assets/uploads/' . $image[0];
			if (! is_file(FCPATH . $path) || $this->db->where(array('resource' => $resource, 'item_id' => $itemId, 'file_path' => $path))->count_all_results('attachments'))
			{
				continue;
			}
			$this->db->insert('attachments', array(
				'resource' => $resource,
				'item_id' => $itemId,
				'title' => $image[1],
				'file_path' => $path,
				'file_ext' => 'jpg',
				'file_size' => (int) filesize(FCPATH . $path),
				'sort_order' => $index,
				'created_at' => $now
			));
		}
	}
}
