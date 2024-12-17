CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `name` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
   
   -- কনে (ফরেন কি)
   -- বর (প্রাইমারি কি) 
   -- সুমাইয়ার বিয়ে হয়েছে গাইবান্ধার রাব্বিলের সাথে 
   -- বাঁচলে একসাথে বাঁচো, মরলে একসাথে মরো । 
   FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE
);