CREATE TABLE users_techs (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    user_id UUID NOT NULL,
    tech_id UUID NOT NULL,
    description VARCHAR(300),
    since Integer,
    UNIQUE (user_id, tech_id),
    FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
    FOREIGN KEY (tech_id) REFERENCES techs(id) ON DELETE CASCADE
);