select user(), database();

show tables;

select * from cafe; -- 카페
select * from board; -- 게시판
select * from users; -- 회원 현황
select * from admin; -- 관리자
select * from theme; -- 테마 분류
select * from zone; -- 위치 분류
select * from reply; -- 댓글 테이블
select * from boardkinds; -- 게시판 분류
select * from menukinds; -- 메뉴 분류
select * from menu; -- 메뉴
select * from starpoint; -- 별점
select * from type; -- 회원 타입
select * from grade; -- 회원 등급
select * from authority; -- 관리자 권한
select * from wishlist; -- 위시리스트
select * from image; -- 이미지
select * from vote; -- 추천리스트

-- ----------------------------------

		select b.board_no, b.board_no2, b.writing_title, b.writing_content, b.view_number, z.zone_no, z.zone_name, t.theme_no, t.theme_name, u.user_id, u.name, u.nick from board b
		left join zone z on b.zone_no = z.zone_no
		left join theme t on b.theme_no = t.theme_no
		left join users u on b.user_no = u.user_no;
select count(b.board_no)from board b left join image i on b.board_no = i.board_no 
				 left join users u on b.user_no = u.user_no 
				 left join grade g on u.user_grade = g.user_grade 
				 left join cafe c on b.cafe_no = c.cafe_no 
				 left join zone z on c.zone_no = z.zone_no 
				 left join theme t on c.theme_no = t.theme_no
				 where board_no2 = 2;
select count(board_no) from board where board_no2 = #{cBoardNo}				 
select count(board_no) from board where board_no2 = 1;

select count(b.board_no) 
				 from board b 
				 left join users u on b.user_no = u.user_no 
				 left join grade g on u.user_grade = g.user_grade 
				 left join cafe c on b.cafe_no = c.cafe_no 
				 left join zone z on c.zone_no = z.zone_no 
				 left join theme t on c.theme_no = t.theme_no 
	             where board_no2 = 2 ;
select b.board_no, b.board_no2, b.writing_title, b.writing_content, b.view_number, z.zone_no, z.zone_name, t.theme_no, t.theme_name, u.user_id, u.name, u.nick from board b
		left join zone z on b.zone_no = z.zone_no
		left join theme t on b.theme_no = t.theme_no
		left join users u on b.user_no = u.user_no
		where b.writing_title = '프리지아' and b.address = '대구 서구 서대구로7길 12' and b.board_no != 1;
	
select b.board_no, i.board_no ,i.image_name from image i left join board b on i.board_no = b.board_no where where b.writing_title = '프리지아' and b.address = '대구 서구 서대구로7길 12' and i.board_no != 1; limit 1;
	
select b.board_no, b.writing_title, b.registration_date, b.update_date, b.view_number, b.vote_number, b.writing_content, b.address, z.zone_no, z.zone_name, t.theme_no, t.theme_name, u.user_no, u.user_id, u.password, u.nick, g.user_grade, g.user_grade_image, g.user_grade_name, i.image_name from board b
		left join zone z on b.zone_no = z.zone_no
		left join theme t on b.theme_no = t.theme_no
		left join users u on b.user_no = u.user_no 
		left join grade g on u.user_grade = g.user_grade
		left join image i on b.board_no = i.board_no
		where b.writing_title = '프리지아' and b.address = '대구 서구 서대구로7길 12' and b.board_no != 1;
		where b.board_no2 = 2 and b.board_no = 16;
	
select b.board_no, b.writing_title, b.registration_date, b.update_date, b.view_number, b.vote_number, b.writing_content, b.address, z.zone_no, z.zone_name, t.theme_no, t.theme_name, u.user_no, u.user_id, u.password, u.nick, g.user_grade, g.user_grade_image, g.user_grade_name, i.image_name from board b
		left join zone z on b.zone_no = z.zone_no
		left join theme t on b.theme_no = t.theme_no
		left join users u on b.user_no = u.user_no 
		left join grade g on u.user_grade = g.user_grade
		left join image i on b.board_no = i.board_no
		where b.zone_no = 6 and b.theme_no = 3 and b.board_no != 1;
	
	
		where b.board_no2 = 2 and b.board_no = 16;	
		
select count(*) 
			from board
			where writing_title = '프리지아' and address = '대구 서구 서대구로7길 12' and board_no != 1;
		
select count(*) 
			from board
			where zone_no = 6 and theme_no = 3 and board_no != 1;
		

select b.board_no, i.board_no ,i.image_name from image i left join board b on i.board_no = b.board_no where i.board_no = 1 limit 2;
select b.board_no, i.board_no ,i.image_name from image i left join board b on i.board_no = b.board_no where b.writing_title = '프리지아' and b.address = '대구 서구 서대구로7길 12' and b.board_no != 2 limit 1;


select b.board_no, b.board_no2, b.writing_title, b.writing_content, b.view_number, z.zone_no, z.zone_name, t.theme_no, t.theme_name, u.user_id, u.name, u.nick, i.image_name from board b
		left join zone z on b.zone_no = z.zone_no
		left join theme t on b.theme_no = t.theme_no
		left join users u on b.user_no = u.user_no
		left join image i on b.board_no = i.board_no 
		where b.zone_no = 6 and b.theme_no = 3 and b.board_no != 1 and b.board_no = 16 limit 1;
		order by b.board_no desc;
	
		where b.board_no 

select b.board_no, i.board_no ,i.image_name from image i left join board b on i.board_no = b.board_no where i.board_no = 441;

select b.board_no, i.board_no ,i.image_name from image i left join board b on i.board_no = b.board_no where i.board_no = #{boardNo} limit 2;
	
select b.board_no, i.board_no ,i.image_name from image i left join board b on i.board_no = b.board_no where i.board_no = 1 limit 1;

select b.board_no, i.board_no ,i.image_name from image i left join board b on i.board_no = b.board_no where b.writing_title = '프리지아' and b.address = '대구 서구 서대구로7길 12' and b.board_no != 441;

select b.board_no, i.board_no ,i.image_name from image i left join board b on i.board_no = b.board_no where i.board_no = 2 and b.writing_title = '프리지아' and b.address = '대구 서구 서대구로7길 12';

select b.board_no, i.board_no ,i.image_name from image i left join board b on i.board_no = b.board_no  where b.zone_no = 5 and b.theme_no = 2 and b.board_no != 441 order by b.board_no desc;


select b.board_no, i.board_no ,i.image_name from image i left join board b on i.board_no = b.board_no where i.board_no = 17 and b.zone_no = 5 and b.theme_no = 2 and b.board_no != 441 order by b.board_no desc;