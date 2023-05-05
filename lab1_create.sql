CREATE TABLE dyno (
    id SERIAL PRIMARY KEY,
    type VARCHAR(30) CHECK ( type != '' ) NOT NULL,
    lenght INTEGER CHECK (lenght >= 0)
);

CREATE TABLE human (
    id SERIAL PRIMARY KEY,
    name VARCHAR(30) CHECK (name != '') NOT NULL,
    age INTEGER DEFAULT 18 CHECK (age >= 0 AND age <= 120)
);

CREATE TABLE wound (
    id SERIAL PRIMARY KEY,
    description text CHECK ( description != '' ) NOT NULL
);

CREATE TABLE body(
    id SERIAL PRIMARY KEY,
    description text CHECK ( description != '' ) NOT NULL
);

CREATE TABLE wound_to_body (
    wound_id INTEGER,
    body_id INTEGER,
    position_id INTEGER,
    FOREIGN KEY (wound_id) REFERENCES wound(id),
    FOREIGN KEY (body_id) REFERENCES human(id),
    FOREIGN KEY (position_id) REFERENCES position(id)
);

CREATE TABLE position (
    id SERIAL PRIMARY KEY,
    description text CHECK ( description != '' ) NOT NULL
);

CREATE TABLE dyno_to_human (
    dyno_id INTEGER,
    human_id INTEGER,
    position_id INTEGER,
    FOREIGN KEY (dyno_id) REFERENCES dyno(id),
    FOREIGN KEY (human_id) REFERENCES human(id),
    FOREIGN KEY (position_id) REFERENCES position(id)
);

CREATE TABLE body_to_human (
    body_id INTEGER,
    human_id INTEGER,
    FOREIGN KEY (body_id) REFERENCES body(id),
    FOREIGN KEY (human_id) REFERENCES human(id)
);

/*SELECT * FROM human WHERE id IN (
    SELECT person_id FROM group_to_person WHERE group_id IN (
        SELECT id as group_id FROM research_group WHERE id NOT IN (
            SELECT group_id FROM fact
                                       )));*/
