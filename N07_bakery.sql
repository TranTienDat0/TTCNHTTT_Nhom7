/*
Created		10/20/2021
Modified		3/24/2022
Project		
Model			
Company		
Author		
Version		
Database		MS SQL 2005 
*/
create database bakery
go
use bakery
go

Create table [KHACH_HANG]
(
	[MaKhachHang] Nvarchar(20) NOT NULL,
	[TenKhachHang] Nvarchar(50) NOT NULL,
	[SoDienThoai] Integer NOT NULL,
	[Email] Nvarchar(50) NOT NULL,
	[DiaChi] Nvarchar(50) NOT NULL,
Primary Key ([MaKhachHang])
) 
go

Create table [TAIKHOAN_KHACHHANG]
(
	[tendangnhap] Nvarchar(50) NOT NULL,
	[makhau] Nvarchar(50) NOT NULL,
	[hoten] Nvarchar(50) not null,
	[Email] nvarchar(50) NOT NULL,
	[SDT] Nvarchar(50) NOT NULL,
	[DiaChi] ntext NOT NULL,
Primary Key ([tendangnhap])
) 
go

Create table [CUA_HANG]
(
	[MaCuaHang] Nvarchar(20) NOT NULL,
	[TenCuaHang] Nvarchar(50) NOT NULL,
	[DiaChiCuaHang] Nvarchar(50) NOT NULL,
	[SDT] Integer NOT NULL,
Primary Key ([MaCuaHang])
) 
go


Create table [SAN_PHAM]
(
	[MaSanPham] Nvarchar(10) NOT NULL,
	[MaDanhMuc] Nvarchar(10) NOT NULL,
	[TenSanPham] Nvarchar(50) NOT NULL,
	[MauSac] Nvarchar(10) NOT NULL,
	[GiaGoc] Integer NOT NULL,
	[SoLuongCo] Integer NOT NULL,
  [hinhanh] [nvarchar](300) NULL,
Primary Key ([MaSanPham])
) 
go

Create table [HOA_DON]
(
	[MaHoaDon] Nvarchar(20) NOT NULL,
	[TenDangNhap] Nvarchar(50) NOT NULL,
	[MaGiamGia] Nvarchar(20) NOT NULL,
	[NgayLap] Datetime NOT NULL,
	[TongTien] Integer NOT NULL,
Primary Key ([MaHoaDon])
) 
go

Create table [CUAHANG_SANPHAM]
(
	[MaCuaHang] Nvarchar(20) NOT NULL,
	[MaSanPham] Nvarchar(10) NOT NULL,
	[SoLuongTon] Integer NULL,
Primary Key ([MaCuaHang],[MaSanPham])
) 
go

Create table [HOADON_SANPHAM]
(
	[MaSanPham] Nvarchar(10) NOT NULL,
	[MaHoaDon] Nvarchar(20) NOT NULL,
	[ThanhTien] Nvarchar(50) NOT NULL,
	[SoLuongBan] Integer NOT NULL,
Primary Key ([MaSanPham],[MaHoaDon])
) 
go


Create table [KHUYEN_MAI]
(
	[MaGiamGia] Nvarchar(20) NOT NULL,
	[MaSanPham] Nvarchar(10) NOT NULL,
	[NgayBatDau] Datetime NOT NULL,
	[NgayKetThuc] Datetime NOT NULL,
	[TyLePhanTramGiam] Nvarchar(20) NOT NULL,
	[TenSanPhamGiamGia] Nvarchar(50) NOT NULL,
Primary Key ([MaGiamGia])
) 
go

Create table [DON_HANG]
(
	[MaDH] Nchar(10) NOT NULL,
	[NgayLap] Datetime NULL,
	[MaKhachHang] Nvarchar(20) NOT NULL,
Primary Key ([MaDH])
) 
go

Create table [TIN_TUC]
(
	[MaTinTuc] Nchar(10) NOT NULL,
	[TenTinTuc] Nvarchar(50) NOT NULL,
	[AnhMinhHoa] Nvarchar NOT NULL,
	[NoiDung] Nvarchar(1000) NOT NULL,
	[MaSanPham] Nvarchar(10) NOT NULL,
Primary Key ([MaTinTuc])
) 
go

Create table [DONHANG_SANPHAM]
(
	[MaDH] Nchar(10) NOT NULL,
	[MaSanPham] Nvarchar(10) NOT NULL,
Primary Key ([MaDH],[MaSanPham])
) 
go

Create table [SANPHAM_KICHTHUOC]
(
	[MaSanPham] Nvarchar(10) NOT NULL,
	[MaKichThuoc] Nvarchar(20) NOT NULL,
Primary Key ([MaSanPham],[MaKichThuoc])
) 
go


Create table [DANHMUC_SP]
(
	[MaDanhMuc] Nvarchar(10) NOT NULL,
	[TenDanhMuc] Nvarchar(20) NOT NULL,
	
Primary Key ([MaDanhMuc])
) 


Create table [SanPham_DaiDien]
(
	[MaDanhMuc] Nvarchar(10) NOT NULL,
	[TenDanhMuc] Nvarchar(20) NOT NULL,
	[MaSanPham] Nvarchar(10) NOT NULL,
	[hinhanh] [nvarchar](300) NULL,
	[GiaGoc] Integer NOT NULL,
Primary Key ([MaDanhMuc],[MaSanPham])
) 


insert into SanPham_DaiDien values ('DM01',N'Bánh sinh nhật','SP01',N'sn1.JPG',150000)
insert into SanPham_DaiDien values ('DM02',N'Bánh mì mặn','SP02',N'my2.JPG',160000)
insert into SanPham_DaiDien values ('DM03',N'Bánh ngọt','SP03',N'ngot1.JPG',200000)
insert into SanPham_DaiDien values ('DM04',N'Bánh vẽ','SP04',N've1.JPG',120000)
insert into SanPham_DaiDien values ('DM05',N'Bánh sự kiện','SP05',N'sk2.JPG',120000)
insert into SanPham_DaiDien values ('DM05',N'Bánh sự kiện','SP04',N'sk3.JPG',100000)


select * from KHACH_HANG
select * from CUA_HANG
select * from DANHMUC_SP
select * from SAN_PHAM 
select * from SanPham_DaiDien

select * from HOA_DON


insert into DANHMUC_SP values ('DM01',N'Bánh sinh nhật')
insert into DANHMUC_SP values ('DM02',N'Bánh mì')
insert into DANHMUC_SP values ('DM03',N'Bánh ngọt')
insert into DANHMUC_SP values ('DM04',N'Bánh vẽ')
insert into DANHMUC_SP values ('DM05',N'Bánh sự kiện')


insert into SAN_PHAM values ('SP01','DM01',N'Bánh sinh nhật kem tươi ',N'Red',120000,20,N'sn1.jpg')
insert into SAN_PHAM values ('SP06','DM01',N'Bánh kem bơ',N'blue',130000,25,N'sn2.jpg')
insert into SAN_PHAM values ('SP11','DM01',N'Bánh Gatemouse',N'White',150000,30,N'sn3.jpg')
insert into SAN_PHAM values ('SP16','DM01',N'Bánh mouse',N'yellow',120000,15,N'sn4.jpg')
insert into SAN_PHAM values ('SP17','DM01',N'Bánh sinh nhật viền kem',N'Orange',100000,20,N'sn5.jpg')
insert into SAN_PHAM values ('SP18','DM01',N'Bánh hình công chúa',N'Pig',110000,25,N'sn6.jpg')


insert into SAN_PHAM values ('SP02','DM02',N'Bánh mì tròn',N'white',200000,25,N'my1.jpg')
insert into SAN_PHAM values ('SP07','DM02',N'Bánh mì sừng bò',N'white',160000,15,N'my2.jpg')
insert into SAN_PHAM values ('SP12','DM02',N'Bánh mì xúc xích',N'Red',120000,20,N'my3.jpg')
insert into SAN_PHAM values ('SP19','DM02',N'Bánh mì hanh nhân ',N'Red',140000,22,N'my4.jpg')
insert into SAN_PHAM values ('SP20','DM02',N'Bánh mì gối',N'Red',150000,25,N'my5.jpg')
insert into SAN_PHAM values ('SP21','DM02',N'Bánh mì su kem',N'Red',150000,30,N'my6.jpg')

insert into SAN_PHAM values ('SP03','DM03',N'Bánh Donot',N'blue',120000,20,N'ngot1.jpg')
insert into SAN_PHAM values ('SP08','DM03',N'Bánh bông lan',N'Red',120000,20,N'ngot2.jpg')
insert into SAN_PHAM values ('SP13','DM03',N'Bánh chocolate hạnh nhân',N'Red',130000,20,N'ngot3.jpg')
insert into SAN_PHAM values ('SP22','DM03',N'Bánh kem ruốc',N'Red',140000,20,N'ngot4.jpg')
insert into SAN_PHAM values ('SP23','DM03',N'Bánh matcha kem',N'Red',200000,20,N'ngot5.jpg')
insert into SAN_PHAM values ('SP30','DM03',N'Bánh karamen',N'Red',250000,20,N'ngot6.jpg')




insert into SAN_PHAM values ('SP04','DM04',N'Bánh hình gấu',N'green',200000,20,N've1.jpg')
insert into SAN_PHAM values ('SP09','DM04',N'Bánh hello kitty ',N'Red',140000,15,N've2.jpg')
insert into SAN_PHAM values ('SP14','DM04',N'Bánh cá',N'Red',130000,25,N've3.jpg')
insert into SAN_PHAM values ('SP24','DM04',N'Bánh meow',N'Red',150000,15,N've4.jpg')
insert into SAN_PHAM values ('SP25','DM04',N'Bánh hình khỉ',N'Red',180000,25,N've5.jpg')
insert into SAN_PHAM values ('SP26','DM04',N'Bánh hình oto',N'Red',220000,30,N've6.jpg')




insert into SAN_PHAM values ('SP05','DM05',N'Bánh kỉ niệm 25 năm',N'white',120000,20,N'sk1.jpg')
insert into SAN_PHAM values ('SP10','DM05',N'Bánh valentine',N'Red',120000,20,N'sk2.jpg')
insert into SAN_PHAM values ('SP15','DM05',N'Bánh mừng khai trương',N'Red',120000,20,N'sk3.jpg')
insert into SAN_PHAM values ('SP27','DM05',N'Bánh  cưới',N'Red',120000,20,N'sk4.jpg')
insert into SAN_PHAM values ('SP28','DM05',N'Bánh mừng thọ',N'Red',120000,20,N'sk5.jpg')
insert into SAN_PHAM values ('SP29','DM05',N'Bánh sự kiện lớn',N'Red',120000,20,N'sk6.jpg')

insert into TAIKHOAN_KHACHHANG values (N'TienDat', N'tiendat2001', N'Trần Tiến Đạt',N'tiendat@gmail.com',N'0978084301', N'Nam Định')
insert into TAIKHOAN_KHACHHANG values (N'PhuongNhung', N'phuongnhung', N'Phạm Phương Nhung',N'phuongnhung@gmail.com',N'0978084301', N'Thanh Hoá')
select *from TAIKHOAN_KHACHHANG
update SAN_PHAM set hinhanh = '/Images/' + hinhanh
update SanPham_DaiDien set hinhanh = '/Images/' + hinhanh

