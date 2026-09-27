create user 'student_user'@'localhost' identified by 'pass123';

grant select
on training_institute.students
to 'student_user'@'localhost';

grant insert
on training_institute.students
to 'student_user'@'localhost';

revoke insert
on training_institute.students
from 'student_user'@'localhost';

flush privileges;
SHOW GRANTS FOR 'student_user'@'localhost';
