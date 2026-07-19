## How to recognize Many-to-Many Relationship

**Ask yourself two questions.**

*Question 1* <br>
&emsp;Can one A have many B ?

*Question 2*<br>
&emsp;Can one B have many A ?

#### If BOTH answers are yes 
&emsp;↓ (yes)
##### Create a junction table 

### Example:

Two Tables named :<br>
&emsp; users<br>
&emsp; posts

**Can one user have many posts?**<br>
&emsp;Yes

**Can one post have many users?**<br>
&emsp;No

##### A post has only one author.

So this is a One to Many Relationship

No junction table.

#### Just : post.user_id

### Example

Two Tables named :<br>
&emsp; users<br>
&emsp; roles

**Can one user have many roles?**
***
Admin<br>
Editor<br>
Moderator
***
&emsp;*Yes*.

**Can one role belong to many users?**
&emsp;*Also yes*

#### Create a junction table : users_roles

### General Formula

Whenever you see<br>
&emsp;A<br>
&emsp;↕<br>
&emsp;B

and both side are many

#### Create junction table: a_b

## SQL Example
```sql
CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE student_courses (
    student_id INT REFERENCES students(id),
    course_id INT REFERENCES courses(id),

    PRIMARY KEY(student_id, course_id)
);
```
#### Insert data
```sql
INSERT INTO students(name)
VALUES
('Rahul'),
('Ananya');
```
```sql
INSERT INTO courses(name)
VALUES
('Math'),
('Science'),
('English');
```
#### Relationship
```sql
INSERT INTO student_courses
VALUES
(1,1),
(1,2),
(1,3),
(2,1),
(2,3);
```
#### Now Rahul studies:<br>
Maths,
Science,
English
#### Ananya studies:<br>
Maths, English

### Getting the data back
**Suppose you want:**<br>
&emsp;Show every student and the courses they study.
```sql
SELECT
    s.name AS student,
    c.name AS course
FROM students AS s
INNER JOIN student_courses AS sc
    ON s.id = sc.student_id
INNER JOIN courses AS c
    ON sc.course_id = c.id
ORDER BY s.name, c.name;
```
**Result:<br>**
Student&emsp;&emsp;&emsp;Course

Ananya&emsp;&emsp;&emsp;English<br>
Ananya&emsp;&emsp;&emsp;Math<br>
Rahul&emsp;&emsp;&emsp;&emsp;English<br>
Rahul&emsp;&emsp;&emsp;&emsp;Math<br>
Rahul&emsp;&emsp;&emsp;&emsp;Science

Notice the pattern:
```
students
        \
         \
   student_courses
         /
        /
courses
```
The junction table is the bridge that connects the two main tables.