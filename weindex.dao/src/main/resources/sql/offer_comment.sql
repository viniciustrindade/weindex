CREATE TABLE offer_comment (
id INT NOT NULL AUTO_INCREMENT,
offer_id INT NOT NULL,
title VARCHAR(256) NOT NULL,
content VARCHAR(512),
visible INT default 0,
creator_id INT NOT NULL,
creator_name varchar(256),
trace_comment_id INT,
create_time DATETIME,
update_time DATETIME,
PRIMARY KEY (id),
FOREIGN KEY (offer_id) REFERENCES offer(id) on delete cascade 
) ENGINE=InnoDB default charset=utf8;