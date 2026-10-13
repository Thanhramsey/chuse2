# Website.pdf: đối chiếu giao diện và dữ liệu backend

> Báo cáo rà backend cập nhật ngày 13/10/2026, có đối chiếu database local: [Backend-readiness-audit.md](Backend-readiness-audit.md). Nội dung dưới đây là ghi chú trong giai đoạn căn giao diện.

## Bố cục đã áp dụng

Trang được căn giữa trong khung rộng tối đa 1440 px trên nền xám nhạt. Header xanh cao 180 px và menu trắng nằm trong cùng khung. Nội dung đầu trang dàn hai cột: sidebar trái và cột chính có hero, giới thiệu chi nhánh và ba thẻ dự án. Các section tầm nhìn/sứ mệnh, phần đồng hành, tin tức và footer chạy toàn chiều ngang bên dưới.

## Nội dung đang lấy từ backend

- Tên công ty lấy từ setting hiện có. Tên chi nhánh và slogan trên header hiện theo mẫu PDF vì backend chưa có giá trị tương ứng.
- Sidebar trang chủ có menu quản trị riêng với 7 trang tĩnh Gia Lai/KCN; nhãn, URL và thứ tự sửa tại Quản trị → Menu website → Cột trái trang chủ; nội dung sửa tại Quản trị → Nội dung → Trang tĩnh. Các trang mới được tạo với nội dung chờ cập nhật.
- Hero ưu tiên slider KCN từ CMS. Hiện chưa có slider KCN nên dùng ảnh tạm trích từ Website.pdf.
- Nội dung giới thiệu lấy từ section `intro`; ảnh chi nhánh tạm lấy từ PDF. Nội dung hiện tại vẫn là giới thiệu chung Cao su Chư Sê.
- Thẻ dự án lấy dự án KCN Nam Pleiku từ `projects`; hai thẻ còn lại tạm dùng các bài tin KCN hiện có.
- Ảnh trong các thẻ dự án, tin tức và bài nổi bật sidebar hiện tạm dùng ảnh mẫu trích từ PDF để giống bố cục mẫu; cần thay bằng ảnh KCN đã duyệt.
- Khối tầm nhìn/sứ mệnh dùng nội dung `orientation` hiện có, nhưng nội dung vẫn nói về định hướng cao su, chưa phải nội dung chi nhánh KCN.
- Phần “Cách chúng tôi đồng hành cùng bạn” chưa có trong backend; giao diện hiện dùng chữ và ảnh theo mẫu PDF làm nội dung tạm.
- Ba tin dưới trang lấy từ `news`; bài nổi bật sidebar lấy tin KCN hiện có.
- Footer lấy thông tin liên hệ và đăng ký nhận tin từ settings. Vì `map_embed_url` đang trống, khu vực bản đồ tạm dùng ảnh mẫu trích từ PDF.

## Cần bổ sung trong backend để khớp hoàn toàn

1. Cấu hình chi nhánh, logo được duyệt, tên hiển thị và slogan song ngữ.
2. Các trang sidebar hiện có nhãn và trang đích theo mẫu; cần thay phần nội dung chờ cập nhật bằng nội dung đã duyệt trong CMS. Rà soát riêng menu chính theo thiết kế.
3. Slider KCN đã duyệt.
4. Tiêu đề, nội dung và ảnh chính thức cho phần giới thiệu chi nhánh.
5. Hai bản ghi dự án KCN còn thiếu (hiện chỉ có một dự án KCN), gồm ảnh, tiêu đề, mô tả và URL chi tiết.
6. Nội dung tầm nhìn và sứ mệnh của chi nhánh, có cấu trúc một khối tầm nhìn và các ý sứ mệnh.
7. Section “Cách chúng tôi đồng hành cùng bạn”, kèm tiêu đề, nội dung và ảnh đã duyệt.
8. Album ảnh và video KCN: section `photo_bank` và `videos` hiện bị tắt; bảng video trong SQL export chưa có bản ghi.
9. Địa chỉ, điện thoại, email và Google Maps của chi nhánh; settings hiện còn dùng liên hệ trụ sở.
10. Nếu cần, các trang thủ tục và tuyển dụng cùng menu trỏ đến những trang đó.

Các ảnh `website-reference-kcn-hero.jpg`, `website-reference-branch-office.jpg` và `website-reference-map.jpg` được trích từ Website.pdf để căn giao diện; cần thay bằng media chính thức khi backend được cập nhật.

### Bổ sung riêng cho khối Tầm nhìn & Sứ mệnh

- Giao diện đã gom dữ liệu orientation hiện có thành một ô Tầm nhìn và một ô Sứ mệnh như mẫu.
- Backend hiện có đoạn Tầm nhìn về kỹ thuật và vườn cây; mẫu yêu cầu nội dung “Trở thành đơn vị phát triển và kinh doanh hạ tầng công nghiệp uy tín tại Gia Lai…” nên cần thay đoạn đã duyệt trong CMS.
- Backend hiện có hai ý Sứ mệnh (“Nâng cao giá trị sản phẩm”, “Đồng hành cùng cộng đồng”). Mẫu yêu cầu ba ý: “Kiến tạo hạ tầng”, “Đồng hành đối tác”, “Phát triển bền vững”, kèm mô tả riêng; cần bổ sung đủ nội dung đã duyệt trong CMS.
