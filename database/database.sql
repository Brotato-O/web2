-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th4 04, 2025 lúc 10:11 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `quanlybanhang`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(11) NOT NULL,
  `image_banner` varchar(500) DEFAULT NULL,
  `link` varchar(500) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `id_binhluan` int(11) NOT NULL,
  `id_khachhang` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `noidung` varchar(1000) DEFAULT NULL,
  `sosao` int(11) DEFAULT NULL COMMENT 'Range 1-5',
  `thoigian` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `binhluan`
--

INSERT INTO `binhluan` (`id_binhluan`, `id_khachhang`, `id_product`, `noidung`, `sosao`, `thoigian`) VALUES
(1, 1, 3, 'Sản phẩm rất tốt, chất lượng tuyệt vời!', 5, '2025-04-05 10:30:00'),
(2, 7, 11, 'Sản phẩm vừa phải, có thể cải thiện thêm.', 3, '2025-04-05 11:00:00'),
(3, 3, 5, 'Màu sắc không giống như trong hình, tôi không hài lòng lắm.', 1, '2025-04-05 12:15:00'),
(4, 11, 14, 'Dễ sử dụng và rất tiện lợi. Rất hài lòng!', 5, '2025-04-05 14:20:00'),
(5, 6, 2, 'Chất liệu không tốt như mong đợi, sẽ không mua lại.', 1, '2025-04-05 15:40:00'),
(6, 5, 7, 'Giao hàng nhanh chóng, sản phẩm đúng như mô tả.', 4, '2025-04-05 13:00:00'),
(7, 13, 1, 'Sản phẩm rất bền và đẹp, tôi rất thích.', 4, '2025-04-05 16:10:00'),
(8, 8, 8, 'Giá quá cao so với chất lượng, không đáng mua.', 2, '2025-04-05 17:30:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `id_chitiethoadon` int(11) NOT NULL,
  `id_donhang` int(11) DEFAULT NULL,
  `id_tonkho` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT 0,
  `quantity` int(11) DEFAULT NULL COMMENT 'Must be > 0',
  `tongtien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`id_chitiethoadon`, `id_donhang`, `id_tonkho`, `price`, `discount`, `quantity`, `tongtien`) VALUES
(1, 1, 7, 700000, 50000, 1, 650000),
(2, 2, 12, 350000, 10000, 1, 340000),
(3, 3, 3, 450000, 30000, 1, 420000),
(4, 4, 16, 600000, 10000, 1, 590000),
(5, 5, 5, 800000, 50000, 2, 750000),
(6, 6, 7, 200000, 0, 3, 200000),
(7, 7, 4, 950000, 10000, 1, 940000),
(8, 8, 13, 1200000, 20000, 1, 1180000),
(9, 9, 9, 750000, 30000, 2, 720000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `id` int(11) NOT NULL,
  `id_phieunhap` int(11) DEFAULT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `soluong` int(11) DEFAULT NULL,
  `gianhap` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `chitietphieunhap`
--

INSERT INTO `chitietphieunhap` (`id`, `id_phieunhap`, `id_product`, `id_size`, `soluong`, `gianhap`) VALUES
(1, 1, 3, 1, 50, 3000000),
(2, 1, 5, 2, 30, 4500000),
(3, 2, 2, 3, 100, 2000000),
(4, 2, 7, 1, 80, 3500000),
(5, 3, 4, 2, 60, 5000000),
(6, 4, 1, 3, 90, 2500000),
(7, 5, 6, 1, 120, 4000000),
(8, 6, 8, 2, 70, 3200000),
(9, 7, 9, 3, 40, 6000000),
(10, 8, 10, 1, 110, 2800000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `name_danhmuc` varchar(255) DEFAULT NULL,
  `id_danhmuc_cha` int(11) DEFAULT NULL,
  `hot` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id_danhmuc`, `name_danhmuc`, `id_danhmuc_cha`, `hot`) VALUES
(1, 'Áo Nam', NULL, 0),
(2, 'Áo Polo', 1, 0),
(3, 'Áo Thun', 1, 0),
(4, 'Quần Nam', NULL, 0),
(5, 'Áo Nữ', NULL, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `donhang`
--

CREATE TABLE `donhang` (
  `id_donhang` int(11) NOT NULL,
  `id_khachhang` int(11) DEFAULT NULL,
  `id_nhanvien` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `giamgia` int(11) DEFAULT 0,
  `tongtien` int(11) DEFAULT NULL,
  `phigiaohang` int(11) DEFAULT 0,
  `note` varchar(1000) DEFAULT NULL,
  `hinhthucthanhtoan` varchar(255) DEFAULT NULL,
  `status` enum('Chờ xác nhận','Đã xác nhận','Đã hủy') DEFAULT 'Chờ xác nhận',
  `giaohang` enum('Chưa giao','Đang giao','Đã giao') DEFAULT 'Chưa giao',
  `tinhtrangthanhtoan` enum('Chưa thanh toán','Đã thanh toán','Không thành công') DEFAULT 'Chưa thanh toán',
  `ngaydathang` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `donhang`
--

INSERT INTO `donhang` (`id_donhang`, `id_khachhang`, `id_nhanvien`, `price`, `giamgia`, `tongtien`, `phigiaohang`, `note`, `hinhthucthanhtoan`, `status`, `giaohang`, `tinhtrangthanhtoan`, `ngaydathang`) VALUES
(1, 1, 6, 700000, 50000, 650000, 30000, 'Mong muốn giao hàng vào cuối tuần', 'Thanh toán khi nhận hàng', 'Chờ xác nhận', 'Chưa giao', 'Chưa thanh toán', '2025-04-04 10:15:00'),
(2, 3, 1, 350000, 10000, 340000, 20000, 'Giao hàng tới địa chỉ văn phòng', 'Chuyển khoản', 'Đã xác nhận', 'Đang giao', 'Chưa thanh toán', '2025-04-03 11:30:00'),
(3, 11, 7, 450000, 30000, 420000, 25000, 'Giao hàng trong ngày', 'Thanh toán khi nhận hàng', 'Chờ xác nhận', 'Chưa giao', 'Chưa thanh toán', '2025-04-02 14:45:00'),
(4, 5, 8, 600000, 10000, 590000, 15000, 'Giao hàng vào buổi sáng', 'Chuyển khoản', 'Đã xác nhận', 'Đang giao', 'Chưa thanh toán', '2025-04-01 16:00:00'),
(5, 6, 1, 800000, 50000, 750000, 40000, 'Giao hàng tại cửa hàng', 'Thanh toán khi nhận hàng', 'Chờ xác nhận', 'Chưa giao', 'Chưa thanh toán', '2025-03-30 09:20:00'),
(6, 7, 7, 200000, 0, 200000, 10000, 'Giao hàng qua bưu điện', 'Chuyển khoản', 'Đã xác nhận', 'Đang giao', 'Chưa thanh toán', '2025-03-29 13:10:00'),
(7, 8, 1, 950000, 10000, 940000, 50000, 'Giao hàng vào cuối tuần', 'Thanh toán khi nhận hàng', 'Chờ xác nhận', 'Chưa giao', 'Chưa thanh toán', '2025-03-28 15:35:00'),
(8, 9, 8, 1200000, 20000, 1180000, 60000, 'Giao hàng hỏa tốc', 'Chuyển khoản', 'Đã xác nhận', 'Đang giao', 'Chưa thanh toán', '2025-03-27 12:25:00'),
(9, 10, 6, 750000, 30000, 720000, 40000, 'Giao hàng miễn phí', 'Thanh toán khi nhận hàng', 'Chờ xác nhận', 'Chưa giao', 'Chưa thanh toán', '2025-03-26 17:40:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khachhang`
--

CREATE TABLE `khachhang` (
  `id_khachhang` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `diachi` varchar(500) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khachhang`
--

INSERT INTO `khachhang` (`id_khachhang`, `username`, `fullname`, `phone`, `email`, `password`, `diachi`, `status`) VALUES
(1, 'trangngoc', 'Nguyễn Trang Ngọc', '0901234567', 'trangngoc@email.com', 'trangngoc123456', '123 Đường ABC, Quận 1, TP.HCM', 1),
(2, 'nguyenlan', 'Trần Nguyễn Lan', '0902345678', 'nguyenlan@email.com', 'nguyenlan123456', '456 Đường XYZ, Quận 3, TP.HCM', 1),
(3, 'tuananh', 'Phan Tuan Anh', '0903456789', 'tuananh@email.com', 'tuananh123456', '789 Đường QWE, Quận 5, TP.HCM', 1),
(4, 'minhquan', 'Vũ Minh Quan', '0904567890', 'minhquan@email.com', 'minhquan123456', '101 Đường RST, Quận 7, TP.HCM', 1),
(5, 'huyhoang', 'Lê Huy Hoàng', '0905678901', 'huyhoang@email.com', 'huyhoang123456', '202 Đường LMN, Quận 10, TP.HCM', 1),
(6, 'trinhthao', 'Đặng Trịnh Thảo', '0906789012', 'trinhthao@email.com', 'trinhthao123456', '303 Đường PQR, Quận 12, TP.HCM', 1),
(7, 'ngocthang', 'Nguyễn Ngọc Thắng', '0907890123', 'ngocthang@email.com', 'ngocthang123456', '404 Đường STU, Quận Bình Thạnh, TP.HCM', 1),
(8, 'phucan', 'Bùi Phúc An', '0908901234', 'phucan@email.com', 'phucan123456', '505 Đường VWX, Quận Gò Vấp, TP.HCM', 1),
(9, 'xuanmai', 'Trương Xuân Mai', '0909012345', 'xuanmai@email.com', 'xuanmai123456', '606 Đường ABCD, Quận Tân Phú, TP.HCM', 1),
(10, 'tuananh1', 'Nguyễn Tuấn Anh', '0901234568', 'tuananh2@email.com', 'tuananh2123456', '707 Đường EFGH, Quận Phú Nhuận, TP.HCM', 1),
(11, 'quanghieu', 'Nguyễn Quang Hiếu', '0902345679', 'quanghieu@email.com', 'quanghieu123456', '808 Đường IJKL, Quận 2, TP.HCM', 1),
(12, 'thanhtrang', 'Lê Thanh Trang', '0903456790', 'thanhtrang@email.com', 'thanhtrang123456', '909 Đường MNO, Quận 9, TP.HCM', 1),
(13, 'minhthuan', 'Đỗ Minh Thuận', '0904567801', 'minhthuan@email.com', 'minhthuan123456', '1010 Đường UVW, Quận 6, TP.HCM', 1),
(64, 'kh01', 'Nguyễn Thị E', '0147852369', 'kh01@gmail.com', '123456789', NULL, 1),
(65, 'kh02', 'Nguyễn F', '4561230789', 'kh02@gma', '123456789', 'NULL', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `id_nhacungcap` int(11) NOT NULL,
  `ten_ncc` varchar(255) DEFAULT NULL,
  `diachi` varchar(500) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `trangthai` tinyint(1) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhacungcap`
--

INSERT INTO `nhacungcap` (`id_nhacungcap`, `ten_ncc`, `diachi`, `phone`, `email`, `website`, `trangthai`) VALUES
(1, 'Công ty TNHH ABC', '123 Đường A, Quận 1, TP.HCM', '0901234567', 'abc@company.com', 'www.abccompany.com', 1),
(2, 'Công ty XYZ', '456 Đường B, Quận 2, TP.HCM', '0902345678', 'xyz@company.com', 'www.xyzcompany.com', 1),
(3, 'Nhà cung cấp MNO', '789 Đường C, Quận 3, TP.HCM', '0903456789', 'mno@company.com', 'www.mnocompany.com', 1),
(4, 'Công ty PQR', '101 Đường D, Quận 4, TP.HCM', '0904567890', 'pqr@company.com', 'www.pqrcompany.com', 1),
(5, 'Công ty STU', '202 Đường E, Quận 5, TP.HCM', '0905678901', 'stu@company.com', 'www.stucompany.com', 1),
(6, 'Nhà cung cấp DEF', '303 Đường F, Quận 6, TP.HCM', '0906789012', 'def@company.com', 'www.defcompany.com', 1),
(7, 'Công ty GHI', '404 Đường G, Quận 7, TP.HCM', '0907890123', 'ghi@company.com', 'www.ghicompany.com', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nhanvien`
--

CREATE TABLE `nhanvien` (
  `id_nhanvien` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `chucvu` varchar(100) DEFAULT NULL,
  `id_phanquyen` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `nhanvien`
--

INSERT INTO `nhanvien` (`id_nhanvien`, `username`, `fullname`, `phone`, `email`, `password`, `chucvu`, `id_phanquyen`) VALUES
(1, 'nguyenlan', 'Trần Nguyễn Lan', '0902345678', 'nguyenlan_nv@email.com', 'nguyenlan123456789', 'Bán hàng', NULL),
(2, 'minhquan', 'Vũ Minh Quan', '0904567890', 'minhquan_nv@email.com', 'minhquan123456789', 'Kiểm kho', NULL),
(3, 'huyhoang', 'Lê Huy Hoàng', '0905678901', 'huyhoang_nv@email.com', 'huyhoang123456789', 'Quản lý', NULL),
(4, 'trinhthao', 'Đặng Trịnh Thảo', '0906789012', 'trinhthao_nv@email.com', 'trinhthao123456789', 'Sale', NULL),
(5, 'tuananh', 'Phan Tuấn Anh', '0903456789', 'tuananh_nv@email.com', 'tuananh123456789', 'Giao hàng', NULL),
(6, 'nguyenbao', 'Nguyễn Bảo', '0905551234', 'nguyenbao@example.com', 'nguyenbao123456789', 'Bán hàng', NULL),
(7, 'trangthao', 'Trần Thảo', '0905555678', 'trangthao@example.com', 'trangthao123456789', 'Bán hàng', NULL),
(8, 'hoanglan', 'Hoàng Lan', '0905559876', 'hoanglan@example.com', 'hoanglan123456789', 'Bán hàng', NULL),
(9, 'quocviet', 'Đỗ Quốc Việt', '0912568757', 'doquocviet123@gmail.com', 'doquocviet123456789', 'kiểm kho\r\n', NULL),
(14, 'nv01', 'Nguyễn Văn A', '0123456789', 'nv01@gmail.com', '123456789', 'Nhân Viên', 3),
(15, 'nv02', 'Nguyễn Văn B', '1234567890', 'nv02@gmail.com', '123456789', 'Nhân Viên', 3),
(16, 'ql01', 'Trần Hải C', '7894561230', 'ql01@gmail.com', '123456789', 'Quản lý', 1),
(17, 'admin01', 'Nguyễn Thị D', '4561237890', 'admin01@gmail.com', '123456789', 'Admin', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `id_phanquyen` int(11) NOT NULL,
  `name_phanquyen` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`id_phanquyen`, `name_phanquyen`) VALUES
(1, 'Quản lý'),
(2, 'Admin'),
(3, 'Nhân viên');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phieunhap`
--

CREATE TABLE `phieunhap` (
  `id_phieunhap` int(11) NOT NULL,
  `id_nhacungcap` int(11) DEFAULT NULL,
  `id_nhanvien` int(11) DEFAULT NULL,
  `ngaynhap` datetime DEFAULT NULL,
  `tongtien` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `phieunhap`
--

INSERT INTO `phieunhap` (`id_phieunhap`, `id_nhacungcap`, `id_nhanvien`, `ngaynhap`, `tongtien`) VALUES
(1, 1, 2, '2025-04-01 08:30:00', 150000000),
(2, 2, 9, '2025-04-02 09:15:00', 220000000),
(3, 7, 9, '2025-04-03 10:45:00', 180000000),
(4, 4, 2, '2025-04-04 14:20:00', 275000000),
(5, 5, 9, '2025-04-05 16:10:00', 300000000),
(6, 6, 2, '2025-04-06 11:35:00', 125000000),
(7, 7, 9, '2025-04-07 13:50:00', 205000000),
(8, 1, 2, '2025-04-08 15:25:00', 195000000),
(9, 4, 2, '2025-04-09 17:00:00', 250000000),
(10, 5, 2, '2025-04-10 18:45:00', 280000000);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `id_danhmuc` int(11) DEFAULT NULL,
  `name_product` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  `discount` int(11) DEFAULT 0,
  `hot` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id_product`, `id_danhmuc`, `name_product`, `price`, `image`, `discount`, `hot`) VALUES
(1, 2, 'Áo Polo In Tràn', 450000, 'aonam_1.png', 0, 0),
(2, 2, 'Áo Polo nam phối màu hiện đại, trẻ trung, năng động.', 290000, 'aonam_2.png', 0, 0),
(3, 2, 'Áo Polo Nam Cafe Nẹp Giấu Cúc - Thoáng mát vải mịn', 290000, 'aonam_5.png', 0, 0),
(4, 3, 'T-shirt Nam Traffic Sport Siêu Nhẹ', 120000, 'aonam_3.png', 0, 0),
(5, 3, 'Áo Thun Thể Thao Nam Siêu Nhẹ Thấm hút tốt, khô nhanh, thông thoáng', 800000, 'aonam_4.png', 0, 0),
(6, 5, 'Áo Khoác Jeans Nữ Crop Cơ Bản', 500000, 'ao-nu-1.jpg', 0, 0),
(7, 5, 'Sơ Mi Dài Tay Nữ Nano Thêu Nẹp Thiết kế tôn dáng, tỉ mỉ trong từng đường may', 150000, 'ao-nu-2.jpg', 0, 0),
(8, 5, 'Áo Len Nữ Mỏng Cổ Cao 5cm - Chất vải mềm mại, an toàn cho da, độ co giãn đàn hồi', 375000, 'ao-nu-3.png', 0, 0),
(9, 5, 'Áo Sơ Mi Tay Dài Nữ Phối Tay Voan - Thanh lịch - Sang trọng - Mềm mại', 400000, 'ao-nu-4.png', 0, 0),
(10, 5, 'Áo Sơ Mi Tay Dài Nữ Phối Tay Voan - Thanh lịch - Sang trọng - Mềm mại', 500000, NULL, 0, 0),
(11, 4, 'QUẦN JEANS NAM REGULAR YODY DENIM - Chất liệu cotton USA cao cấp', 550000, 'quan_1.jpg', 0, 0),
(12, 4, 'Quần Kaki Nam Cạp Di Động - Cao cấp, thành phần cotton cao giúp quần thông thoáng', 250000, 'quan_2.png', 0, 0),
(13, 4, 'Quần Jeans Nam Slim Fit Rayon Rách Gối phong cách trẻ trung, cá tính', 150000, 'quan_3.jpg', 0, 0),
(14, NULL, 'Quần Âu Nam Cạp Di Động Kẻ Sọc - Thiết kế cạp di động co giãn nhẹ, thoải mái vận động', 450000, 'quan_5.png', 0, 0),
(15, 2, 'Áo Polo In Tràn', 450000, 'aonam_1.png', 0, 0),
(16, 2, 'Áo Polo nam phối màu hiện đại, trẻ trung, năng động.', 290000, 'aonam_2.png', 0, 0),
(17, 2, 'Áo Polo Nam Cafe Nẹp Giấu Cúc - Thoáng mát vải mịn', 290000, 'aonam_5.png', 0, 0),
(18, 3, 'T-shirt Nam Traffic Sport Siêu Nhẹ', 120000, 'aonam_3.png', 0, 0),
(19, 3, 'Áo Thun Thể Thao Nam Siêu Nhẹ Thấm hút tốt, khô nhanh, thông thoáng', 800000, 'aonam_4.png', 0, 0),
(20, 5, 'Áo Khoác Jeans Nữ Crop Cơ Bản', 500000, 'ao-nu-1.jpg', 0, 0),
(21, 5, 'Sơ Mi Dài Tay Nữ Nano Thêu Nẹp Thiết kế tôn dáng, tỉ mỉ trong từng đường may', 150000, 'ao-nu-2.jpg', 0, 0),
(22, 5, 'Áo Len Nữ Mỏng Cổ Cao 5cm - Chất vải mềm mại, an toàn cho da, độ co giãn đàn hồi', 375000, 'ao-nu-3.png', 0, 0),
(23, 5, 'Áo Sơ Mi Tay Dài Nữ Phối Tay Voan - Thanh lịch - Sang trọng - Mềm mại', 400000, 'ao-nu-4.png', 0, 0),
(24, 5, 'Áo Sơ Mi Tay Dài Nữ Phối Tay Voan - Thanh lịch - Sang trọng - Mềm mại', 500000, NULL, 0, 0),
(25, 4, 'QUẦN JEANS NAM REGULAR YODY DENIM - Chất liệu cotton USA cao cấp', 550000, 'quan_1.jpg', 0, 0),
(26, 4, 'Quần Kaki Nam Cạp Di Động - Cao cấp, thành phần cotton cao giúp quần thông thoáng', 250000, 'quan_2.png', 0, 0),
(27, 4, 'Quần Jeans Nam Slim Fit Rayon Rách Gối phong cách trẻ trung, cá tính', 150000, 'quan_3.jpg', 0, 0),
(28, NULL, 'Quần Âu Nam Cạp Di Động Kẻ Sọc - Thiết kế cạp di động co giãn nhẹ, thoải mái vận động', 450000, 'quan_5.png', 0, 0),
(29, 2, 'Áo Polo In Tràn', 450000, 'aonam_1.png', 0, 0),
(30, 2, 'Áo Polo nam phối màu hiện đại, trẻ trung, năng động.', 290000, 'aonam_2.png', 0, 0),
(31, 2, 'Áo Polo Nam Cafe Nẹp Giấu Cúc - Thoáng mát vải mịn', 290000, 'aonam_5.png', 0, 0),
(32, 3, 'T-shirt Nam Traffic Sport Siêu Nhẹ', 120000, 'aonam_3.png', 0, 0),
(33, 3, 'Áo Thun Thể Thao Nam Siêu Nhẹ Thấm hút tốt, khô nhanh, thông thoáng', 800000, 'aonam_4.png', 0, 0),
(34, 5, 'Áo Khoác Jeans Nữ Crop Cơ Bản', 500000, 'ao-nu-1.jpg', 0, 0),
(35, 5, 'Sơ Mi Dài Tay Nữ Nano Thêu Nẹp Thiết kế tôn dáng, tỉ mỉ trong từng đường may', 150000, 'ao-nu-2.jpg', 0, 0),
(36, 5, 'Áo Len Nữ Mỏng Cổ Cao 5cm - Chất vải mềm mại, an toàn cho da, độ co giãn đàn hồi', 375000, 'ao-nu-3.png', 0, 0),
(37, 5, 'Áo Sơ Mi Tay Dài Nữ Phối Tay Voan - Thanh lịch - Sang trọng - Mềm mại', 400000, 'ao-nu-4.png', 0, 0),
(38, 5, 'Áo Sơ Mi Tay Dài Nữ Phối Tay Voan - Thanh lịch - Sang trọng - Mềm mại', 500000, NULL, 0, 0),
(39, 4, 'QUẦN JEANS NAM REGULAR YODY DENIM - Chất liệu cotton USA cao cấp', 550000, 'quan_1.jpg', 0, 0),
(40, 4, 'Quần Kaki Nam Cạp Di Động - Cao cấp, thành phần cotton cao giúp quần thông thoáng', 250000, 'quan_2.png', 0, 0),
(41, 4, 'Quần Jeans Nam Slim Fit Rayon Rách Gối phong cách trẻ trung, cá tính', 150000, 'quan_3.jpg', 0, 0),
(42, NULL, 'Quần Âu Nam Cạp Di Động Kẻ Sọc - Thiết kế cạp di động co giãn nhẹ, thoải mái vận động', 450000, 'quan_5.png', 0, 0),
(43, 2, 'Áo Polo In Tràn', 450000, 'aonam_1.png', 0, 0),
(44, 2, 'Áo Polo nam phối màu hiện đại, trẻ trung, năng động.', 290000, 'aonam_2.png', 0, 0),
(45, 2, 'Áo Polo Nam Cafe Nẹp Giấu Cúc - Thoáng mát vải mịn', 290000, 'aonam_5.png', 0, 0),
(46, 3, 'T-shirt Nam Traffic Sport Siêu Nhẹ', 120000, 'aonam_3.png', 0, 0),
(47, 3, 'Áo Thun Thể Thao Nam Siêu Nhẹ Thấm hút tốt, khô nhanh, thông thoáng', 800000, 'aonam_4.png', 0, 0),
(48, 5, 'Áo Khoác Jeans Nữ Crop Cơ Bản', 500000, 'ao-nu-1.jpg', 0, 0),
(49, 5, 'Sơ Mi Dài Tay Nữ Nano Thêu Nẹp Thiết kế tôn dáng, tỉ mỉ trong từng đường may', 150000, 'ao-nu-2.jpg', 0, 0),
(50, 5, 'Áo Len Nữ Mỏng Cổ Cao 5cm - Chất vải mềm mại, an toàn cho da, độ co giãn đàn hồi', 375000, 'ao-nu-3.png', 0, 0),
(51, 5, 'Áo Sơ Mi Tay Dài Nữ Phối Tay Voan - Thanh lịch - Sang trọng - Mềm mại', 400000, 'ao-nu-4.png', 0, 0),
(52, 5, 'Áo Sơ Mi Tay Dài Nữ Phối Tay Voan - Thanh lịch - Sang trọng - Mềm mại', 500000, NULL, 0, 0),
(53, 4, 'QUẦN JEANS NAM REGULAR YODY DENIM - Chất liệu cotton USA cao cấp', 550000, 'quan_1.jpg', 0, 0),
(54, 4, 'Quần Kaki Nam Cạp Di Động - Cao cấp, thành phần cotton cao giúp quần thông thoáng', 250000, 'quan_2.png', 0, 0),
(55, 4, 'Quần Jeans Nam Slim Fit Rayon Rách Gối phong cách trẻ trung, cá tính', 150000, 'quan_3.jpg', 0, 0),
(56, NULL, 'Quần Âu Nam Cạp Di Động Kẻ Sọc - Thiết kế cạp di động co giãn nhẹ, thoải mái vận động', 450000, 'quan_5.png', 0, 0),
(57, 2, 'Áo Polo In Tràn', 450000, 'aonam_1.png', 0, 0),
(58, 2, 'Áo Polo nam phối màu hiện đại, trẻ trung, năng động.', 290000, 'aonam_2.png', 0, 0),
(59, 2, 'Áo Polo Nam Cafe Nẹp Giấu Cúc - Thoáng mát vải mịn', 290000, 'aonam_5.png', 0, 0),
(60, 3, 'T-shirt Nam Traffic Sport Siêu Nhẹ', 120000, 'aonam_3.png', 0, 0),
(61, 3, 'Áo Thun Thể Thao Nam Siêu Nhẹ Thấm hút tốt, khô nhanh, thông thoáng', 800000, 'aonam_4.png', 0, 0),
(62, 5, 'Áo Khoác Jeans Nữ Crop Cơ Bản', 500000, 'ao-nu-1.jpg', 0, 0),
(63, 5, 'Sơ Mi Dài Tay Nữ Nano Thêu Nẹp Thiết kế tôn dáng, tỉ mỉ trong từng đường may', 150000, 'ao-nu-2.jpg', 0, 0),
(64, 5, 'Áo Len Nữ Mỏng Cổ Cao 5cm - Chất vải mềm mại, an toàn cho da, độ co giãn đàn hồi', 375000, 'ao-nu-3.png', 0, 0),
(65, 5, 'Áo Sơ Mi Tay Dài Nữ Phối Tay Voan - Thanh lịch - Sang trọng - Mềm mại', 400000, 'ao-nu-4.png', 0, 0),
(66, 5, 'Áo Sơ Mi Tay Dài Nữ Phối Tay Voan - Thanh lịch - Sang trọng - Mềm mại', 500000, NULL, 0, 0),
(67, 4, 'QUẦN JEANS NAM REGULAR YODY DENIM - Chất liệu cotton USA cao cấp', 550000, 'quan_1.jpg', 0, 0),
(68, 4, 'Quần Kaki Nam Cạp Di Động - Cao cấp, thành phần cotton cao giúp quần thông thoáng', 250000, 'quan_2.png', 0, 0),
(69, 4, 'Quần Jeans Nam Slim Fit Rayon Rách Gối phong cách trẻ trung, cá tính', 150000, 'quan_3.jpg', 0, 0),
(70, NULL, 'Quần Âu Nam Cạp Di Động Kẻ Sọc - Thiết kế cạp di động co giãn nhẹ, thoải mái vận động', 450000, 'quan_5.png', 0, 0),
(71, 2, 'Áo Polo In Tràn', 450000, 'aonam_1.png', 0, 0),
(72, 2, 'Áo Polo nam phối màu hiện đại, trẻ trung, năng động.', 290000, 'aonam_2.png', 0, 0),
(73, 2, 'Áo Polo Nam Cafe Nẹp Giấu Cúc - Thoáng mát vải mịn', 290000, 'aonam_5.png', 0, 0),
(74, 3, 'T-shirt Nam Traffic Sport Siêu Nhẹ', 120000, 'aonam_3.png', 0, 0),
(75, 3, 'Áo Thun Thể Thao Nam Siêu Nhẹ Thấm hút tốt, khô nhanh, thông thoáng', 800000, 'aonam_4.png', 0, 0),
(76, 5, 'Áo Khoác Jeans Nữ Crop Cơ Bản', 500000, 'ao-nu-1.jpg', 0, 0),
(77, 5, 'Sơ Mi Dài Tay Nữ Nano Thêu Nẹp Thiết kế tôn dáng, tỉ mỉ trong từng đường may', 150000, 'ao-nu-2.jpg', 0, 0),
(78, 5, 'Áo Len Nữ Mỏng Cổ Cao 5cm - Chất vải mềm mại, an toàn cho da, độ co giãn đàn hồi', 375000, 'ao-nu-3.png', 0, 0),
(79, 5, 'Áo Sơ Mi Tay Dài Nữ Phối Tay Voan - Thanh lịch - Sang trọng - Mềm mại', 400000, 'ao-nu-4.png', 0, 0),
(80, 5, 'Áo Sơ Mi Tay Dài Nữ Phối Tay Voan - Thanh lịch - Sang trọng - Mềm mại', 500000, NULL, 0, 0),
(81, 4, 'QUẦN JEANS NAM REGULAR YODY DENIM - Chất liệu cotton USA cao cấp', 550000, 'quan_1.jpg', 0, 0),
(82, 4, 'Quần Kaki Nam Cạp Di Động - Cao cấp, thành phần cotton cao giúp quần thông thoáng', 250000, 'quan_2.png', 0, 0),
(83, 4, 'Quần Jeans Nam Slim Fit Rayon Rách Gối phong cách trẻ trung, cá tính', 150000, 'quan_3.jpg', 0, 0),
(84, NULL, 'Quần Âu Nam Cạp Di Động Kẻ Sọc - Thiết kế cạp di động co giãn nhẹ, thoải mái vận động', 450000, 'quan_5.png', 0, 0),
(85, 2, 'Áo Polo In Tràn', 450000, 'aonam_1.png', 0, 0),
(86, 2, 'Áo Polo nam phối màu hiện đại, trẻ trung, năng động.', 290000, 'aonam_2.png', 0, 0),
(87, 2, 'Áo Polo Nam Cafe Nẹp Giấu Cúc - Thoáng mát vải mịn', 290000, 'aonam_5.png', 0, 0),
(88, 3, 'T-shirt Nam Traffic Sport Siêu Nhẹ', 120000, 'aonam_3.png', 0, 0),
(89, 3, 'Áo Thun Thể Thao Nam Siêu Nhẹ Thấm hút tốt, khô nhanh, thông thoáng', 800000, 'aonam_4.png', 0, 0),
(90, 5, 'Áo Khoác Jeans Nữ Crop Cơ Bản', 500000, 'ao-nu-1.jpg', 0, 0),
(91, 5, 'Sơ Mi Dài Tay Nữ Nano Thêu Nẹp Thiết kế tôn dáng, tỉ mỉ trong từng đường may', 150000, 'ao-nu-2.jpg', 0, 0),
(92, 5, 'Áo Len Nữ Mỏng Cổ Cao 5cm - Chất vải mềm mại, an toàn cho da, độ co giãn đàn hồi', 375000, 'ao-nu-3.png', 0, 0),
(93, 5, 'Áo Sơ Mi Tay Dài Nữ Phối Tay Voan - Thanh lịch - Sang trọng - Mềm mại', 400000, 'ao-nu-4.png', 0, 0),
(94, 5, 'Áo Sơ Mi Tay Dài Nữ Phối Tay Voan - Thanh lịch - Sang trọng - Mềm mại', 500000, NULL, 0, 0),
(95, 4, 'QUẦN JEANS NAM REGULAR YODY DENIM - Chất liệu cotton USA cao cấp', 550000, 'quan_1.jpg', 0, 0),
(96, 4, 'Quần Kaki Nam Cạp Di Động - Cao cấp, thành phần cotton cao giúp quần thông thoáng', 250000, 'quan_2.png', 0, 0),
(97, 4, 'Quần Jeans Nam Slim Fit Rayon Rách Gối phong cách trẻ trung, cá tính', 150000, 'quan_3.jpg', 0, 0),
(98, NULL, 'Quần Âu Nam Cạp Di Động Kẻ Sọc - Thiết kế cạp di động co giãn nhẹ, thoải mái vận động', 450000, 'quan_5.png', 0, 0),
(99, 2, 'Áo Polo In Tràn', 450000, 'aonam_1.png', 0, 0),
(100, 2, 'Áo Polo nam phối màu hiện đại, trẻ trung, năng động.', 290000, 'aonam_2.png', 0, 0),
(101, 2, 'Áo Polo Nam Cafe Nẹp Giấu Cúc - Thoáng mát vải mịn', 290000, 'aonam_5.png', 0, 0),
(102, 3, 'T-shirt Nam Traffic Sport Siêu Nhẹ', 120000, 'aonam_3.png', 0, 0),
(103, 3, 'Áo Thun Thể Thao Nam Siêu Nhẹ Thấm hút tốt, khô nhanh, thông thoáng', 800000, 'aonam_4.png', 0, 0),
(104, 5, 'Áo Khoác Jeans Nữ Crop Cơ Bản', 500000, 'ao-nu-1.jpg', 0, 0),
(105, 5, 'Sơ Mi Dài Tay Nữ Nano Thêu Nẹp Thiết kế tôn dáng, tỉ mỉ trong từng đường may', 150000, 'ao-nu-2.jpg', 0, 0),
(106, 5, 'Áo Len Nữ Mỏng Cổ Cao 5cm - Chất vải mềm mại, an toàn cho da, độ co giãn đàn hồi', 375000, 'ao-nu-3.png', 0, 0),
(107, 5, 'Áo Sơ Mi Tay Dài Nữ Phối Tay Voan - Thanh lịch - Sang trọng - Mềm mại', 400000, 'ao-nu-4.png', 0, 0),
(108, 5, 'Áo Sơ Mi Tay Dài Nữ Phối Tay Voan - Thanh lịch - Sang trọng - Mềm mại', 500000, NULL, 0, 0),
(109, 4, 'QUẦN JEANS NAM REGULAR YODY DENIM - Chất liệu cotton USA cao cấp', 550000, 'quan_1.jpg', 0, 0),
(110, 4, 'Quần Kaki Nam Cạp Di Động - Cao cấp, thành phần cotton cao giúp quần thông thoáng', 250000, 'quan_2.png', 0, 0),
(111, 4, 'Quần Jeans Nam Slim Fit Rayon Rách Gối phong cách trẻ trung, cá tính', 150000, 'quan_3.jpg', 0, 0),
(112, NULL, 'Quần Âu Nam Cạp Di Động Kẻ Sọc - Thiết kế cạp di động co giãn nhẹ, thoải mái vận động', 450000, 'quan_5.png', 0, 0),
(113, 2, 'Áo Polo In Tràn', 450000, 'aonam_1.png', 0, 0),
(114, 2, 'Áo Polo nam phối màu hiện đại, trẻ trung, năng động.', 290000, 'aonam_2.png', 0, 0),
(115, 2, 'Áo Polo Nam Cafe Nẹp Giấu Cúc - Thoáng mát vải mịn', 290000, 'aonam_5.png', 0, 0),
(116, 3, 'T-shirt Nam Traffic Sport Siêu Nhẹ', 120000, 'aonam_3.png', 0, 0),
(117, 3, 'Áo Thun Thể Thao Nam Siêu Nhẹ Thấm hút tốt, khô nhanh, thông thoáng', 800000, 'aonam_4.png', 0, 0),
(118, 5, 'Áo Khoác Jeans Nữ Crop Cơ Bản', 500000, 'ao-nu-1.jpg', 0, 0),
(119, 5, 'Sơ Mi Dài Tay Nữ Nano Thêu Nẹp Thiết kế tôn dáng, tỉ mỉ trong từng đường may', 150000, 'ao-nu-2.jpg', 0, 0),
(120, 5, 'Áo Len Nữ Mỏng Cổ Cao 5cm - Chất vải mềm mại, an toàn cho da, độ co giãn đàn hồi', 375000, 'ao-nu-3.png', 0, 0),
(121, 5, 'Áo Sơ Mi Tay Dài Nữ Phối Tay Voan - Thanh lịch - Sang trọng - Mềm mại', 400000, 'ao-nu-4.png', 0, 0),
(122, 5, 'Áo Sơ Mi Tay Dài Nữ Phối Tay Voan - Thanh lịch - Sang trọng - Mềm mại', 500000, NULL, 0, 0),
(123, 4, 'QUẦN JEANS NAM REGULAR YODY DENIM - Chất liệu cotton USA cao cấp', 550000, 'quan_1.jpg', 0, 0),
(124, 4, 'Quần Kaki Nam Cạp Di Động - Cao cấp, thành phần cotton cao giúp quần thông thoáng', 250000, 'quan_2.png', 0, 0),
(125, 4, 'Quần Jeans Nam Slim Fit Rayon Rách Gối phong cách trẻ trung, cá tính', 150000, 'quan_3.jpg', 0, 0),
(126, NULL, 'Quần Âu Nam Cạp Di Động Kẻ Sọc - Thiết kế cạp di động co giãn nhẹ, thoải mái vận động', 450000, 'quan_5.png', 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size`
--

CREATE TABLE `size` (
  `id_size` int(11) NOT NULL,
  `name_size` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `size`
--

INSERT INTO `size` (`id_size`, `name_size`) VALUES
(1, 'S'),
(2, 'M'),
(3, 'L'),
(4, 'XL'),
(5, 'XXL'),
(6, 'XXXL');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tonkho`
--

CREATE TABLE `tonkho` (
  `id_tonkho` int(11) NOT NULL,
  `id_product` int(11) DEFAULT NULL,
  `id_size` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `tonkho`
--

INSERT INTO `tonkho` (`id_tonkho`, `id_product`, `id_size`, `quantity`) VALUES
(1, 1, 1, 100),
(2, 1, 2, 200),
(3, 2, 2, 150),
(4, 2, 3, 50),
(5, 3, 1, 80),
(6, 3, 3, 120),
(7, 1, 1, 100),
(8, 1, 2, 150),
(9, 13, 3, 200),
(10, 10, 4, 50),
(11, 2, 1, 80),
(12, 2, 2, 100),
(13, 10, 3, 150),
(14, 2, 4, 60),
(15, 5, 1, 120),
(16, 3, 2, 150),
(17, 6, 3, 200),
(18, 3, 4, 80),
(19, 4, 1, 90),
(20, 7, 2, 130),
(21, 4, 3, 160),
(22, 4, 4, 70),
(23, 7, 1, 110),
(24, 5, 2, 140),
(25, 8, 3, 180),
(26, 9, 4, 90);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`id_binhluan`),
  ADD KEY `id_khachhang` (`id_khachhang`),
  ADD KEY `id_product` (`id_product`);

--
-- Chỉ mục cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`id_chitiethoadon`),
  ADD KEY `id_donhang` (`id_donhang`),
  ADD KEY `id_tonkho` (`id_tonkho`);

--
-- Chỉ mục cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_phieunhap` (`id_phieunhap`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_size` (`id_size`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`),
  ADD KEY `id_danhmuc_cha` (`id_danhmuc_cha`);

--
-- Chỉ mục cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`id_donhang`),
  ADD KEY `id_khachhang` (`id_khachhang`),
  ADD KEY `id_nhanvien` (`id_nhanvien`);

--
-- Chỉ mục cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`id_khachhang`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`id_nhacungcap`);

--
-- Chỉ mục cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`id_nhanvien`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_phanquyen` (`id_phanquyen`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`id_phanquyen`);

--
-- Chỉ mục cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`id_phieunhap`),
  ADD KEY `id_nhacungcap` (`id_nhacungcap`),
  ADD KEY `id_nhanvien` (`id_nhanvien`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`),
  ADD KEY `id_danhmuc` (`id_danhmuc`);

--
-- Chỉ mục cho bảng `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id_size`);

--
-- Chỉ mục cho bảng `tonkho`
--
ALTER TABLE `tonkho`
  ADD PRIMARY KEY (`id_tonkho`),
  ADD KEY `id_product` (`id_product`),
  ADD KEY `id_size` (`id_size`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `id_binhluan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `id_chitiethoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `donhang`
--
ALTER TABLE `donhang`
  MODIFY `id_donhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `id_khachhang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT cho bảng `nhacungcap`
--
ALTER TABLE `nhacungcap`
  MODIFY `id_nhacungcap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `id_nhanvien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  MODIFY `id_phanquyen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `id_phieunhap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT cho bảng `size`
--
ALTER TABLE `size`
  MODIFY `id_size` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tonkho`
--
ALTER TABLE `tonkho`
  MODIFY `id_tonkho` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id_khachhang`),
  ADD CONSTRAINT `binhluan_ibfk_10` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `binhluan_ibfk_11` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id_khachhang`),
  ADD CONSTRAINT `binhluan_ibfk_12` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `binhluan_ibfk_13` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id_khachhang`),
  ADD CONSTRAINT `binhluan_ibfk_14` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `binhluan_ibfk_15` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id_khachhang`),
  ADD CONSTRAINT `binhluan_ibfk_16` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `binhluan_ibfk_17` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id_khachhang`),
  ADD CONSTRAINT `binhluan_ibfk_18` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `binhluan_ibfk_3` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id_khachhang`),
  ADD CONSTRAINT `binhluan_ibfk_4` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `binhluan_ibfk_5` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id_khachhang`),
  ADD CONSTRAINT `binhluan_ibfk_6` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `binhluan_ibfk_7` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id_khachhang`),
  ADD CONSTRAINT `binhluan_ibfk_8` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `binhluan_ibfk_9` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id_khachhang`);

--
-- Các ràng buộc cho bảng `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id_donhang`),
  ADD CONSTRAINT `chitietdonhang_ibfk_10` FOREIGN KEY (`id_tonkho`) REFERENCES `tonkho` (`id_tonkho`),
  ADD CONSTRAINT `chitietdonhang_ibfk_11` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id_donhang`),
  ADD CONSTRAINT `chitietdonhang_ibfk_12` FOREIGN KEY (`id_tonkho`) REFERENCES `tonkho` (`id_tonkho`),
  ADD CONSTRAINT `chitietdonhang_ibfk_13` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id_donhang`),
  ADD CONSTRAINT `chitietdonhang_ibfk_14` FOREIGN KEY (`id_tonkho`) REFERENCES `tonkho` (`id_tonkho`),
  ADD CONSTRAINT `chitietdonhang_ibfk_15` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id_donhang`),
  ADD CONSTRAINT `chitietdonhang_ibfk_16` FOREIGN KEY (`id_tonkho`) REFERENCES `tonkho` (`id_tonkho`),
  ADD CONSTRAINT `chitietdonhang_ibfk_17` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id_donhang`),
  ADD CONSTRAINT `chitietdonhang_ibfk_18` FOREIGN KEY (`id_tonkho`) REFERENCES `tonkho` (`id_tonkho`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`id_tonkho`) REFERENCES `tonkho` (`id_tonkho`),
  ADD CONSTRAINT `chitietdonhang_ibfk_3` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id_donhang`),
  ADD CONSTRAINT `chitietdonhang_ibfk_4` FOREIGN KEY (`id_tonkho`) REFERENCES `tonkho` (`id_tonkho`),
  ADD CONSTRAINT `chitietdonhang_ibfk_5` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id_donhang`),
  ADD CONSTRAINT `chitietdonhang_ibfk_6` FOREIGN KEY (`id_tonkho`) REFERENCES `tonkho` (`id_tonkho`),
  ADD CONSTRAINT `chitietdonhang_ibfk_7` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id_donhang`),
  ADD CONSTRAINT `chitietdonhang_ibfk_8` FOREIGN KEY (`id_tonkho`) REFERENCES `tonkho` (`id_tonkho`),
  ADD CONSTRAINT `chitietdonhang_ibfk_9` FOREIGN KEY (`id_donhang`) REFERENCES `donhang` (`id_donhang`);

--
-- Các ràng buộc cho bảng `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD CONSTRAINT `chitietphieunhap_ibfk_1` FOREIGN KEY (`id_phieunhap`) REFERENCES `phieunhap` (`id_phieunhap`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_10` FOREIGN KEY (`id_phieunhap`) REFERENCES `phieunhap` (`id_phieunhap`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_11` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_12` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_13` FOREIGN KEY (`id_phieunhap`) REFERENCES `phieunhap` (`id_phieunhap`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_14` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_15` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_16` FOREIGN KEY (`id_phieunhap`) REFERENCES `phieunhap` (`id_phieunhap`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_17` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_18` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_19` FOREIGN KEY (`id_phieunhap`) REFERENCES `phieunhap` (`id_phieunhap`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_2` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_20` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_21` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_22` FOREIGN KEY (`id_phieunhap`) REFERENCES `phieunhap` (`id_phieunhap`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_23` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_24` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_25` FOREIGN KEY (`id_phieunhap`) REFERENCES `phieunhap` (`id_phieunhap`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_26` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_27` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_3` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_4` FOREIGN KEY (`id_phieunhap`) REFERENCES `phieunhap` (`id_phieunhap`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_5` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_6` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_7` FOREIGN KEY (`id_phieunhap`) REFERENCES `phieunhap` (`id_phieunhap`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_8` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `chitietphieunhap_ibfk_9` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`);

--
-- Các ràng buộc cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD CONSTRAINT `danhmuc_ibfk_1` FOREIGN KEY (`id_danhmuc_cha`) REFERENCES `danhmuc` (`id_danhmuc`),
  ADD CONSTRAINT `danhmuc_ibfk_2` FOREIGN KEY (`id_danhmuc_cha`) REFERENCES `danhmuc` (`id_danhmuc`),
  ADD CONSTRAINT `danhmuc_ibfk_3` FOREIGN KEY (`id_danhmuc_cha`) REFERENCES `danhmuc` (`id_danhmuc`),
  ADD CONSTRAINT `danhmuc_ibfk_4` FOREIGN KEY (`id_danhmuc_cha`) REFERENCES `danhmuc` (`id_danhmuc`),
  ADD CONSTRAINT `danhmuc_ibfk_5` FOREIGN KEY (`id_danhmuc_cha`) REFERENCES `danhmuc` (`id_danhmuc`),
  ADD CONSTRAINT `danhmuc_ibfk_6` FOREIGN KEY (`id_danhmuc_cha`) REFERENCES `danhmuc` (`id_danhmuc`),
  ADD CONSTRAINT `danhmuc_ibfk_7` FOREIGN KEY (`id_danhmuc_cha`) REFERENCES `danhmuc` (`id_danhmuc`),
  ADD CONSTRAINT `danhmuc_ibfk_8` FOREIGN KEY (`id_danhmuc_cha`) REFERENCES `danhmuc` (`id_danhmuc`),
  ADD CONSTRAINT `danhmuc_ibfk_9` FOREIGN KEY (`id_danhmuc_cha`) REFERENCES `danhmuc` (`id_danhmuc`);

--
-- Các ràng buộc cho bảng `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id_khachhang`),
  ADD CONSTRAINT `donhang_ibfk_10` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `donhang_ibfk_11` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id_khachhang`),
  ADD CONSTRAINT `donhang_ibfk_12` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `donhang_ibfk_13` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id_khachhang`),
  ADD CONSTRAINT `donhang_ibfk_14` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `donhang_ibfk_15` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id_khachhang`),
  ADD CONSTRAINT `donhang_ibfk_16` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `donhang_ibfk_17` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id_khachhang`),
  ADD CONSTRAINT `donhang_ibfk_18` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `donhang_ibfk_2` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `donhang_ibfk_3` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id_khachhang`),
  ADD CONSTRAINT `donhang_ibfk_4` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `donhang_ibfk_5` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id_khachhang`),
  ADD CONSTRAINT `donhang_ibfk_6` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `donhang_ibfk_7` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id_khachhang`),
  ADD CONSTRAINT `donhang_ibfk_8` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `donhang_ibfk_9` FOREIGN KEY (`id_khachhang`) REFERENCES `khachhang` (`id_khachhang`);

--
-- Các ràng buộc cho bảng `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`id_phanquyen`) REFERENCES `phanquyen` (`id_phanquyen`),
  ADD CONSTRAINT `nhanvien_ibfk_2` FOREIGN KEY (`id_phanquyen`) REFERENCES `phanquyen` (`id_phanquyen`),
  ADD CONSTRAINT `nhanvien_ibfk_3` FOREIGN KEY (`id_phanquyen`) REFERENCES `phanquyen` (`id_phanquyen`),
  ADD CONSTRAINT `nhanvien_ibfk_4` FOREIGN KEY (`id_phanquyen`) REFERENCES `phanquyen` (`id_phanquyen`),
  ADD CONSTRAINT `nhanvien_ibfk_5` FOREIGN KEY (`id_phanquyen`) REFERENCES `phanquyen` (`id_phanquyen`),
  ADD CONSTRAINT `nhanvien_ibfk_6` FOREIGN KEY (`id_phanquyen`) REFERENCES `phanquyen` (`id_phanquyen`),
  ADD CONSTRAINT `nhanvien_ibfk_7` FOREIGN KEY (`id_phanquyen`) REFERENCES `phanquyen` (`id_phanquyen`),
  ADD CONSTRAINT `nhanvien_ibfk_8` FOREIGN KEY (`id_phanquyen`) REFERENCES `phanquyen` (`id_phanquyen`);

--
-- Các ràng buộc cho bảng `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `phieunhap_ibfk_1` FOREIGN KEY (`id_nhacungcap`) REFERENCES `nhacungcap` (`id_nhacungcap`),
  ADD CONSTRAINT `phieunhap_ibfk_10` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `phieunhap_ibfk_11` FOREIGN KEY (`id_nhacungcap`) REFERENCES `nhacungcap` (`id_nhacungcap`),
  ADD CONSTRAINT `phieunhap_ibfk_12` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `phieunhap_ibfk_13` FOREIGN KEY (`id_nhacungcap`) REFERENCES `nhacungcap` (`id_nhacungcap`),
  ADD CONSTRAINT `phieunhap_ibfk_14` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `phieunhap_ibfk_15` FOREIGN KEY (`id_nhacungcap`) REFERENCES `nhacungcap` (`id_nhacungcap`),
  ADD CONSTRAINT `phieunhap_ibfk_16` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `phieunhap_ibfk_17` FOREIGN KEY (`id_nhacungcap`) REFERENCES `nhacungcap` (`id_nhacungcap`),
  ADD CONSTRAINT `phieunhap_ibfk_18` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `phieunhap_ibfk_2` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `phieunhap_ibfk_3` FOREIGN KEY (`id_nhacungcap`) REFERENCES `nhacungcap` (`id_nhacungcap`),
  ADD CONSTRAINT `phieunhap_ibfk_4` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `phieunhap_ibfk_5` FOREIGN KEY (`id_nhacungcap`) REFERENCES `nhacungcap` (`id_nhacungcap`),
  ADD CONSTRAINT `phieunhap_ibfk_6` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `phieunhap_ibfk_7` FOREIGN KEY (`id_nhacungcap`) REFERENCES `nhacungcap` (`id_nhacungcap`),
  ADD CONSTRAINT `phieunhap_ibfk_8` FOREIGN KEY (`id_nhanvien`) REFERENCES `nhanvien` (`id_nhanvien`),
  ADD CONSTRAINT `phieunhap_ibfk_9` FOREIGN KEY (`id_nhacungcap`) REFERENCES `nhacungcap` (`id_nhacungcap`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`),
  ADD CONSTRAINT `products_ibfk_4` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`),
  ADD CONSTRAINT `products_ibfk_5` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`),
  ADD CONSTRAINT `products_ibfk_6` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`),
  ADD CONSTRAINT `products_ibfk_7` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`),
  ADD CONSTRAINT `products_ibfk_8` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`),
  ADD CONSTRAINT `products_ibfk_9` FOREIGN KEY (`id_danhmuc`) REFERENCES `danhmuc` (`id_danhmuc`);

--
-- Các ràng buộc cho bảng `tonkho`
--
ALTER TABLE `tonkho`
  ADD CONSTRAINT `tonkho_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `tonkho_ibfk_10` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`),
  ADD CONSTRAINT `tonkho_ibfk_11` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `tonkho_ibfk_12` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`),
  ADD CONSTRAINT `tonkho_ibfk_13` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `tonkho_ibfk_14` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`),
  ADD CONSTRAINT `tonkho_ibfk_15` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `tonkho_ibfk_16` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`),
  ADD CONSTRAINT `tonkho_ibfk_17` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `tonkho_ibfk_18` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`),
  ADD CONSTRAINT `tonkho_ibfk_2` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`),
  ADD CONSTRAINT `tonkho_ibfk_3` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `tonkho_ibfk_4` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`),
  ADD CONSTRAINT `tonkho_ibfk_5` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `tonkho_ibfk_6` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`),
  ADD CONSTRAINT `tonkho_ibfk_7` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`),
  ADD CONSTRAINT `tonkho_ibfk_8` FOREIGN KEY (`id_size`) REFERENCES `size` (`id_size`),
  ADD CONSTRAINT `tonkho_ibfk_9` FOREIGN KEY (`id_product`) REFERENCES `products` (`id_product`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
