SELECT ism, familiya, email
FROM foydalanuvchilar
WHERE shahar = 'Toshkent';


SELECT *
FROM foydalanuvchilar
WHERE royxat_sana > '2024-03-01'
  AND MONTH(oxirgi_kirish_sana) = 11
  AND YEAR(oxirgi_kirish_sana) = 2024;


SELECT viloyat, COUNT(*) AS foydalanuvchilar_soni
FROM foydalanuvchilar
GROUP BY viloyat
ORDER BY foydalanuvchilar_soni DESC;


SELECT COUNT(*) AS aktiv_gmail_foydalanuvchilar
FROM foydalanuvchilar
WHERE email LIKE '%@gmail.com'
  AND status = 'active';


SELECT *
FROM foydalanuvchilar
ORDER BY royxat_sana DESC
LIMIT 5;


SELECT *
FROM foydalanuvchilar
WHERE royxat_sana < '2024-07-01';
