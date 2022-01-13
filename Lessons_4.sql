ALTER TABLE profiles ADD is_active BIT DEFAULT false NULL;

UPDATE profiles
SET is_active = 1
WHERE YEAR(CURRENT_TIMESTAMP) - YEAR(birthday) - (RIGHT(CURRENT_TIMESTAMP, 5) < RIGHT(birthday, 5)) < 18
;

ALTER TABLE profiles ADD age bigint(5);

UPDATE profiles
SET age = YEAR(CURRENT_TIMESTAMP) - YEAR(birthday) - (RIGHT(CURRENT_TIMESTAMP, 5) < RIGHT(birthday, 5))
;

UPDATE messages
	SET created_at='2222-11-24 04:06:29'
	WHERE id = 4;
	

DELETE FROM messages
WHERE created_at > now()
;