CREATE TABLE users_paths (
        id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
        user_id UUID NOT NULL,
        path_id UUID NOT NULL,
        index Integer default 0,
        UNIQUE (user_id, path_id),
        FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
        FOREIGN KEY (path_id) REFERENCES paths(id) ON DELETE CASCADE
);