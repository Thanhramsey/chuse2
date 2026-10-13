# Rà soát khả năng backend phục vụ giao diện Website.pdf

Ngày rà: 13/10/2026. Phạm vi: mã nguồn public/admin, cấu trúc dữ liệu và dữ liệu thực tế trong database local đang cấu hình cho ứng dụng. Chỉ đọc dữ liệu; không gửi form, không sửa database và không thay đổi chức năng khi rà soát.

Backend đã có nền tảng cần thiết cho website giới thiệu chi nhánh. Tuy nhiên, giao diện hiện tại chưa được quản trị hoàn toàn từ CMS vì nhiều nội dung và ảnh đang bị thay thế trong controller/view để căn theo mẫu. Cần hoàn thiện liên kết dữ liệu trước khi bàn giao cho người nhập nội dung.

## 1. Chức năng đã có

| Phần trên web | Backend đang hỗ trợ | Đánh giá |
| --- | --- | --- |
| Menu chính, menu con, menu cột trái, menu footer | Nhãn Việt/Anh, URL, trạng thái, thứ tự, cấu trúc menu tối đa 3 cấp | Có đủ chức năng cho thiết kế |
| 7 mục thông tin đầu tư ở cột trái | Trang tĩnh riêng, nội dung HTML, ảnh đại diện, tệp đính kèm | Có thể dùng CMS hiện tại để nhập, không cần biến thành module tin mới |
| Tin tức, sản phẩm, dự án, lĩnh vực, thành tích | CRUD, slug, nội dung, ảnh, trạng thái xuất bản; danh mục ở các loại phù hợp | Có nền tảng; dữ liệu trang chủ còn bị ghi đè |
| Album và video | Album có ảnh thư viện; video có URL YouTube và ảnh đại diện | Có module; thiếu nội dung thật |
| Các khối trang chủ/sidebar | HTML, nguồn nội dung, lọc danh mục, số lượng, ảnh, liên kết, thứ tự, bật/tắt | Có CMS chung; một số lựa chọn bị public bỏ qua |
| Logo, liên hệ, Google Maps, SEO, nhãn đơn vị, slogan | Cấu hình website | Có trường; banner/nhãn trang chủ chưa dùng đúng toàn bộ cấu hình |
| Liên hệ | Kiểm tra đầu vào, lưu yêu cầu, quản trị trạng thái và ghi chú | Đã có luồng lưu và quản lý; chưa có thông báo email |
| Đăng ký nhận tin | Lưu email duy nhất, trạng thái subscribed/unsubscribed trong admin | Đã có thu thập email; chưa có gửi bản tin |
| Bình luận | Gửi bình luận, trạng thái chờ duyệt, quản trị duyệt/ẩn | Có |
| Quyền quản trị và media | Quyền theo nhóm chức năng, upload ảnh/tệp, làm sạch HTML | Có nền tảng |

Nguồn: `application/models/Content_model.php`, `application/controllers/admin/Home.php`, `Settings.php`, `Records.php`, `Sliders.php`, `Menus.php`, `application/core/MY_Controller.php`, các view public và admin tương ứng.

## 2. Các việc cần sửa trong code trước khi bàn giao quản trị

| Ưu tiên | Hiện trạng và ảnh hưởng | Việc cần thực hiện |
| --- | --- | --- |
| Cao | Ảnh của thẻ dự án, 3 tin trang chủ và bài nổi bật bị thay bằng `website-reference-kcn-card.jpg`; thay ảnh trong CMS chưa đổi được các vị trí này | Dùng `cover_path` của bản ghi; ảnh mẫu chỉ là phương án dự phòng nếu chưa có ảnh. Nguồn: `Welcome.php:80`, `:152`, `:172` |
| Cao | Tin trang chủ và bài nổi bật chọn theo slug cố định; cấu hình nguồn/danh mục/số lượng của khối `news` không được tôn trọng đầy đủ | Cho chọn tin nổi bật hoặc nguồn danh mục trong CMS, giới hạn hiển thị theo bố cục; bỏ danh sách slug cố định. Nguồn: `Welcome.php:57`, `:161` |
| Cao | Khối Dự án loại bỏ dự án không có từ khóa KCN/Nam Pleiku, rồi chèn 2 bài tin làm thẻ dự án; có thể không đúng ý người quản trị | Cho chọn các bản ghi dự án cần hiển thị hoặc danh mục dự án. Hiển thị đúng nguồn; chỉ dùng nội dung liên quan khi chủ động cấu hình. Nguồn: `Welcome.php:124` |
| Cao | Slider chỉ lấy tối đa 10 slider đang bật rồi lọc từ khóa trong tiêu đề/mô tả/đường dẫn. Slider mới có thể không hiện nếu không có từ khóa; ẩn hết vẫn hiện ảnh PDF dự phòng | Có lựa chọn nhóm/vị trí slider rõ ràng, dùng trạng thái và thứ tự; cho phép tắt banner ảnh. Nguồn: `Welcome.php:182` |
| Cao | Banner trang chủ dùng tên chi nhánh và slogan cố định. Chữ VRG được chèn vào tên hiển thị bằng PHP. Footer trang chủ cũng dùng tên chi nhánh cố định | Dùng các trường cấu hình cho tên hiển thị banner, tên chi nhánh và slogan. Nếu liên hệ chi nhánh khác trụ sở, thêm nhóm thông tin liên hệ chi nhánh riêng. Nguồn: `layout/header.php:13`, `:18`, `layout/footer.php:25` |
| Cao | Khối “Cách chúng tôi đồng hành cùng bạn” chưa có bản ghi CMS, hiện được controller tự tạo. Nếu khối bị ẩn/xóa, nội dung dự phòng lại xuất hiện. Muốn thêm ảnh hiện phải chèn HTML đúng class | Tạo khối `company_story` trong CMS, nối `image_path` vào bố cục ảnh/nội dung, tôn trọng trạng thái bật/tắt. Nguồn: `Welcome.php:89`, `public/home.php:114` |
| Cao | Tầm nhìn/sứ mệnh đang chuyển từ HTML bằng regex phụ thuộc mẫu ít nhất 3 phần `<div><strong>...<p>...`; nhập khác cấu trúc có thể làm mất bố cục 2 ô | Thêm trường Tầm nhìn và danh sách các ý Sứ mệnh, hoặc biểu mẫu nhập có cấu trúc; public sinh markup ổn định. Nguồn: `Welcome.php:393` |
| Vừa | Tiêu đề intro, orientation, news, project và bài nổi bật bị đổi trong controller; phần thiết lập bật/tắt một số khối không phản ánh đúng màn hình | Giữ bố cục mẫu bằng CSS/template, cho CMS quản lý nội dung; đồng bộ các khối thực sự sử dụng trong admin. Nguồn: `Welcome.php:14` |
| Vừa | Album/video bị ẩn trong CMS nhưng homepage vẫn thêm khối ảnh mẫu. Người quản trị không tắt được hoàn toàn các khối này | Tôn trọng trạng thái CMS; tách trạng thái “chưa có nội dung” khỏi “đã tắt”. Nguồn: `public/home.php:10` |
| Vừa | Ô tìm kiếm chỉ tìm trong `news`, theo tiêu đề/slug; chưa tìm trang tĩnh, dự án, sản phẩm hay nội dung bài | Mở rộng nếu đây là tìm kiếm toàn website và trả kết quả với URL đúng từng loại. Nguồn: `Welcome.php:244`, `Content_model.php:113` |

Trường `header_banner` hiện được đọc nhưng phần `.masthead-media` bị CSS ẩn theo thiết kế mới. Cần làm rõ vai trò của trường này trong admin; không nên để người quản trị tưởng đổi ảnh đó sẽ đổi banner đang thấy.

## 3. Những phần chỉ thiếu nội dung hoặc cấu hình

Kết quả đọc database local:

| Nội dung | Dữ liệu hiện có | Cần cập nhật |
| --- | --- | --- |
| Tin tức | 15 tin published | Duyệt nội dung, ảnh và các bài chọn cho trang chủ |
| Trang tĩnh | 17 trang published | 7 trang thông tin đầu tư còn nội dung chờ; 4 trang thủ tục/tuyển dụng cũng chỉ có nội dung chờ |
| Giới thiệu chung | Đoạn nội dung mẫu để kiểm tra bố cục | Thay bằng giới thiệu chi nhánh đã duyệt |
| Sơ đồ tổ chức | Chỉ có dòng “Sơ đồ tổ chức” | Nhập nội dung hoặc ảnh sơ đồ thật |
| Giới thiệu ở homepage | Nội dung giới thiệu doanh nghiệp cao su; ảnh trong khối intro chưa được cấu hình | Nhập mô tả chi nhánh KCN và upload ảnh chính thức |
| Tầm nhìn/sứ mệnh | Nội dung vùng nguyên liệu/cao su; 1 đoạn và 2 ý khác mẫu | Nhập nội dung KCN với 1 Tầm nhìn và 3 ý Sứ mệnh theo thiết kế |
| Dự án | 3 bản ghi, nhưng chỉ 1 là KCN Nam Pleiku; 2 bản ghi còn lại là nông nghiệp công nghệ cao và chuyển đổi số | Nhập các nội dung dự án/hạ tầng phù hợp từng thẻ trong mẫu |
| Slider | 3 slider đang bật, đều về cao su/vườn cây; không có slider KCN phù hợp bộ lọc hiện tại | Upload bộ slider KCN chính thức |
| Album | 1 album tên `dummy`; chưa có ảnh gallery đính kèm | Nhập album và bộ ảnh KCN thật, bật khối `photo_bank` |
| Video | 0 bản ghi; khối `videos` đang tắt | Nhập video/ảnh đại diện và bật khối nếu sử dụng |
| Tài liệu giới thiệu | CMS hỗ trợ tệp ở trang tĩnh; hiện chưa có tệp đính kèm cho các trang | Upload PDF/brochure được duyệt |
| Logo | `logo_path` trống, đang dùng logo dự phòng trong assets | Cấu hình logo chính thức |
| Google Maps | `map_embed_url` trống; footer đang dùng ảnh bản đồ mẫu | Nhập URL/iframe Google Maps thật |
| Liên hệ | Địa chỉ hiện là 420 Hùng Vương, xã Chư Sê, Gia Lai | Xác nhận dùng liên hệ trụ sở hay chi nhánh rồi nhập địa chỉ/điện thoại/email phù hợp |

7 trang menu đầu tư có nội dung lưu trong database dạng `<p>N?i dung ?ang ???c c?p nh?t.</p>`. Đây là lỗi dấu trong dữ liệu đã lưu, cần sửa nội dung khi cập nhật; không thể khôi phục dấu chỉ bằng CSS.

Các `cover_path` của bản ghi nội dung được kiểm tra trên filesystem local đều có tệp tương ứng. Kiểm tra này không xác nhận nội dung/độ phù hợp của ảnh, ảnh nhúng trong HTML, URL bên ngoài hoặc tất cả tệp đính kèm.

## 4. Chức năng thêm khi có nhu cầu thực tế

- Gửi email thông báo có yêu cầu liên hệ mới: hiện hệ thống chỉ lưu vào CMS.
- Gửi bản tin: cần chức năng gửi hoặc tích hợp dịch vụ email, và đường dẫn hủy đăng ký cho người nhận. Hiện phần “đăng ký nhận tin” mới là danh sách email.
- Hạn chế tần suất gửi liên hệ/bình luận/đăng ký để giảm spam. Hiện đã có kiểm tra đầu vào và CSRF nhưng chưa thấy giới hạn tần suất ở các luồng public.
- Website tiếng Anh đầy đủ: hiện chỉ có nhãn menu/khối và một số setting tiếng Anh. Các bảng nội dung chưa có trường tiêu đề/mô tả/nội dung tiếng Anh; `home_sections` cũng chỉ có `title_en`. Nếu cờ EN dùng website ngoài qua `english_site_url`, không nhất thiết cần mở rộng CMS dịch nội dung local. Ngoài ra tên banner hiện được gán trước khi chọn tên công ty tiếng Anh, cần chỉnh nếu dùng bản EN local.
- Tuyển dụng nhận hồ sơ trực tuyến: thiết kế hiện tại có thể đáp ứng bằng trang tĩnh. Chỉ cần module ứng tuyển/tải CV khi khách yêu cầu luồng này.

## 5. Thứ tự hoàn thiện đề xuất

1. Nối lại dữ liệu CMS cho ảnh, slider, lựa chọn tin/dự án, banner/footer và trạng thái hiển thị; giữ CSS/bố cục đã chốt.
2. Làm biểu mẫu nhập ổn định cho Tầm nhìn/Sứ mệnh và khối Đồng hành; khối Đồng hành có thể dùng lại bảng `home_sections`.
3. Nhập nội dung chi nhánh đã duyệt cho 7 trang đầu tư, giới thiệu, thủ tục, tuyển dụng; thay media và bản đồ tạm.
4. Hoàn thiện tìm kiếm toàn website nếu đúng phạm vi ô tìm kiếm; bổ sung email/tiếng Anh/ứng tuyển theo nhu cầu đã xác định.
5. Kiểm tra một vòng sửa nội dung/ảnh/bật tắt trong admin rồi xác nhận public đổi đúng, cùng các luồng liên hệ/đăng ký/bình luận.

Rà soát này xác nhận bằng đọc code và SELECT database. Chưa thực hiện lưu nội dung qua giao diện admin, gửi thử form, gửi email, hoặc kiểm thử phân quyền đầy đủ. Không đánh giá nội dung mẫu là nội dung đã được khách duyệt.
