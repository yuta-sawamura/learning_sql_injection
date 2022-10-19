DROP TABLE IF EXISTS `tasks`;
DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `tasks` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `content` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_user_id` (`user_id`),
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

insert into users(name, email, password, address)values('鈴木一郎', 'suzuki@example.com', 'd222a18d6474d0819d8ee5da0c2c524f31ff0903a4e6abc3f7957f84f1ee3f0f', '岩手県一関市花泉町花泉821-5');
insert into users(name, email, password, address)values('山田花子', 'yamada@example.com', '77a5b469f790f5659f272b9cfa4d476649212d3c688c1553530d95fad78fca1a', '福井県敦賀市泉ケ丘町668-7');
insert into users(name, email, password, address)values('田中太郎', 'tanaka@example.com', '38f4b0788294de6122c3f934486ca92b4a755840654c8903ca82a6d737452823', '島根県益田市美都町山本358-14');

insert into tasks(user_id, content)values(1, '買い物をする');
insert into tasks(user_id, content)values(1, '洗濯物を取り込む');
insert into tasks(user_id, content)values(2, '宿題をやる');
insert into tasks(user_id, content)values(2, '部活の支度をする');
insert into tasks(user_id, content)values(3, '新聞を読む');
insert into tasks(user_id, content)values(3, 'スポーツジムに行く');