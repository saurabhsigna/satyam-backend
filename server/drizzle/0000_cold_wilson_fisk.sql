CREATE TABLE `users` (
	`id` serial AUTO_INCREMENT NOT NULL,
	`name` varchar(256),
	`email` varchar(256),
	`phone` varchar(10),
	`isVerified` boolean NOT NULL DEFAULT false,
	`hashed_password` varchar(256),
	`createdAt` timestamp DEFAULT (now()),
	`profile_pic` text,
	`updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	`isBlocked` boolean NOT NULL DEFAULT false,
	`blocked_until` timestamp,
	`provider_type` enum('google','discord','email','phone'),
	`session_key` text,
	CONSTRAINT `users_id` PRIMARY KEY(`id`),
	CONSTRAINT `users_email_unique` UNIQUE(`email`)
);
