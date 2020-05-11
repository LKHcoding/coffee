-- Ŀ�ǹ���
DROP SCHEMA IF EXISTS CoffeeMuKKa;

-- Ŀ�ǹ���
CREATE SCHEMA CoffeeMuKKa;

-- ī��
CREATE TABLE CoffeeMuKKa.Cafe (
	cafe_no           INT          NOT NULL COMMENT 'ī���ȣ', -- ī���ȣ
	cafe_name         VARCHAR(100) NOT NULL COMMENT 'ī���̸�', -- ī���̸�
	theme_no          INT          NOT NULL COMMENT '�׸���ȣ', -- �׸���ȣ
	zone_no           INT          NOT NULL COMMENT '������ȣ', -- ������ȣ
	user_no           INT          NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
	address           VARCHAR(255) NOT NULL COMMENT '�ּ�', -- �ּ�
	detail_address    VARCHAR(255) NULL     COMMENT '���ּ�', -- ���ּ�
	tel               VARCHAR(30)  NULL     COMMENT '��ȭ��ȣ', -- ��ȭ��ȣ
	opentime          VARCHAR(255) NOT NULL COMMENT '�����ð�', -- �����ð�
	closed_day        VARCHAR(255) NULL     COMMENT '�޹���', -- �޹���
	sns               VARCHAR(255) NULL     COMMENT 'SNS����', -- SNS����
	table_number      INTEGER      NULL     COMMENT '���̺��', -- ���̺��
	socket_number     INTEGER      NULL     COMMENT '�ܼ�Ʈ��', -- �ܼ�Ʈ��
	toilet_cdt        TINYINT      NULL     COMMENT 'ȭ��� ����', -- ȭ��� ����
	mkdessert_cdt     TINYINT      NULL     COMMENT '����Ʈ ���� ����', -- ����Ʈ ���� ����
	terras_cdt        TINYINT      NULL     COMMENT '�׶� ����', -- �׶� ����
	reservation_cdt   TINYINT      NULL     COMMENT '����� ����', -- ����� ����
	wondoo_buy_cdt    TINYINT      NULL     COMMENT '���α��� ���� ����', -- ���α��� ���� ����
	book_cdt          TINYINT      NULL     COMMENT '������������', -- ������������
	beer_cdt          TINYINT      NULL     COMMENT '�� �Ǹ� ����', -- �� �Ǹ� ����
	goods_cdt         TINYINT      NULL     COMMENT '���� �Ǹ� ����', -- ���� �Ǹ� ����
	wifi_cdt          TINYINT      NULL     COMMENT '�������� ��ġ ����', -- �������� ��ġ ����
	puppy_cdt         TINYINT      NULL     COMMENT '�ݷ��� ���� ���� ����', -- �ݷ��� ���� ���� ����
	reserveok_cdt     TINYINT      NULL     COMMENT '���� ���� ����', -- ���� ���� ����
	parking_cdt       TINYINT      NULL     COMMENT '���� ���� ����', -- ���� ���� ����
	nokids_cdt        TINYINT      NULL     COMMENT '��Ű���� ����', -- ��Ű���� ����
	registration_date TIMESTAMP    NOT NULL COMMENT '�������', -- �������
	update_date       TIMESTAMP    NULL     COMMENT '��������', -- ��������
	view_number       INT          NOT NULL COMMENT '��ȸ��', -- ��ȸ��
	content           TEXT         NULL     COMMENT '����', -- ����
	oneline           VARCHAR(255) NOT NULL COMMENT '���ټҰ�', -- ���ټҰ�
	vote_number       INT          NOT NULL COMMENT '��õ��', -- ��õ��
	star_point_number DOUBLE       NOT NULL COMMENT '������', -- ������
	powerlink_cdt     TINYINT      NOT NULL COMMENT '�Ŀ���ũ����', -- �Ŀ���ũ����
	cafe_cdt          TINYINT      NOT NULL COMMENT 'ī�����' -- ī�����
)
COMMENT 'ī��';

-- ī��
ALTER TABLE CoffeeMuKKa.Cafe
	ADD CONSTRAINT PK_Cafe -- ī�� �⺻Ű
		PRIMARY KEY (
			cafe_no -- ī���ȣ
		);

ALTER TABLE CoffeeMuKKa.Cafe
	MODIFY COLUMN cafe_no INT NOT NULL AUTO_INCREMENT COMMENT 'ī���ȣ';

-- �Խ���
CREATE TABLE CoffeeMuKKa.Board (
	board_no               INT          NOT NULL COMMENT '�Խñ۹�ȣ', -- �Խñ۹�ȣ
	board_no2              INT          NOT NULL COMMENT '�Խ��ǹ�ȣ', -- �Խ��ǹ�ȣ
	key_sort_no            INT          NOT NULL COMMENT 'Ű����з���ȣ', -- Ű����з���ȣ
	user_no                INT          NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
	zone_no                INT          NULL     COMMENT '������ȣ', -- ������ȣ
	theme_no               INT          NULL     COMMENT '�׸���ȣ', -- �׸���ȣ
	writing_lock_condition TINYINT      NULL     COMMENT '����ݿ���', -- ����ݿ���
	writing_title          VARCHAR(255) NOT NULL COMMENT '������', -- ������
	registration_date      TIMESTAMP    NOT NULL COMMENT '�ۼ���', -- �ۼ���
	update_date            TIMESTAMP    NOT NULL COMMENT '������', -- ������
	view_number            INTEGER      NOT NULL COMMENT '��ȸ��', -- ��ȸ��
	vote_number            INTEGER      NOT NULL COMMENT '��õ��', -- ��õ��
	writing_content        LONGTEXT     NOT NULL COMMENT '�۳���' -- �۳���
)
COMMENT '�Խ���';

-- �Խ���
ALTER TABLE CoffeeMuKKa.Board
	ADD CONSTRAINT PK_Board -- �Խ��� �⺻Ű
		PRIMARY KEY (
			board_no -- �Խñ۹�ȣ
		);

ALTER TABLE CoffeeMuKKa.Board
	MODIFY COLUMN board_no INT NOT NULL AUTO_INCREMENT COMMENT '�Խñ۹�ȣ';

-- ��ǰ����
CREATE TABLE CoffeeMuKKa.Product (
	product_no      INT          NOT NULL COMMENT '��ǰ�ڵ�', -- ��ǰ�ڵ�
	product_sort    INT          NOT NULL COMMENT '��ǰ�з�', -- ��ǰ�з�
	product_name    VARCHAR(50)  NOT NULL COMMENT '��ǰ��', -- ��ǰ��
	product_price   INTEGER      NOT NULL COMMENT '��ǰ����', -- ��ǰ����
	supplier        INT          NOT NULL COMMENT '���޾�ü', -- ���޾�ü
	product_content LONGTEXT     NOT NULL COMMENT '��ǰ����', -- ��ǰ����
	product_image   VARCHAR(255) NOT NULL COMMENT '��ǰ�̹���', -- ��ǰ�̹���
	valid           TIMESTAMP    NOT NULL COMMENT '��ǰ��ȿ�Ⱓ', -- ��ǰ��ȿ�Ⱓ
	order_count     INTEGER      NOT NULL COMMENT '�Ǹ�Ƚ��' -- �Ǹ�Ƚ��
)
COMMENT '��ǰ����';

-- ��ǰ����
ALTER TABLE CoffeeMuKKa.Product
	ADD CONSTRAINT PK_Product -- ��ǰ���� �⺻Ű
		PRIMARY KEY (
			product_no -- ��ǰ�ڵ�
		);

ALTER TABLE CoffeeMuKKa.Product
	MODIFY COLUMN product_no INT NOT NULL AUTO_INCREMENT COMMENT '��ǰ�ڵ�';

-- ��������
CREATE TABLE CoffeeMuKKa.BuyCoupon (
	buy_no      INT       NOT NULL COMMENT '�����ڵ�', -- �����ڵ�
	buy_product INT       NOT NULL COMMENT '���Ż�ǰ', -- ���Ż�ǰ
	user_no     INT       NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
	buy_date    TIMESTAMP NOT NULL COMMENT '��������', -- ��������
	validity    TIMESTAMP NOT NULL COMMENT '��ȿ����', -- ��ȿ����
	use_cdt     TINYINT   NOT NULL COMMENT '��뿩��' -- ��뿩��
)
COMMENT '��������';

-- ��������
ALTER TABLE CoffeeMuKKa.BuyCoupon
	ADD CONSTRAINT PK_BuyCoupon -- �������� �⺻Ű
		PRIMARY KEY (
			buy_no -- �����ڵ�
		);

ALTER TABLE CoffeeMuKKa.BuyCoupon
	MODIFY COLUMN buy_no INT NOT NULL AUTO_INCREMENT COMMENT '�����ڵ�';

-- ȸ����Ȳ
CREATE TABLE CoffeeMuKKa.Users (
	user_no              INT          NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
	user_id              VARCHAR(30)  NOT NULL COMMENT 'ȸ�����̵�', -- ȸ�����̵�
	password             VARCHAR(30)  NOT NULL COMMENT '��й�ȣ', -- ��й�ȣ
	name                 VARCHAR(50)  NOT NULL COMMENT '�̸�', -- �̸�
	nick                 VARCHAR(50)  NOT NULL COMMENT '�г���', -- �г���
	gender               TINYINT      NULL     COMMENT '����', -- ����
	birthday             TIMESTAMP    NOT NULL COMMENT '�������', -- �������
	user_join_date       TIMESTAMP    NOT NULL COMMENT 'ȸ����������', -- ȸ����������
	user_leave_condition TINYINT      NULL     COMMENT 'ȸ�� Ż������', -- ȸ�� Ż������
	point                INTEGER      NULL     COMMENT '����Ʈ', -- ����Ʈ
	tel                  VARCHAR(30)  NOT NULL COMMENT '��ȭ��ȣ', -- ��ȭ��ȣ
	address              VARCHAR(255) NOT NULL COMMENT '�ּ�', -- �ּ�
	detail_address       VARCHAR(255) NULL     COMMENT '���ּ�', -- ���ּ�
	email                VARCHAR(255) NOT NULL COMMENT '�̸���', -- �̸���
	user_type            INT          NOT NULL COMMENT 'ȸ��Ÿ��', -- ȸ��Ÿ��
	user_grade           INT          NOT NULL COMMENT 'ȸ�����' -- ȸ�����
)
COMMENT 'ȸ����Ȳ';

-- ȸ����Ȳ
ALTER TABLE CoffeeMuKKa.Users
	ADD CONSTRAINT PK_Users -- ȸ����Ȳ �⺻Ű
		PRIMARY KEY (
			user_no -- ȸ����ȣ
		);

-- ��������Ȳ
CREATE TABLE CoffeeMuKKa.Admin (
	ano_no           INT          NOT NULL COMMENT '�����ڹ�ȣ', -- �����ڹ�ȣ
	ano_id           VARCHAR(30)  NOT NULL COMMENT '�����ھ��̵�', -- �����ھ��̵�
	ano_password     VARCHAR(30)  NOT NULL COMMENT '�����ں�й�ȣ', -- �����ں�й�ȣ
	ano_image        VARCHAR(255) NOT NULL COMMENT '�������̹���', -- �������̹���
	ano_authority_no INT          NOT NULL COMMENT '�����ڱ��ѹ�ȣ' -- �����ڱ��ѹ�ȣ
)
COMMENT '��������Ȳ';

-- ��������Ȳ
ALTER TABLE CoffeeMuKKa.Admin
	ADD CONSTRAINT PK_Admin -- ��������Ȳ �⺻Ű
		PRIMARY KEY (
			ano_no -- �����ڹ�ȣ
		);

ALTER TABLE CoffeeMuKKa.Admin
	MODIFY COLUMN ano_no INT NOT NULL AUTO_INCREMENT COMMENT '�����ڹ�ȣ';

-- ��ǰ�з�
CREATE TABLE CoffeeMuKKa.Category (
	sort_no   INT         NOT NULL COMMENT '�з���ȣ', -- �з���ȣ
	sort_name VARCHAR(50) NOT NULL COMMENT '�з��̸�' -- �з��̸�
)
COMMENT '��ǰ�з�';

-- ��ǰ�з�
ALTER TABLE CoffeeMuKKa.Category
	ADD CONSTRAINT PK_Category -- ��ǰ�з� �⺻Ű
		PRIMARY KEY (
			sort_no -- �з���ȣ
		);

ALTER TABLE CoffeeMuKKa.Category
	MODIFY COLUMN sort_no INT NOT NULL AUTO_INCREMENT COMMENT '�з���ȣ';

-- ���޾�ü
CREATE TABLE CoffeeMuKKa.Supplier (
	supplier_no    INT          NOT NULL COMMENT '���޾�ü��ȣ', -- ���޾�ü��ȣ
	supplier_name  VARCHAR(50)  NOT NULL COMMENT '���޾�ü�̸�', -- ���޾�ü�̸�
	supplier_image VARCHAR(255) NOT NULL COMMENT '���޾�ü�̹���' -- ���޾�ü�̹���
)
COMMENT '���޾�ü';

-- ���޾�ü
ALTER TABLE CoffeeMuKKa.Supplier
	ADD CONSTRAINT PK_Supplier -- ���޾�ü �⺻Ű
		PRIMARY KEY (
			supplier_no -- ���޾�ü��ȣ
		);

ALTER TABLE CoffeeMuKKa.Supplier
	MODIFY COLUMN supplier_no INT NOT NULL AUTO_INCREMENT COMMENT '���޾�ü��ȣ';

-- �׸��з�
CREATE TABLE CoffeeMuKKa.Theme (
	theme_no   INT         NOT NULL COMMENT '�׸���ȣ', -- �׸���ȣ
	theme_name VARCHAR(50) NOT NULL COMMENT '�׸��̸�' -- �׸��̸�
)
COMMENT '�׸��з�';

-- �׸��з�
ALTER TABLE CoffeeMuKKa.Theme
	ADD CONSTRAINT PK_Theme -- �׸��з� �⺻Ű
		PRIMARY KEY (
			theme_no -- �׸���ȣ
		);

ALTER TABLE CoffeeMuKKa.Theme
	MODIFY COLUMN theme_no INT NOT NULL AUTO_INCREMENT COMMENT '�׸���ȣ';

-- �����з�
CREATE TABLE CoffeeMuKKa.Zone (
	zone_no   INT         NOT NULL COMMENT '������ȣ', -- ������ȣ
	zone_name VARCHAR(50) NOT NULL COMMENT '�����̸�' -- �����̸�
)
COMMENT '�����з�';

-- �����з�
ALTER TABLE CoffeeMuKKa.Zone
	ADD CONSTRAINT PK_Zone -- �����з� �⺻Ű
		PRIMARY KEY (
			zone_no -- ������ȣ
		);

ALTER TABLE CoffeeMuKKa.Zone
	MODIFY COLUMN zone_no INT NOT NULL AUTO_INCREMENT COMMENT '������ȣ';

-- FAQ
CREATE TABLE CoffeeMuKKa.FAQ (
	faq_no            INT          NOT NULL COMMENT 'FAQ��ȣ', -- FAQ��ȣ
	writing_title     VARCHAR(255) NOT NULL COMMENT '������', -- ������
	registration_date TIMESTAMP    NOT NULL COMMENT '�ۼ���', -- �ۼ���
	update_date       TIMESTAMP    NOT NULL COMMENT '������', -- ������
	view_number       INTEGER      NOT NULL COMMENT '��ȸ��', -- ��ȸ��
	questian          LONGTEXT     NOT NULL COMMENT '����', -- ����
	answer            LONGTEXT     NOT NULL COMMENT '�亯', -- �亯
	faq_sort_no       INT          NOT NULL COMMENT 'FAQ�з���ȣ' -- FAQ�з���ȣ
)
COMMENT 'FAQ';

-- FAQ
ALTER TABLE CoffeeMuKKa.FAQ
	ADD CONSTRAINT PK_FAQ -- FAQ �⺻Ű
		PRIMARY KEY (
			faq_no -- FAQ��ȣ
		);

ALTER TABLE CoffeeMuKKa.FAQ
	MODIFY COLUMN faq_no INT NOT NULL AUTO_INCREMENT COMMENT 'FAQ��ȣ';

-- FAQ�з�
CREATE TABLE CoffeeMuKKa.FAQCate (
	sort_no   INT         NOT NULL COMMENT '�з���ȣ', -- �з���ȣ
	sort_name VARCHAR(50) NOT NULL COMMENT '�з��̸�' -- �з��̸�
)
COMMENT 'FAQ�з�';

-- FAQ�з�
ALTER TABLE CoffeeMuKKa.FAQCate
	ADD CONSTRAINT PK_FAQCate -- FAQ�з� �⺻Ű
		PRIMARY KEY (
			sort_no -- �з���ȣ
		);

ALTER TABLE CoffeeMuKKa.FAQCate
	MODIFY COLUMN sort_no INT NOT NULL AUTO_INCREMENT COMMENT '�з���ȣ';

-- ��� ���̺�
CREATE TABLE CoffeeMuKKa.Reply (
	comment_no        INT         NOT NULL COMMENT '��۹�ȣ', -- ��۹�ȣ
	board_no          INT         NOT NULL COMMENT '�Խñ۹�ȣ', -- �Խñ۹�ȣ
	user_no           INT         NOT NULL COMMENT 'ȸ����ȣ', -- ȸ����ȣ
	comment_content   TEXT        NOT NULL COMMENT '��۳���', -- ��۳���
	writer            VARCHAR(50) NOT NULL COMMENT '�ۼ���', -- �ۼ���
	registration_date TIMESTAMP   NOT NULL COMMENT '�ۼ���', -- �ۼ���
	update_date       TIMESTAMP   NOT NULL COMMENT '������' -- ������
)
COMMENT '��� ���̺�';

-- ��� ���̺�
ALTER TABLE CoffeeMuKKa.Reply
	ADD CONSTRAINT PK_Reply -- ��� ���̺� �⺻Ű
		PRIMARY KEY (
			comment_no -- ��۹�ȣ
		);

ALTER TABLE CoffeeMuKKa.Reply
	MODIFY COLUMN comment_no INT NOT NULL AUTO_INCREMENT COMMENT '��۹�ȣ';

-- �Խ��� �з�
CREATE TABLE CoffeeMuKKa.BoardKinds (
	board_no   INT         NOT NULL COMMENT '�Խ��ǹ�ȣ', -- �Խ��ǹ�ȣ
	board_name VARCHAR(50) NOT NULL COMMENT '�Խ����̸�' -- �Խ����̸�
)
COMMENT '�Խ��� �з�';

-- �Խ��� �з�
ALTER TABLE CoffeeMuKKa.BoardKinds
	ADD CONSTRAINT PK_BoardKinds -- �Խ��� �з� �⺻Ű
		PRIMARY KEY (
			board_no -- �Խ��ǹ�ȣ
		);

ALTER TABLE CoffeeMuKKa.BoardKinds
	MODIFY COLUMN board_no INT NOT NULL AUTO_INCREMENT COMMENT '�Խ��ǹ�ȣ';

-- �޴� �з�
CREATE TABLE CoffeeMuKKa.MenuKinds (
	sort_no   INT         NOT NULL COMMENT '�з���ȣ', -- �з���ȣ
	sort_name VARCHAR(50) NOT NULL COMMENT '�з��̸�' -- �з��̸�
)
COMMENT '�޴� �з�';

-- �޴� �з�
ALTER TABLE CoffeeMuKKa.MenuKinds
	ADD CONSTRAINT PK_MenuKinds -- �޴� �з� �⺻Ű
		PRIMARY KEY (
			sort_no -- �з���ȣ
		);

ALTER TABLE CoffeeMuKKa.MenuKinds
	MODIFY COLUMN sort_no INT NOT NULL AUTO_INCREMENT COMMENT '�з���ȣ';

-- �޴�
CREATE TABLE CoffeeMuKKa.Menu (
	menu_no         INT         NOT NULL COMMENT '�޴���ȣ', -- �޴���ȣ
	cafe_no         INT         NOT NULL COMMENT 'ī���ȣ', -- ī���ȣ
	menukinds       INT         NOT NULL COMMENT '�޴��з�', -- �޴��з�
	menu_name       VARCHAR(50) NOT NULL COMMENT '�޴��̸�', -- �޴��̸�
	h_i             TINYINT     NOT NULL COMMENT 'Hot&Iced ���� ����', -- Hot&Iced ���� ����
	price           INTEGER     NOT NULL COMMENT '����', -- ����
	iced_menu_price INTEGER     NULL     COMMENT '���̽��޴�����' -- ���̽��޴�����
)
COMMENT '�޴�';

-- �޴�
ALTER TABLE CoffeeMuKKa.Menu
	ADD CONSTRAINT PK_Menu -- �޴� �⺻Ű
		PRIMARY KEY (
			menu_no -- �޴���ȣ
		);

ALTER TABLE CoffeeMuKKa.Menu
	MODIFY COLUMN menu_no INT NOT NULL AUTO_INCREMENT COMMENT '�޴���ȣ';

-- ����
CREATE TABLE CoffeeMuKKa.Starpoint (
	star_point_no      INT     NOT NULL COMMENT '������ȣ', -- ������ȣ
	cafe_no            INT     NOT NULL COMMENT 'ī���ȣ', -- ī���ȣ
	star_point         INTEGER NOT NULL COMMENT '����', -- ����
	star_point_comment TEXT    NULL     COMMENT '�������' -- �������
)
COMMENT '����';

-- ����
ALTER TABLE CoffeeMuKKa.Starpoint
	ADD CONSTRAINT PK_Starpoint -- ���� �⺻Ű
		PRIMARY KEY (
			star_point_no -- ������ȣ
		);

ALTER TABLE CoffeeMuKKa.Starpoint
	MODIFY COLUMN star_point_no INT NOT NULL AUTO_INCREMENT COMMENT '������ȣ';

-- ȸ��Ÿ��
CREATE TABLE CoffeeMuKKa.Type (
	user_type      INT         NOT NULL COMMENT 'ȸ��Ÿ��', -- ȸ��Ÿ��
	user_type_name VARCHAR(50) NOT NULL COMMENT 'ȸ��Ÿ���̸�' -- ȸ��Ÿ���̸�
)
COMMENT 'ȸ��Ÿ��';

-- ȸ��Ÿ��
ALTER TABLE CoffeeMuKKa.Type
	ADD CONSTRAINT PK_Type -- ȸ��Ÿ�� �⺻Ű
		PRIMARY KEY (
			user_type -- ȸ��Ÿ��
		);

ALTER TABLE CoffeeMuKKa.Type
	MODIFY COLUMN user_type INT NOT NULL AUTO_INCREMENT COMMENT 'ȸ��Ÿ��';

-- ȸ�����
CREATE TABLE CoffeeMuKKa.Grade (
	user_grade       INT          NOT NULL COMMENT 'ȸ�����', -- ȸ�����
	user_grade_name  VARCHAR(50)  NOT NULL COMMENT 'ȸ������̸�', -- ȸ������̸�
	user_grade_image VARCHAR(255) NOT NULL COMMENT 'ȸ������̹���' -- ȸ������̹���
)
COMMENT 'ȸ�����';

-- ȸ�����
ALTER TABLE CoffeeMuKKa.Grade
	ADD CONSTRAINT PK_Grade -- ȸ����� �⺻Ű
		PRIMARY KEY (
			user_grade -- ȸ�����
		);

ALTER TABLE CoffeeMuKKa.Grade
	MODIFY COLUMN user_grade INT NOT NULL AUTO_INCREMENT COMMENT 'ȸ�����';

-- �����ڱ���
CREATE TABLE CoffeeMuKKa.Authority (
	ano_authority_no   INT         NOT NULL COMMENT '�����ڱ��ѹ�ȣ', -- �����ڱ��ѹ�ȣ
	ano_authority_name VARCHAR(50) NOT NULL COMMENT '�����ڱ����̸�' -- �����ڱ����̸�
)
COMMENT '�����ڱ���';

-- �����ڱ���
ALTER TABLE CoffeeMuKKa.Authority
	ADD CONSTRAINT PK_Authority -- �����ڱ��� �⺻Ű
		PRIMARY KEY (
			ano_authority_no -- �����ڱ��ѹ�ȣ
		);

ALTER TABLE CoffeeMuKKa.Authority
	MODIFY COLUMN ano_authority_no INT NOT NULL AUTO_INCREMENT COMMENT '�����ڱ��ѹ�ȣ';

-- Ű����з�
CREATE TABLE CoffeeMuKKa.Keywordcate (
	key_sort_no INT         NOT NULL COMMENT 'Ű����з���ȣ', -- Ű����з���ȣ
	board_no    INT         NOT NULL COMMENT '�Խ��ǹ�ȣ', -- �Խ��ǹ�ȣ
	key_name    VARCHAR(50) NOT NULL COMMENT 'Ű�����̸�' -- Ű�����̸�
)
COMMENT 'Ű����з�';

-- Ű����з�
ALTER TABLE CoffeeMuKKa.Keywordcate
	ADD CONSTRAINT PK_Keywordcate -- Ű����з� �⺻Ű
		PRIMARY KEY (
			key_sort_no -- Ű����з���ȣ
		);

ALTER TABLE CoffeeMuKKa.Keywordcate
	MODIFY COLUMN key_sort_no INT NOT NULL AUTO_INCREMENT COMMENT 'Ű����з���ȣ';

-- ���ø���Ʈ
CREATE TABLE CoffeeMuKKa.Wishlist (
	wish_no INT NOT NULL COMMENT '���ù�ȣ', -- ���ù�ȣ
	cafe_no INT NOT NULL COMMENT 'ī���ȣ', -- ī���ȣ
	user_no INT NOT NULL COMMENT 'ȸ����ȣ' -- ȸ����ȣ
)
COMMENT '���ø���Ʈ';

-- ���ø���Ʈ
ALTER TABLE CoffeeMuKKa.Wishlist
	ADD CONSTRAINT PK_Wishlist -- ���ø���Ʈ �⺻Ű
		PRIMARY KEY (
			wish_no -- ���ù�ȣ
		);

ALTER TABLE CoffeeMuKKa.Wishlist
	MODIFY COLUMN wish_no INT NOT NULL AUTO_INCREMENT COMMENT '���ù�ȣ';

-- �̹���
CREATE TABLE CoffeeMuKKa.Image (
	image_no   INT          NOT NULL COMMENT '�̹�����ȣ', -- �̹�����ȣ
	image_name VARCHAR(255) NOT NULL COMMENT '�̹����̸�', -- �̹����̸�
	cafe_no    INT          NULL     COMMENT 'ī���ȣ', -- ī���ȣ
	board_no   INT          NULL     COMMENT '�Խñ۹�ȣ' -- �Խñ۹�ȣ
)
COMMENT '�̹���';

-- �̹���
ALTER TABLE CoffeeMuKKa.Image
	ADD CONSTRAINT PK_Image -- �̹��� �⺻Ű
		PRIMARY KEY (
			image_no -- �̹�����ȣ
		);

-- ī��
ALTER TABLE CoffeeMuKKa.Cafe
	ADD CONSTRAINT FK_Theme_TO_Cafe -- �׸��з� -> ī��
		FOREIGN KEY (
			theme_no -- �׸���ȣ
		)
		REFERENCES CoffeeMuKKa.Theme ( -- �׸��з�
			theme_no -- �׸���ȣ
		);

-- ī��
ALTER TABLE CoffeeMuKKa.Cafe
	ADD CONSTRAINT FK_Zone_TO_Cafe -- �����з� -> ī��
		FOREIGN KEY (
			zone_no -- ������ȣ
		)
		REFERENCES CoffeeMuKKa.Zone ( -- �����з�
			zone_no -- ������ȣ
		);

-- ī��
ALTER TABLE CoffeeMuKKa.Cafe
	ADD CONSTRAINT FK_Users_TO_Cafe -- ȸ����Ȳ -> ī��
		FOREIGN KEY (
			user_no -- ȸ����ȣ
		)
		REFERENCES CoffeeMuKKa.Users ( -- ȸ����Ȳ
			user_no -- ȸ����ȣ
		);

-- �Խ���
ALTER TABLE CoffeeMuKKa.Board
	ADD CONSTRAINT FK_BoardKinds_TO_Board -- �Խ��� �з� -> �Խ���
		FOREIGN KEY (
			board_no2 -- �Խ��ǹ�ȣ
		)
		REFERENCES CoffeeMuKKa.BoardKinds ( -- �Խ��� �з�
			board_no -- �Խ��ǹ�ȣ
		);

-- �Խ���
ALTER TABLE CoffeeMuKKa.Board
	ADD CONSTRAINT FK_Zone_TO_Board -- �����з� -> �Խ���
		FOREIGN KEY (
			zone_no -- ������ȣ
		)
		REFERENCES CoffeeMuKKa.Zone ( -- �����з�
			zone_no -- ������ȣ
		);

-- �Խ���
ALTER TABLE CoffeeMuKKa.Board
	ADD CONSTRAINT FK_Theme_TO_Board -- �׸��з� -> �Խ���
		FOREIGN KEY (
			theme_no -- �׸���ȣ
		)
		REFERENCES CoffeeMuKKa.Theme ( -- �׸��з�
			theme_no -- �׸���ȣ
		);

-- �Խ���
ALTER TABLE CoffeeMuKKa.Board
	ADD CONSTRAINT FK_Users_TO_Board -- ȸ����Ȳ -> �Խ���
		FOREIGN KEY (
			user_no -- ȸ����ȣ
		)
		REFERENCES CoffeeMuKKa.Users ( -- ȸ����Ȳ
			user_no -- ȸ����ȣ
		);

-- �Խ���
ALTER TABLE CoffeeMuKKa.Board
	ADD CONSTRAINT FK_Keywordcate_TO_Board -- Ű����з� -> �Խ���
		FOREIGN KEY (
			key_sort_no -- Ű����з���ȣ
		)
		REFERENCES CoffeeMuKKa.Keywordcate ( -- Ű����з�
			key_sort_no -- Ű����з���ȣ
		);

-- ��ǰ����
ALTER TABLE CoffeeMuKKa.Product
	ADD CONSTRAINT FK_Category_TO_Product -- ��ǰ�з� -> ��ǰ����
		FOREIGN KEY (
			product_sort -- ��ǰ�з�
		)
		REFERENCES CoffeeMuKKa.Category ( -- ��ǰ�з�
			sort_no -- �з���ȣ
		);

-- ��ǰ����
ALTER TABLE CoffeeMuKKa.Product
	ADD CONSTRAINT FK_Supplier_TO_Product -- ���޾�ü -> ��ǰ����
		FOREIGN KEY (
			supplier -- ���޾�ü
		)
		REFERENCES CoffeeMuKKa.Supplier ( -- ���޾�ü
			supplier_no -- ���޾�ü��ȣ
		);

-- ��������
ALTER TABLE CoffeeMuKKa.BuyCoupon
	ADD CONSTRAINT FK_Product_TO_BuyCoupon -- ��ǰ���� -> ��������
		FOREIGN KEY (
			buy_product -- ���Ż�ǰ
		)
		REFERENCES CoffeeMuKKa.Product ( -- ��ǰ����
			product_no -- ��ǰ�ڵ�
		);

-- ��������
ALTER TABLE CoffeeMuKKa.BuyCoupon
	ADD CONSTRAINT FK_Users_TO_BuyCoupon -- ȸ����Ȳ -> ��������
		FOREIGN KEY (
			user_no -- ȸ����ȣ
		)
		REFERENCES CoffeeMuKKa.Users ( -- ȸ����Ȳ
			user_no -- ȸ����ȣ
		);

-- ȸ����Ȳ
ALTER TABLE CoffeeMuKKa.Users
	ADD CONSTRAINT FK_Type_TO_Users -- ȸ��Ÿ�� -> ȸ����Ȳ
		FOREIGN KEY (
			user_type -- ȸ��Ÿ��
		)
		REFERENCES CoffeeMuKKa.Type ( -- ȸ��Ÿ��
			user_type -- ȸ��Ÿ��
		);

-- ȸ����Ȳ
ALTER TABLE CoffeeMuKKa.Users
	ADD CONSTRAINT FK_Grade_TO_Users -- ȸ����� -> ȸ����Ȳ
		FOREIGN KEY (
			user_grade -- ȸ�����
		)
		REFERENCES CoffeeMuKKa.Grade ( -- ȸ�����
			user_grade -- ȸ�����
		);

-- ��������Ȳ
ALTER TABLE CoffeeMuKKa.Admin
	ADD CONSTRAINT FK_Authority_TO_Admin -- �����ڱ��� -> ��������Ȳ
		FOREIGN KEY (
			ano_authority_no -- �����ڱ��ѹ�ȣ
		)
		REFERENCES CoffeeMuKKa.Authority ( -- �����ڱ���
			ano_authority_no -- �����ڱ��ѹ�ȣ
		);

-- FAQ
ALTER TABLE CoffeeMuKKa.FAQ
	ADD CONSTRAINT FK_FAQCate_TO_FAQ -- FAQ�з� -> FAQ
		FOREIGN KEY (
			faq_sort_no -- FAQ�з���ȣ
		)
		REFERENCES CoffeeMuKKa.FAQCate ( -- FAQ�з�
			sort_no -- �з���ȣ
		);

-- ��� ���̺�
ALTER TABLE CoffeeMuKKa.Reply
	ADD CONSTRAINT FK_Board_TO_Reply -- �Խ��� -> ��� ���̺�
		FOREIGN KEY (
			board_no -- �Խñ۹�ȣ
		)
		REFERENCES CoffeeMuKKa.Board ( -- �Խ���
			board_no -- �Խñ۹�ȣ
		);

-- ��� ���̺�
ALTER TABLE CoffeeMuKKa.Reply
	ADD CONSTRAINT FK_Users_TO_Reply -- ȸ����Ȳ -> ��� ���̺�
		FOREIGN KEY (
			user_no -- ȸ����ȣ
		)
		REFERENCES CoffeeMuKKa.Users ( -- ȸ����Ȳ
			user_no -- ȸ����ȣ
		);

-- �޴�
ALTER TABLE CoffeeMuKKa.Menu
	ADD CONSTRAINT FK_MenuKinds_TO_Menu -- �޴� �з� -> �޴�
		FOREIGN KEY (
			menukinds -- �޴��з�
		)
		REFERENCES CoffeeMuKKa.MenuKinds ( -- �޴� �з�
			sort_no -- �з���ȣ
		);

-- �޴�
ALTER TABLE CoffeeMuKKa.Menu
	ADD CONSTRAINT FK_Cafe_TO_Menu -- ī�� -> �޴�
		FOREIGN KEY (
			cafe_no -- ī���ȣ
		)
		REFERENCES CoffeeMuKKa.Cafe ( -- ī��
			cafe_no -- ī���ȣ
		);

-- ����
ALTER TABLE CoffeeMuKKa.Starpoint
	ADD CONSTRAINT FK_Cafe_TO_Starpoint -- ī�� -> ����
		FOREIGN KEY (
			cafe_no -- ī���ȣ
		)
		REFERENCES CoffeeMuKKa.Cafe ( -- ī��
			cafe_no -- ī���ȣ
		);

-- Ű����з�
ALTER TABLE CoffeeMuKKa.Keywordcate
	ADD CONSTRAINT FK_BoardKinds_TO_Keywordcate -- �Խ��� �з� -> Ű����з�
		FOREIGN KEY (
			board_no -- �Խ��ǹ�ȣ
		)
		REFERENCES CoffeeMuKKa.BoardKinds ( -- �Խ��� �з�
			board_no -- �Խ��ǹ�ȣ
		);

-- ���ø���Ʈ
ALTER TABLE CoffeeMuKKa.Wishlist
	ADD CONSTRAINT FK_Users_TO_Wishlist -- ȸ����Ȳ -> ���ø���Ʈ
		FOREIGN KEY (
			user_no -- ȸ����ȣ
		)
		REFERENCES CoffeeMuKKa.Users ( -- ȸ����Ȳ
			user_no -- ȸ����ȣ
		);

-- ���ø���Ʈ
ALTER TABLE CoffeeMuKKa.Wishlist
	ADD CONSTRAINT FK_Cafe_TO_Wishlist -- ī�� -> ���ø���Ʈ
		FOREIGN KEY (
			cafe_no -- ī���ȣ
		)
		REFERENCES CoffeeMuKKa.Cafe ( -- ī��
			cafe_no -- ī���ȣ
		);

-- �̹���
ALTER TABLE CoffeeMuKKa.Image
	ADD CONSTRAINT FK_Board_TO_Image -- �Խ��� -> �̹���
		FOREIGN KEY (
			board_no -- �Խñ۹�ȣ
		)
		REFERENCES CoffeeMuKKa.Board ( -- �Խ���
			board_no -- �Խñ۹�ȣ
		);

-- �̹���
ALTER TABLE CoffeeMuKKa.Image
	ADD CONSTRAINT FK_Cafe_TO_Image -- ī�� -> �̹���
		FOREIGN KEY (
			cafe_no -- ī���ȣ
		)
		REFERENCES CoffeeMuKKa.Cafe ( -- ī��
			cafe_no -- ī���ȣ
		);