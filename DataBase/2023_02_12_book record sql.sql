DROP TABLE IF EXISTS `book_books`;

CREATE TABLE `book_books` (
	`book_id`	Integer	NOT NULL,
	`title`	VARCHAR(255)	NOT NULL,
	`publisher`	VARCHAR(255)	NOT NULL,
	`jenre`	VARCHAR(255)	NULL
);

DROP TABLE IF EXISTS `book_user`;

CREATE TABLE `book_user` (
	`user_id`	int	NOT NULL,
	`user_name`	varchar(20)	NOT NULL,
	`user_nickname`	varchar(20)	NOT NULL,
	`user_login_id`	varchar(50)	NOT NULL,
	`user_pw`	varchar(20)	NOT NULL
);

DROP TABLE IF EXISTS `book_reviews`;

CREATE TABLE `book_reviews` (
	`review_id`	INT	NOT NULL,
	`book_id`	Integer	NOT NULL,
	`user_id`	int	NOT NULL,
	`created_time`	TIMESTAMP	NOT NULL,
	`content`	TEXT	NULL,
	`liked`	INT	NOT NULL	DEFAULT 0
);

DROP TABLE IF EXISTS `book_comments`;

CREATE TABLE `book_comments` (
	`comments_id`	VARCHAR(10)	NULL,
	`user_id`	int	NOT NULL,
	`review_id`	INT	NOT NULL,
	`created_time`	TIMESTAMP	NOT NULL,
	`content`	TEXT	NOT NULL
);

DROP TABLE IF EXISTS `book_attachment`;

CREATE TABLE `book_attachment` (
	`file_no`	integer	NOT NULL,
	`path`	VARCHAR(255)	NOT NULL,
	`book_id`	Integer	NOT NULL
);

ALTER TABLE `book_books` ADD CONSTRAINT `PK_BOOK_BOOKS` PRIMARY KEY (
	`book_id`
);

ALTER TABLE `book_user` ADD CONSTRAINT `PK_BOOK_USER` PRIMARY KEY (
	`user_id`
);

ALTER TABLE `book_reviews` ADD CONSTRAINT `PK_BOOK_REVIEWS` PRIMARY KEY (
	`review_id`
);

ALTER TABLE `book_comments` ADD CONSTRAINT `PK_BOOK_COMMENTS` PRIMARY KEY (
	`comments_id`
);

ALTER TABLE `book_attachment` ADD CONSTRAINT `PK_BOOK_ATTACHMENT` PRIMARY KEY (
	`file_no`
);

