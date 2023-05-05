INSERT INTO dyno(type, lenght) VALUES ('Kompsognat', 100);

INSERT INTO human(name, age) VALUES ('John Hammond', 60);

INSERT INTO body(description) VALUES ('Average body of an old man');

INSERT INTO wound(description) VALUES ('bite');

INSERT INTO position(description) VALUES ('bite on the neck');
INSERT INTO position(description) VALUES ('dyno is near Hammond');

INSERT INTO wound_to_body VALUES (1,1,1);

INSERT INTO body_to_human VALUES (1,1);

INSERT INTO dyno_to_human VALUES (1,1,2);

