CREATE TABLE links (
        id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
        user_id UUID NOT NULL,
        title VARCHAR(100) NOT NULL,
        url VARCHAR(300) NOT NULL,
        index Integer default 0,
        UNIQUE (user_id),
        FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
);