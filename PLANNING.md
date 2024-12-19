# Ý tưởng
- Đặt vấn đề:
Trong một chiến dịch tuyển dụng, sẽ có rất nhiều CV gửi ứng tuyển
Trước khi CV được gửi đến team leader để cân nhắc lên lịch phỏng vấn
HR phải lọc sơ bộ bằng mắt để đánh giá sợ bộ ứng viên ở 3 mức: passed, failed, consider
Số lượng CV rất nhiều có thể lên đến hàng trăm

- Giải quyết:
    + Một hệ thống quản lý CV
    + Có thể lọc CV và đưa ra đánh giá sơ bộ với các lable như: passed, failed, consider cho HR loc

# Mục tiêu của dự án
 - Phát triền một ứng dụng quản lý CV
    + giảm tải công việc chọn ứng viên phù hợp để lên kế hoạch PV
    + thời gian trong khoản 7 ngày

# Phạm vi thực hiện
    - Chức năng Đăng nhập cho HR
    - Chức năng Tạo chiến dich tuyển dụng, JD và upload CV ứng tuyển
    - Chức năng Quản lý CV, parser thông tin từ CV
    - Chức năng lọc thông tin của CV và đưa ra đánh giá sơ bộ dựa trên JD: passed, failed, consider

# Công nghệ
    - Backend:  Nestjs
    - FrontEnd: Vue/NextJS
    - Database: MongoDB

    - Third party: Tx Platform
        Ref: https://developer.textkernel.com/tx-platform/v10/overview/
        Swagger: https://api.au.textkernel.com/tx/v10/swagger/ui/index.html#/Searcher/Searcher_Post

# Danh sách công việc
    - Xây dựng môi trường
        + api
        + web
        + database

    - Tính năng Parser thông tin ứng viên từ CV
        *** Trích xuất thông tin từ CV (tên, kỹ năng, kinh nghiệm, học vấn...) dưới dạng cấu trúc dữ liệu
        - Trích xuât thông tin từ CV
        - Lưu lại thông tin trích xuất

    - Tính năng Matching CV
        *** Sử dụng AI để so sánh hồ sơ ứng viên với yêu cầu công việc và trả về kết quả phù hợp nhất
        - Đánh giá độ phù hợp của CV với JD của chiến dịch tuyển dụng
        - Lưu lại thông tin đánh giá

    - Tính năng Tạo chiến dịch tuyển dụng, JD và upload CV
        - Tạo được lable để gắn nhãn các CV chung chiến dịch tuyển dụng
        - Tạo được JD (Job Description) là làm yêu cầu đâu vào để so sánh ứng viên
        - Upload đc nhiều CV

    - Tính năng đăng nhập
        - Tạo users (trước mắt tạo bằng command)
        - Login/Logout

# Planing
| **Nhiệm vụ**                   | **18/12**  | **19/12**  | **20/12**  | **21/12**  | **22/12**  | **23/12**  | **24/12**  | **25/12**  | **26/12**  | **27/12**  | **28/12**  | **29/12**  | **30/12**  | **31/12**  |
|--------------------------------|------------|------------|------------|------------|------------|------------|------------|------------|------------|------------|------------|------------|------------|------------|
| Lên kế hoạch and đánh giá      | ██████████ |            |            |            |            |            |            |            |            |            |            |            |            |            |
| Cài đặt môi trường             |            | ██████████ |            |            |            |            |            |            |            |            |            |            |            |            |
| Tích hợp Parsing API           |            |            | ██████████ | ██████████ | ██████████ |            |            |            |            |            |            |            |            |            |
| Tích hợp Matching API          |            |            | ██████████ | ██████████ | ██████████ |            |            |            |            |            |            |            |            |            |
| Xây dựng Tính quản lý CV       |            |            |            |            |            |            | ██████████ | ██████████ | ██████████ |            |            |            |            |            |
| Xây dựng quản lý user          |            |            |            |            |            |            | ██████████ | ██████████ |            |            |            |            |            |            |
| Kiểm thử và sửa lỗi            |            |            |            |            |            |            |            |            | ██████████ | ██████████ | ██████████ |            |            |            |
| Triển khai và đánh giá         |            |            |            |            |            |            |            |            |            |            |            | ██████████ |            |            |
| Tối ưu                         |            |            |            |            |            |            |            |            |            |            |            | ██████████ | ██████████ | ██████████ |
| Prepare for Presentation       |            |            |            |            |            |            |            |            |            |            |            |            |            | ██████████ |