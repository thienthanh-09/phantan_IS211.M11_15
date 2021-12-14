
/*==============================================================*/
/* Table: BAN                                                   */
/*==============================================================*/
CREATE SEQUENCE MABAN_SEQ 
INCREMENT BY 1
START WITH 1;

create table BAN (
   MABAN                NUMERIC(2)          DEFAULT MABAN_SEQ.nextval not null,
   KHUVUC               NVARCHAR2(50)            not null,
   SOGHE                INT                      not null CHECK (SOGHE >= 0),
   TRANGTHAI            NVARCHAR2(10)            not null CHECK (TRANGTHAI IN('Tr?ng', '?ã ??t')),
   constraint PK_BAN primary key (MABAN)
);

INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG TR?T', 4, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG TR?T', 2, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG TR?T', 6, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG TR?T', 8, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG TR?T', 4, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG TR?T', 4, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG TR?T', 2, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG TR?T', 6, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG TR?T', 2, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG TR?T', 2, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG 1', 4, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG 1', 2, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG 1', 8, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG 1', 4, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG 1', 2, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG 1', 6, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG 1', 6, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG 1', 4, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG 1', 2, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'T?NG 1', 6, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'NGOÀI TR?I', 4, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'NGOÀI TR?I', 8, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'NGOÀI TR?I', 6, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'NGOÀI TR?I', 2, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'NGOÀI TR?I', 8, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'NGOÀI TR?I', 6, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'NGOÀI TR?I', 4, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'NGOÀI TR?I', 4, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'NGOÀI TR?I', 2, N'Tr?ng');
INSERT INTO BAN VALUES (MABAN_SEQ.nextval, N'NGOÀI TR?I', 2, N'Tr?ng');
select * from BAN;

/*==============================================================*/
/* Table: HANGHOA                                               */
/*==============================================================*/
CREATE SEQUENCE MAHANG_SEQ 
INCREMENT BY 1
START WITH 1;

create table HANGHOA (
   MAHANG               NUMERIC(6)           DEFAULT MAHANG_SEQ.nextval not null,
   MANCC                NUMERIC(6)           not null,
   TENHANG              NVARCHAR2(50)        not null,
   DONVI                NVARCHAR2(10)        not null,
   SL                   NUMERIC(4)           not null CHECK (SL > 0),
   DONGIA               NUMBER(9, 2)         not null,
   THANHTIEN            NUMBER(9, 2)         not null,
   constraint PK_HANGHOA primary key (MAHANG)
);


INSERT INTO HANGHOA VALUES (MAHANG_SEQ.nextval, 1,'CAFE Trung Nguyên','Kg', 10, 85000, 850000);
INSERT INTO HANGHOA VALUES (MAHANG_SEQ.nextval, 2,'CAFE Espresso', 'Kg', 10, 120000, 1200000);
INSERT INTO HANGHOA VALUES (MAHANG_SEQ.nextval, 2,'CAFE Long Black', 'Kg', 5, 75000, 375000);
INSERT INTO HANGHOA VALUES (MAHANG_SEQ.nextval, 2,'CAFE Latte', 'Kg', 5, 90000, 450000);
INSERT INTO HANGHOA VALUES (MAHANG_SEQ.nextval, 3, 'Doppio', 'Kg', 5, 100000, 500000);
INSERT INTO HANGHOA VALUES (MAHANG_SEQ.nextval, 3, 'Coconut', 'Hop', 5, 80000, 400000);
INSERT INTO HANGHOA VALUES (MAHANG_SEQ.nextval, 3, 'Chocolate', 'Kg', 5, 250000, 1250000);
INSERT INTO HANGHOA VALUES (MAHANG_SEQ.nextval, 3, 'S?a chua', 'Loc', 25, 34000, 850000);
INSERT INTO HANGHOA VALUES (MAHANG_SEQ.nextval, 2, 'CAFE Son Vi?t', 'Kg', 3, 125000, 375000);
INSERT INTO HANGHOA VALUES (MAHANG_SEQ.nextval, 4, 'Trà Atiso', 'Kg', 3, 120000, 360000);
INSERT INTO HANGHOA VALUES (MAHANG_SEQ.nextval, 4, 'Trà Phú s?', 'Kg', 4, 70000, 280000);
INSERT INTO HANGHOA VALUES (MAHANG_SEQ.nextval, 2, 'Matcha', 'Kg', 2, 185000, 370000);
INSERT INTO HANGHOA VALUES (MAHANG_SEQ.nextval, 5, 'S?a', 'Lon', 15, 18000, 270000);
INSERT INTO HANGHOA VALUES (MAHANG_SEQ.nextval, 3, 'CAFE Ngon', 'Kg',7, 210000, 1470000);
INSERT INTO HANGHOA VALUES (MAHANG_SEQ.nextval, 4, 'H?ng Trà', 'Kg', 3, 120000, 360000);
INSERT INTO HANGHOA VALUES (MAHANG_SEQ.nextval, 5, 'Cacao', 'Kg', 5, 175000, 875000);


/*==============================================================*/
/* Table: KHACHHANG                                             */
/*==============================================================*/
CREATE SEQUENCE MAKH_SEQ 
INCREMENT BY 1
START WITH 1;

create table KHACHHANG (
   MAKH                 NUMERIC(6)           DEFAULT MAKH_SEQ.nextval Not null,
   TENKH                NVARCHAR2(40)        not null,
   GIOITINH             NVARCHAR2(3)         not null CHECK (GIOITINH IN ('Nam', 'N?')),
   SDT                  NVARCHAR2(15)        not null UNIQUE,
   DIEMTL               INT                  not null,
   constraint PK_KHACHHANG primary key (MAKH)
);

INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'A Tu?n', N'Nam', 09857372736, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'A Nam', N'Nam', 09233673567, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'C Loan', N'N?', 09636474837, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'C Ph??ng', N'N?', 03345252555, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'A Phong', N'Nam', 03685885876, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'Chú Toàn', N'Nam', 09835453532, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'Cô Út', N'N?', 09534363673, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'Cô Bính', N'N?', 09636344882, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'A Thu?n', N'Nam', 09434637752, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'C Hi?n', N'N?', 09847846856, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'A Chung', N'Nam', 09474745883, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'C Linh', N'N?', 09225326365, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'Cô Ngân', N'N?', 09658684873, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'C H?nh', N'N?', 09363734743, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'A Quy?n', N'Nam', 03536774472, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'Chú Tu?n', N'Nam', 03674546474, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'Cô Th?m', N'N?', 09457886474, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'A H?i', N'Nam', 03563746884, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'C Giang', N'N?', 09235263655, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'Chú Thanh', N'Nam', 03364773473, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'A H?u', N'Nam', 09626656277, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'C Tâm', N'N?', 09836673525, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'A Phúc', N'Nam', 09536364632, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'C Trang', N'N?', 09253626465, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'A Minh', N'Nam', 09463635232, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'Chú Th?ng', N'Nam', 09324626275, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'Chú Trung', N'Nam', 09823253634, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'Cô Hoa', N'N?', 09462472654, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'C Tám', N'N?', 09547546373, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'A Tu?n', N'Nam', 09436756373, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'A Phong', N'Nam', 09857374743, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'A Tr??ng', N'Nam', 09834737336, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'C Ph??ng', N'N?', 09474858737, 0);
INSERT INTO KHACHHANG VALUES (MAKH_SEQ.nextval, N'C Hòa', N'N?', 03644874677, 0);

/*==============================================================*/
/* Table: NGUYENLIEU                                            */
/*==============================================================*/
CREATE SEQUENCE MANL_SEQ 
INCREMENT BY 1
START WITH 1; 

create table NGUYENLIEU (
   MANL                 NUMERIC(3)           DEFAULT MANL_SEQ.nextval not null,
   TENNL                NVARCHAR2(50)        not null,
   HSD                  DATE                 not null,
   SLCON                INT                  not null,
   CONGDUNG             NVARCHAR2(100)       not null,
   constraint PK_NGUYENLIEU primary key (MANL)
);

INSERT INTO NGUYENLIEU VALUES (MANL_SEQ.nextval, N'CAFE Espresso', TO_DATE('12/12/2023','dd/mm/yyyy'), 10, N'Pha Cafe Espresso');
INSERT INTO NGUYENLIEU VALUES (MANL_SEQ.nextval, N'CAFE Long Black', TO_DATE('12/12/2022','dd/mm/yyyy'), 5, N'Pha Cafe Long Black');
INSERT INTO NGUYENLIEU VALUES (MANL_SEQ.nextval, N'CAFE Latte', TO_DATE('02/12/2022','dd/mm/yyyy'), 5, N'Pha Cafe Latte');
INSERT INTO NGUYENLIEU VALUES (MANL_SEQ.nextval, N'Doppio', TO_DATE('12/12/2022','dd/mm/yyyy'), 5, N'Pha Doppio');
INSERT INTO NGUYENLIEU VALUES (MANL_SEQ.nextval, N'Coconut', TO_DATE('11/12/2022','dd/mm/yyyy'), 5, N'Pha Coconut Cafe');
INSERT INTO NGUYENLIEU VALUES (MANL_SEQ.nextval, N'Chocolate', TO_DATE('12/12/2022','dd/mm/yyyy'), 5, N'Làm món Chocolate');
INSERT INTO NGUYENLIEU VALUES (MANL_SEQ.nextval, N'S?a Chua', TO_DATE('05/12/2022','dd/mm/yyyy'), 25, N'Làm s?a chua ?á');
INSERT INTO NGUYENLIEU VALUES (MANL_SEQ.nextval, N'CAFE Son Vi?t', TO_DATE('12/12/2022','dd/mm/yyyy'), 3, N'Pha B?c X?u');
INSERT INTO NGUYENLIEU VALUES (MANL_SEQ.nextval, N'Trà Atiso', TO_DATE('12/12/2022','dd/mm/yyyy'), 3, N'Pha Tra Atiso');
INSERT INTO NGUYENLIEU VALUES (MANL_SEQ.nextval, N'Trà Phú S?', TO_DATE('12/12/2022','dd/mm/yyyy'), 4, N'Pha Trà Trái Cây');
INSERT INTO NGUYENLIEU VALUES (MANL_SEQ.nextval, N'CAFE Trung Nguyên', TO_DATE('12/12/2022','dd/mm/yyyy'), 10, N'Pha Cafe ?en');
INSERT INTO NGUYENLIEU VALUES (MANL_SEQ.nextval, N'Matcha', TO_DATE('12/12/2022','dd/mm/yyyy'), 2, N'Pha Matcha Late');
INSERT INTO NGUYENLIEU VALUES (MANL_SEQ.nextval, N'S?a', TO_DATE('02/12/2022','dd/mm/yyyy'), 15, N'Pha Cafe S?a');
INSERT INTO NGUYENLIEU VALUES (MANL_SEQ.nextval, N'CAFE Ngon', TO_DATE('07/12/2022','dd/mm/yyyy'), 7, N'Pha Cafe ?en');
INSERT INTO NGUYENLIEU VALUES (MANL_SEQ.nextval, N'H?ng Trà', TO_DATE('08/12/2022','dd/mm/yyyy'), 3, N'Pha H?ng Trà');
INSERT INTO NGUYENLIEU VALUES (MANL_SEQ.nextval, N'Cacao', TO_DATE('12/12/2022','dd/mm/yyyy'), 3, N'Pha Cacao');


/*==============================================================*/
/* Table: MON                                                   */
/*==============================================================*/
CREATE SEQUENCE MAMON_SEQ 
INCREMENT BY 1
START WITH 1;

create table MON (
   MAMON                NUMERIC(4)           DEFAULT MAMON_SEQ.nextval not null,
   MANL                 NUMERIC(3)           not null,
   TENMON               NVARCHAR2(100)       not null,
   GIA                  NUMBER(9, 2)         not null CHECK (GIA > 0),
   constraint PK_MON primary key (MAMON)
);

INSERT INTO MON VALUES (MAMON_SEQ.nextval, '1' ,N'CAFE Espresso', 39000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '2' ,N'CAFE ?en', 25000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '3' ,N'CAFE S?a', 30000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '4' ,N'CAFE Long Black', 39000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '5' ,N'CAFE Latte', 52000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '6' ,N'Doppio', 59000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '7' ,N'Cappuccino', 49000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '8' ,N'Flat White', 52000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '9' ,N'Mocha Latte', 52000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '10' ,N'Affogato', 52000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '11' ,N'Coconut Coffe', 42000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '12' ,N'Matcha Latte', 42000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '13' ,N'Chocolate', 45000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '14' ,N'CAFE Tr?ng', 45000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '15' ,N'B?c X?u', 30000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '16' ,N'Cacao', 30000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '17' ,N'Cam ép', 25000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '10' ,N'H?ng Trà', 30000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '10' ,N'Trà Hoa Qu?', 25000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '10' ,N'Trà ?ào', 20000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '10' ,N'Trà Táo B?c Hà', 30000);
INSERT INTO MON VALUES (MAMON_SEQ.nextval, '8' ,N'S?a Chua ?á', 25000);


/*==============================================================*/
/* Table: NCC                                                   */
/*==============================================================*/
CREATE SEQUENCE MANCC_SEQ 
INCREMENT BY 1
START WITH 1;
 
create table NCC (
   MANCC                NUMERIC(6)           DEFAULT MANCC_SEQ.nextval not null,
   TENNCC               NVARCHAR2(50)             not null,
   DIACHI               NVARCHAR2(100)            not null,
   SDT                  NVARCHAR2(15)          not null UNIQUE,
   constraint PK_NCC primary key (MANCC)
);

INSERT INTO NCC VALUES (MANCC_SEQ.nextval, N'CTY CAFE TRUNG NGUYÊN', N'Bình ??nh', 09253626526);
INSERT INTO NCC VALUES (MANCC_SEQ.nextval, N'SON VI?T COFFEE', N'Bình ??nh', 03637476376);
INSERT INTO NCC VALUES (MANCC_SEQ.nextval, N'CTY TNHH TÁM CHÂU', N'Bình ??nh', 09287652655);
INSERT INTO NCC VALUES (MANCC_SEQ.nextval, N'CTY TRÀ PHÚ S?', N'Bình ??nh', 09532536542);
INSERT INTO NCC VALUES (MANCC_SEQ.nextval, N'CÀ PHÊ NGON', N'Bình ??nh', 03323626552);

/*==============================================================*/
/* Table: NHANVIEN                                              */
/*==============================================================*/
CREATE SEQUENCE MANV_SEQ 
INCREMENT BY 1
START WITH 1; 

create table NHANVIEN (
   MANV                 NUMERIC(8)           DEFAULT MANV_SEQ.nextval not null,
   TENTK                NVARCHAR2(30)        not null,
   HOTEN                NVARCHAR2(40)        not null,
   CMND                 NVARCHAR2(15)        not null,
   NGAYSINH             DATE                 not null,
   DIACHI               NVARCHAR2(50)        not null,
   GIOITINH             NVARCHAR2(3)         not null CHECK (GIOITINH IN ('Nam', 'N?')),
   SDT                  NVARCHAR2(15)        not null,
   MUCLUONG             NUMBER(12)           not null,
   NVL                  DATE                 not null,
   constraint PK_NHANVIEN primary key (MANV)
);

INSERT INTO NHANVIEN VALUES (MANV_SEQ.nextval, 'mailan', N'Nguy?n Mai Lan', '236265767', TO_DATE('08/02/1989','dd/mm/yyyy'), N'Bình ??nh', N'N?', 09255654254, 9000000, TO_DATE('12/03/2019','dd/mm/yyyy'));
INSERT INTO NHANVIEN VALUES (MANV_SEQ.nextval, 'letuan', 'Le Van Tuan', '255264344', TO_DATE('05/09/1990','dd/mm/yyyy'), N'Bình ??nh', 'Nam', 0922526236, 9500000, TO_DATE('25/03/2019','dd/mm/yyyy'));
INSERT INTO NHANVIEN VALUES (MANV_SEQ.nextval, 'maihong', 'Mai Thi Hong', '252662726', TO_DATE('18/07/1989','dd/mm/yyyy'), N'Bình ??nh', N'N?', 0925267466, 9000000, TO_DATE('12/04/2019','dd/mm/yyyy'));
INSERT INTO NHANVIEN VALUES (MANV_SEQ.nextval, 'hoale', 'Le Thi Hoa', '252623652', TO_DATE('24/06/1988','dd/mm/yyyy'), N'Bình ??nh', N'N?', 0933662727, 10000000, TO_DATE('12/02/2019','dd/mm/yyyy'));
INSERT INTO NHANVIEN VALUES (MANV_SEQ.nextval, 'tranhung', 'Tran Van Hung', '256564633', TO_DATE('06/11/1993','dd/mm/yyyy'), N'Bình ??nh', 'Nam', 09452662723, 6500000, TO_DATE('12/03/2019','dd/mm/yyyy'));
INSERT INTO NHANVIEN VALUES (MANV_SEQ.nextval, 'nhung123', 'Nguyen Thi Nhung', '235262623', TO_DATE('09/12/1991','dd/mm/yyyy'), N'Bình ??nh', N'N?', 09432626627, 6000000, TO_DATE('12/03/2019','dd/mm/yyyy'));
INSERT INTO NHANVIEN VALUES (MANV_SEQ.nextval, 'phatnguyen', 'Nguyen Huu Phat', '232262726', TO_DATE('12/03/1990','dd/mm/yyyy'), N'Bình ??nh', 'Nam', 09225626252, 6500000, TO_DATE('12/03/2019','dd/mm/yyyy'));
INSERT INTO NHANVIEN VALUES (MANV_SEQ.nextval, 'dohang', 'Do Minh Hang', '236265767', TO_DATE('14/04/1994','dd/mm/yyyy'), N'Bình ??nh', N'N?', 09363767622, 6500000, TO_DATE('12/03/2019','dd/mm/yyyy'));
INSERT INTO NHANVIEN VALUES (MANV_SEQ.nextval, 'cuongdo', 'Do Huu Cuong', '223652656', TO_DATE('01/06/1993','dd/mm/yyyy'), N'Bình ??nh', 'Nam', 09226657653, 6000000, TO_DATE('12/03/2019','dd/mm/yyyy'));
INSERT INTO NHANVIEN VALUES (MANV_SEQ.nextval, 'phong2', 'Nguyen Tan Phong', '225336657', TO_DATE('15/05/1998','dd/mm/yyyy'), N'Bình ??nh', 'Nam', 09337765733, 7000000, TO_DATE('12/03/2019','dd/mm/yyyy'));
INSERT INTO NHANVIEN VALUES (MANV_SEQ.nextval, 'phuong123', 'Nguyen Mai Phuong', '265676778', TO_DATE('10/09/1995','dd/mm/yyyy'), N'Bình ??nh', N'N?', 09267876551, 6500000, TO_DATE('22/03/2019','dd/mm/yyyy'));
INSERT INTO NHANVIEN VALUES (MANV_SEQ.nextval, 'lenam', 'Le Van Nam', '225363763', TO_DATE('15/05/1998','dd/mm/yyyy'), N'Bình ??nh', 'Nam', 09343537783, 6500000, TO_DATE('15/03/2019','dd/mm/yyyy'));
INSERT INTO NHANVIEN VALUES (MANV_SEQ.nextval, 'haudo', 'Do Van Hau', '263765773', TO_DATE('20/08/1997','dd/mm/yyyy'), N'Bình ??nh', 'Nam', 09326327662, 6000000, TO_DATE('12/04/2019','dd/mm/yyyy'));


/*==============================================================*/
/* Table: CHI_TIET_NHAP                                           */
/*==============================================================*/
create table CHI_TIET_NHAP(
   MAHANG               NUMERIC(6)           not null,
   MANV                 NUMERIC(8)           not null,
   NGAYNHAP             DATE                 not null,
   constraint PK_CHI_TIET_NHAP primary key (MAHANG, MANV)
);

INSERT INTO CHI_TIET_NHAP VALUES (1, 2, TO_DATE('12/11/2021','dd/mm/yyyy'));
INSERT INTO CHI_TIET_NHAP VALUES (2, 2, TO_DATE('12/11/2021','dd/mm/yyyy'));
INSERT INTO CHI_TIET_NHAP VALUES (3, 2, TO_DATE('12/11/2021','dd/mm/yyyy'));
INSERT INTO CHI_TIET_NHAP VALUES (4, 2, TO_DATE('12/11/2021','dd/mm/yyyy'));
INSERT INTO CHI_TIET_NHAP VALUES (5, 2, TO_DATE('12/11/2021','dd/mm/yyyy'));
INSERT INTO CHI_TIET_NHAP VALUES (6, 2, TO_DATE('12/11/2021','dd/mm/yyyy'));
INSERT INTO CHI_TIET_NHAP VALUES (7, 2, TO_DATE('12/11/2021','dd/mm/yyyy'));
INSERT INTO CHI_TIET_NHAP VALUES (8, 2, TO_DATE('12/11/2021','dd/mm/yyyy'));
INSERT INTO CHI_TIET_NHAP VALUES (9, 2, TO_DATE('12/11/2021','dd/mm/yyyy'));
INSERT INTO CHI_TIET_NHAP VALUES (10, 3, TO_DATE('20/11/2021','dd/mm/yyyy'));
INSERT INTO CHI_TIET_NHAP VALUES (11, 3, TO_DATE('20/11/2021','dd/mm/yyyy'));
INSERT INTO CHI_TIET_NHAP VALUES (12, 3, TO_DATE('20/11/2021','dd/mm/yyyy'));
INSERT INTO CHI_TIET_NHAP VALUES (13, 3, TO_DATE('20/11/2021','dd/mm/yyyy'));
INSERT INTO CHI_TIET_NHAP VALUES (14, 4, TO_DATE('06/11/2021','dd/mm/yyyy'));
INSERT INTO CHI_TIET_NHAP VALUES (15, 4, TO_DATE('06/11/2021','dd/mm/yyyy'));
INSERT INTO CHI_TIET_NHAP VALUES (16, 4, TO_DATE('06/11/2021','dd/mm/yyyy'));
INSERT INTO CHI_TIET_NHAP VALUES (17, 4, TO_DATE('06/11/2021','dd/mm/yyyy'));


/*==============================================================*/
/* Table: HOADON                                                */
/*==============================================================*/
create table CTHD (
   MAKH                 NUMERIC(6)           not null,
   MABAN                NUMERIC(2)           not null,
   MAMON                NUMERIC(4)           not null,
   MAHD                 NUMERIC(6)           not null,
   SL                   INT                  not null,
   constraint PK_CTHD primary key (MAKH, MABAN, MAMON, MAHD)
);

INSERT INTO CTHD VALUES (1, 4, 2, 4, 1);
INSERT INTO CTHD VALUES (2, 4, 2, 4, 1);
INSERT INTO CTHD VALUES (3, 5, 2, 4, 1);
INSERT INTO CTHD VALUES (4, 7, 2, 4, 1);
INSERT INTO CTHD VALUES (5, 2, 2, 4, 1);
INSERT INTO CTHD VALUES (6, 3, 2, 4, 1);
INSERT INTO CTHD VALUES (7, 4, 2, 4, 1);
INSERT INTO CTHD VALUES (8, 4, 2, 4, 1);
INSERT INTO CTHD VALUES (9, 4, 2, 4, 1);
INSERT INTO CTHD VALUES (10, 4, 2, 4, 1);
INSERT INTO CTHD VALUES (11, 4, 2, 4, 1);
INSERT INTO CTHD VALUES (12, 4, 2, 4, 1);



CREATE SEQUENCE MAHD_SEQ 
INCREMENT BY 1
START WITH 1;

create table HOADON (
   MAHD                 NUMERIC(6)           DEFAULT MAHD_SEQ.nextval not null,
   MANV                 NUMERIC(8)           not null,
   MAKH                 NUMERIC(6)           not null,
   NGAYLAP              DATE                 not null,
   THANHTIEN            NUMBER(9, 2)         not null CHECK (THANHTIEN >= 0),
   GIAMGIA              INT                  not null CHECK (GIAMGIA <= 50),
   TRANGTHAI            NVARCHAR2(15)        not null,
   constraint PK_HOADON primary key (MAHD)
);

INSERT INTO HOADON VALUES (MAHD_SEQ.nextval, 2, 1, TO_DATE('12/11/2021','dd/mm/yyyy'), 60000, 0, 'Da thanh toan');
INSERT INTO HOADON VALUES (MAHD_SEQ.nextval, 2, 2, TO_DATE('12/11/2021','dd/mm/yyyy'), 70000, 0, 'Da thanh toan');
INSERT INTO HOADON VALUES (MAHD_SEQ.nextval, 2, 3, TO_DATE('12/11/2021','dd/mm/yyyy'), 80000, 0, 'Da thanh toan');
INSERT INTO HOADON VALUES (4, 2, 9, TO_DATE('13/11/2021','dd/mm/yyyy'), 140000, 0,'Chua thanh toan');
INSERT INTO HOADON VALUES (MAHD_SEQ.nextval, 2, 4, TO_DATE('12/11/2021','dd/mm/yyyy'), 90000, 0, 'Da thanh toan');
INSERT INTO HOADON VALUES (MAHD_SEQ.nextval, 2, 5, TO_DATE('12/11/2021','dd/mm/yyyy'), 100000, 0, 'Da thanh toan');
INSERT INTO HOADON VALUES (MAHD_SEQ.nextval, 2, 6, TO_DATE('12/11/2021','dd/mm/yyyy'), 110000, 0, 'Da thanh toan');
INSERT INTO HOADON VALUES (MAHD_SEQ.nextval, 2, 7, TO_DATE('12/11/2021','dd/mm/yyyy'), 120000, 0, 'Chua thanh toan');
INSERT INTO HOADON VALUES (MAHD_SEQ.nextval, 2, 8, TO_DATE('12/11/2021','dd/mm/yyyy'), 130000, 0, 'Chua thanh toan');
INSERT INTO HOADON VALUES (MAHD_SEQ.nextval, 2, 9, TO_DATE('12/11/2021','dd/mm/yyyy'), 140000, 0, 'Chua thanh toan');

/*==============================================================*/
/* Table: QUANLY                                                */
/*==============================================================*/
create table QUANLY (
   MANV                 NUMERIC(8)           not null,
   MABAN                NUMERIC(2)           not null,
   MANL                 NUMERIC(3)           not null,
   MANV_QL              NUMERIC(8)           not null,
   constraint PK_QUANLY primary key (MANV, MABAN, MANL, MANV_QL)
);

INSERT INTO QUANLY VALUES (1,1,1,1);
INSERT INTO QUANLY VALUES (5,2,2,1);
INSERT INTO QUANLY VALUES (6,3,3,1);
INSERT INTO QUANLY VALUES (7,4,4,1);
INSERT INTO QUANLY VALUES (8,5,5,1);
INSERT INTO QUANLY VALUES (9,6,6,1);
INSERT INTO QUANLY VALUES (10,7,7,1);
INSERT INTO QUANLY VALUES (11,8,8,1);
INSERT INTO QUANLY VALUES (12,9,9,1);
INSERT INTO QUANLY VALUES (13,10,10,1);
INSERT INTO QUANLY VALUES (2,11,17,2);
INSERT INTO QUANLY VALUES (5,12,16,2);
INSERT INTO QUANLY VALUES (6,13,15,2);
INSERT INTO QUANLY VALUES (7,14,14,2);
INSERT INTO QUANLY VALUES (8,15,13,2);
INSERT INTO QUANLY VALUES (9,16,12,2);
INSERT INTO QUANLY VALUES (10,17,11,2);
INSERT INTO QUANLY VALUES (11,18,10,2);
INSERT INTO QUANLY VALUES (12,19,9,2);
INSERT INTO QUANLY VALUES (13,20,8,2);
INSERT INTO QUANLY VALUES (3,21,3,3);
INSERT INTO QUANLY VALUES (5,22,4,3);
INSERT INTO QUANLY VALUES (6,23,5,3);
INSERT INTO QUANLY VALUES (7,24,6,3);
INSERT INTO QUANLY VALUES (8,25,7,3);
INSERT INTO QUANLY VALUES (9,26,8,3);
INSERT INTO QUANLY VALUES (10,27,9,3);
INSERT INTO QUANLY VALUES (11,28,10,3);
INSERT INTO QUANLY VALUES (12,29,11,3);
INSERT INTO QUANLY VALUES (13,30,12,3);

alter table CHI_TIET_NHAP
   add constraint FK_CHITIETNHAP_HANGHOA foreign key (MAHANG)
      references HANGHOA(MAHANG);

alter table CHI_TIET_NHAP
   add constraint FK_CHITIETNHAP_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV);


alter table HANGHOA
   add constraint FK_HANGHOA_NCC foreign key (MANCC)
      references NCC (MANCC);

alter table HOADON
   add constraint FK_HOADON_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV);

alter table HOADON
   add constraint FK_HOADON_KHACHHANG foreign key (MAKH)
      references KHACHHANG (MAKH);


alter table MON
   add constraint FK_MON_NGUYENLIEU foreign key (MANL)
      references NGUYENLIEU (MANL);


alter table QUANLY
   add constraint FK_QUANLY_NHANVIEN foreign key (MANV)
      references NHANVIEN (MANV);

alter table QUANLY
   add constraint FK_QUANLY_BAN foreign key (MABAN)
      references BAN (MABAN);


alter table QUANLY
   add constraint FK_QUANLY_NGUYENLIEU foreign key (MANL)
      references NGUYENLIEU (MANL);
/*
alter table QUANLY
   add constraint FK_QUANLY_NHANVIEN foreign key (MANV_QL)
      references NHANVIEN (MANV);
*/     
      

-- Them Nhan 1 nhan vien --
CREATE OR REPLACE PROCEDURE Them_Nhan_Vien(v_TenNV    NHANVIEN.HOTEN%TYPE, 
                                           v_CMND     NHANVIEN.CMND%TYPE, 
                                           v_NgaySinh NVARCHAR2,
                                           v_Diachi   NHANVIEN.DIACHI%TYPE, 
                                           v_GioiTinh NHANVIEN.GIOITINH%TYPE, 
                                           v_SDT      NHANVIEN.SDT%TYPE, 
                                           v_MucLuong NHANVIEN.MUCLUONG%TYPE, 
                                           v_NGVL     NVARCHAR2, 
                                           v_TenTK    TAIKHOAN.TENTK%TYPE, 
                                           v_MK       TAIKHOAN.MK%TYPE, 
                                           v_role     TAIKHOAN.ROLE%TYPE)
IS 
BEGIN
      COMMIT;
      INSERT INTO TAIKHOAN VALUES (v_TenTK, v_MK, v_role, 'Khong dang nhap');
      INSERT INTO NHANVIEN VALUES (MANV_SEQ.NEXTVAL, v_TenTK, v_TenNV, v_CMND, TO_DATE(v_NgaySinh,'dd-MM-yyyy'), v_Diachi, v_GioiTinh, v_SDT, v_MucLuong, TO_DATE(v_NGVL,'dd-MM-yyyy'));
      COMMIT;
END;

CREATE OR REPLACE PROCEDURE Xoa_Nhan_Vien(v_MaNV NHANVIEN.MANV%TYPE, v_TenTK NHANVIEN.TENTK%TYPE)
IS 
BEGIN
      UPDATE HOADON SET MANV = NULL WHERE MANV = v_MaNV;
      DELETE FROM CHI_TIET_NHAP WHERE MANV = v_MaNV;
      DELETE FROM QUANLY WHERE MANV = v_MaNV OR MANV_QL = v_MaNV;
      DELETE FROM NHANVIEN WHERE MANV = v_MaNV and TENTK = v_TenTK;
      DELETE FROM TAIKHOAN WHERE TENTK = v_TenTK;
      COMMIT;
END;


-----------------------------TRIGGER--------------------------
create or replace TRIGGER KHOA_HOADON BEFORE
    UPDATE ON HOADON
    FOR EACH ROW
BEGIN
    /**
     * Ki?m tra hóa ??n ?ã khóa hay ch?a
     * TRANGTHAI trong hóa ??n = 'Da thanh toan' --> ?ã khóa.
     */

    IF :old.TRANGTHAI = 'Da thanh toan' THEN
        raise_application_error(-20015, 'Hóa ??n ?ã thanh toán không c?p nh?t ???c');
    END IF;
END;


/
create or replace TRIGGER KHOA_CTHD BEFORE
    INSERT ON CTHD
    FOR EACH ROW
DECLARE
    v_tt HOADON.TRANGTHAI%TYPE;
BEGIN
    /**
     * Ki?m tra hóa ??n ?ã khóa hay ch?a
     * TRANGTHAI trong hóa ??n = 'Da thanh toan' --> ?ã khóa.
     */
    SELECT
        TRANGTHAI
    INTO v_tt
    FROM
        HOADON
    WHERE
        MAHD = :new.MAHD;

    IF v_tt = 'Da thanh toan'THEN
        raise_application_error(-20015, 'Hóa ??n ?ã thanh toán không th? thêm CTHD.');
    END IF;
END;

/
create or replace TRIGGER KHOA_CTHD_DEL BEFORE
    DELETE ON CTHD
    FOR EACH ROW
DECLARE
    v_tt HOADON.TRANGTHAI%TYPE;
BEGIN
    /**
     * Ki?m tra hóa ??n ?ã khóa hay ch?a
     * TRANGTHAI trong hóa ??n = 'Da thanh toan' --> ?ã khóa.
     **/
    SELECT
        TRANGTHAI
    INTO v_tt
    FROM
        HOADON
    WHERE
        MAHD = :old.MAHD;

    IF v_tt = 'Da thanh toan' THEN
        raise_application_error(-20015, 'Hóa ??n ?ã thanh toán không th? xóa CTHD');
    END IF;
END;


    SELECT DISTINCT MAHD FROM CTHD WHERE MAHD NOT IN (
    SELECT MAHD FROM HOADON);
alter table HOADON drop constraint  FK_HOADON_KHACHHANG;

alter table HOADON drop constraint  FK_HOADON_NHANVIEN;

DROP TABLE HOADON;

alter table CTHD
   add constraint FK_CTHD_KHACHHANG foreign key (MAKH)
      references KHACHHANG (MAKH);

alter table CTHD
   add constraint FK_CTHD_BAN foreign key (MABAN)
      references BAN (MABAN);

alter table CTHD
   add constraint FK_CTHD_MON foreign key (MAMON)
      references MON (MAMON);

alter table CTHD
   add constraint FK_CTHD_HOADON foreign key (MAHD)
      references HOADON (MAHD);

