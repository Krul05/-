create type museum_type as enum ('science', 'culture', 'other');
Create Table quest (
  id integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  name_quest varchar,
  discription text,
  creator integer,
  museum integer,
  rating float
);
Create Table museum (
  id integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  name_museum varchar,
  type_museum museum_type,
  latitude float,
	longitude float
);
Create Table person (
  id integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  name_person varchar,
  contact varchar
);
Create Table question (
  id integer GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
  question text,
  answer text,
	quest integer
);