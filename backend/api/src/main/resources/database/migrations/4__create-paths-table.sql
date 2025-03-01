CREATE TABLE paths(
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    number_of_users INTEGER NOT NULL DEFAULT 0,
)