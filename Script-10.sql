
-계정 생성 
CREATE  USER wngud4232 IDENTIFIED BY 1234;
-- 접속, 리소스 사용 권환부
GRANT resource , CONNECT TO wngud4232;

DROP  TABLE book;

CREATE  TABLE book(
     book_id  number(5),
     title  varchar2(50),
     author varchar2(10),
     pub_date DATE );


DROP  TABLE author;

CREATE  TABLE author(
     author_id  number(10),
     author_name  varchar2(100),
     author_desc varchar2(500)
     );

CREATE TABLE author (
    author_id   NUMBER(10),
    author_name VARCHAR2(100) NOT null,
    author_desc VARCHAR2(500),
    PRIMARY KEY (author_id)
);

DROP TABLE book;
DROP TABLE author;

CREATE TABLE author (
    author_id    NUMBER(10),
    author_name  VARCHAR2(100) NOT NULL,
    author_desc  VARCHAR2(100),
    pub_date     DATE,
    PRIMARY KEY (author_id)
);

CREATE TABLE book (
    book_id     NUMBER(10),
    title       VARCHAR2(100) NOT NULL,
    pubs        VARCHAR2(100),
    pub_date    DATE,
    author_id   NUMBER(10),
    PRIMARY KEY (book_id),
    CONSTRAINT C_book_fk FOREIGN KEY (author_id)
        REFERENCES author (author_id)
);
INSERT INTO author (author_id, author_name, author_desc, pub_date)
VALUES (1, '주형', 'AI 작가', TO_DATE('2023-01-01', 'YYYY-MM-DD'));

INSERT INTO book (book_id, title, pubs, pub_date, author_id)
VALUES (101, '딥러닝의 미래', 'TechBooks', TO_DATE('2023-05-01', 'YYYY-MM-DD'), 1);

SELECT b.book_id, b.title, a.author_name, b.pub_date
FROM book b
JOIN author a ON b.author_id = a.author_id;

INSERT  INTO author()

SELECT *
FROM author;

DROP TABLE book;  -- 외래키 갖고 있는 자식 테이블 먼저 삭제
DROP TABLE author;



CREATE TABLE author (
    author_id   NUMBER(10),
    author_name VARCHAR2(100) NOT null,
    author_desc VARCHAR2(500),
    PRIMARY KEY (author_id)
);


DROP TABLE author;
CREATE TABLE author(
    author_id     number(10),
    author_name   varchar2(100) NOT null,
    author_desc   varchar2(500),
    PRIMARY key(author_id)
);
SELECT * FROM author;

DROP TABLE book;
DROP TABLE author;
CREATE TABLE author (
  author_id    NUMBER(10),
  author_name    VARCHAR2(100)  NOT NULL,
  author_desc    VARCHAR2(500),
  PRIMARY     KEY(author_id)    
);
SELECT * FROM AUTHOR a ;


-------------------------------------------------------------------------------------------
SELECT * FROM AUTHOR a ; -- 전체 조
DROP TABLE book;
CREATE TABLE book (
  book_id     NUMBER(10),
  title     VARCHAR2(100) NOT NULL,
  pubs     VARCHAR2(100),
  pub_date     DATE,
  author_id NUMBER(10),
  PRIMARY     KEY(book_id),
  CONSTRAINT c_book_fk FOREIGN KEY (author_id)
  REFERENCES author(author_id)
);

INSERT INTO AUTHOR 
values(1,'박경리','토지 작가');

INSERT INTO AUTHOR(AUTHOR_ID, AUTHOR_NAME)
values(2,'이문열');



UPDATE  AUTHOR a 
SET AUTHOR_NAME ='기안84',
	author_desc = '웹툰작가, 태어나김에 세계일주'
WHERE  a.AUTHOR_ID  =1;	


SELECT * FROM AUTHOR a ;

DELETE  FROM AUTHOR  -- 삭제 
WHERE AUTHOR_id =2;


DROP  SEQUENCE seq_author_id;
CREATE  SEQUENCE seq_author_id;
INCREMENT BY 1
START WITH 1;

SELECT  seq_author_id.nextval FROM dual;

DELETE  FROM author;

INSERT INTO AUTHOR 
values(seq_author_id.nextval, '박경리','토지작가');

INSERT INTO AUTHOR 
values(seq_author_id.nextval, '이문열','삼국지작가');

-- 작가 테이블
CREATE TABLE author (
    author_id    NUMBER PRIMARY KEY,
    author_name  VARCHAR2(100) NOT NULL,
    author_desc  VARCHAR2(200)
);

-- 책 테이블
CREATE TABLE book (
    book_id     NUMBER PRIMARY KEY,
    title       VARCHAR2(200) NOT NULL,
    pubs        VARCHAR2(100),
    pub_date    DATE,
    author_id   NUMBER,
    CONSTRAINT fk_book_author FOREIGN KEY (author_id)
        REFERENCES author(author_id)
);


-- Author 테이블 데이터
INSERT INTO author VALUES (1, '이문열', '경북 영양');
INSERT INTO author VALUES (2,'이문열', '경북양양');
INSERT INTO author VALUES (3,'박경리','경상남도 통영');
INSERT INTO author VALUES (4,'유시민','17대 국회의원');
INSERT INTO author VALUES (5,'기안84','기안동에서 산 84년생');
INSERT INTO author VALUES (6,'강풀','온라인 만화가 1세대');
INSERT INTO author VALUES(7,'김영하','알씁신잡');
INSERT INTO author VALUES(8,'강풀','온라인 만화가 1세대');

-- Book 테이블 데이터
INSERT INTO book VALUES (1, '우리들의 일그러진 영웅', '다림', TO_DATE('1998-02-22', 'YYYY-MM-DD'), 1);
INSERT INTO book VALUES (2, '삼국지', '민음사', TO_DATE('2002-03-01', 'YYYY-MM-DD'), 2);
INSERT INTO book VALUES (3, '토지', '마로니에북스', TO_DATE('2012-08-15', 'YYYY-MM-DD'), 3);
INSERT INTO book VALUES (4, '유시민의 글쓰기 특강', '생각의길', TO_DATE('2015-04-01', 'YYYY-MM-DD'), 4);
INSERT INTO book VALUES (5, '패션왕', '중앙북스(books)', TO_DATE('2012-02-22', 'YYYY-MM-DD'), 5);
INSERT INTO book VALUES (6, '순정만화', '재미주의', TO_DATE('2011-08-03', 'YYYY-MM-DD'), 6);
INSERT INTO book VALUES (7, '오직두사람', '문학동네', TO_DATE('2017-05-04', 'YYYY-MM-DD'), 7);
INSERT INTO book VALUES (8, '26년', '재미주의', TO_DATE('2012-02-04', 'YYYY-MM-DD'), 8);

SELECT 
    b.book_id,
    b.title,
    b.pubs,TO_CHAR(pub_date,'YYYY-MM-DD') pub_date,
    a.author_name,
    a.author_desc
FROM book b
JOIN author a ON b.author_id = a.author_id;



SELECT * FROM author;
SELECT * FROM book;

DROP TABLE BOOK ;
DROP TABLE author;
ORDER BY author_id;

