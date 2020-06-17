-- truncate table powerlink;

-- 카페 파워링크 null으로 초기화
update cafe 
	set powerlink_cdt = null;
-- sample : 파워링크 신청 데이터 추가
update cafe 
	set powerlink_cdt = 0
	where cafe_cdt = 1 limit 25;

-- cafe테이블에 파워링크여부가 0인 데이터 파워링크테이블에 데이터 넣기
insert into powerlink (cafe_no, pow_cdt) select cafe_no, powerlink_cdt from cafe where powerlink_cdt is not null;

-- 테스트용 sample 데이터
update powerlink 
	set reg_date = "2020-03-20", pow_cdt = 2, post_date = "2020-04-01"
	where pow_no limit 5;

update powerlink 
	set reg_date = "2020-04-10", post_date = "2020-05-01", pow_cdt = 2
	where pow_no in (6, 7, 8, 9, 10);

update powerlink 
	set reg_date = "2020-05-22", post_date = "2020-06-01", pow_cdt = 1
	where pow_no in(11, 12, 13, 14, 15);

update powerlink 
	set reg_date = "2020-06-05", post_date = "2020-07-01", pow_cdt = 0
	where pow_no in(16, 17, 18, 19, 20);

update powerlink 
	set reg_date = "2020-06-14", pow_cdt = 0, post_date = "0001-01-01"
	where pow_no in(21, 22, 23, 24, 25);

update cafe c right join powerlink p on c.cafe_no = p.cafe_no 
	set c.powerlink_cdt = p.pow_cdt;