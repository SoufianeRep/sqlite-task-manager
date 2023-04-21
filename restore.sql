-- SQLite
DROP TABLE IF EXISTS tasks;

CREATE TABLE IF NOT EXISTS tasks (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  title TEXT,
  description TEXT,
  done INTEGER DEFAULT(0)
);

INSERT INTO tasks (title, description)
VALUES('Complete Livecode', 'Implement CRUD on Task');
