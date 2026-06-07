CREATE TABLE Users (
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(200) NOT NULL UNIQUE,
    username VARCHAR(30)
);

EXPLAIN
SELECT * FROM Users WHERE email = 'VietNamxinhtuoi.com';

CREATE INDEX idx_users_email
    ON Users USING HASH (email);


