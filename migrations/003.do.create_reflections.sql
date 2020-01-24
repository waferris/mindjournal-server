CREATE TABLE reflections (
    id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    last_edited TIMESTAMP NOT NULL DEFAULT now(),
    user_id INTEGER
        REFERENCES users(id) ON DELETE CASCADE NOT NULL
);