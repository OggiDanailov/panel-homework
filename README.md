This is a virtual school project that illustrates the use of multi-user roles through gem Devise (admin, instructor and student)
- to illustrate relational DB in SQL (the project currently has admin, instructor, student, cohort, course, article, comment)
- to illustrate weak join table between cohorts and students

In order to start the project you need to have Rails installed on your computer. You have to run 'bundle install' in the home directory and them 'rake db:migrate' in order to migrate the DB on your local machine. For development the DB is sqlite3, for production the DB is postgres.
You can sign up as admin, instructor or student.
 - admin can do anything on the site plus admin is the only one who can create courses
 
- instructor can create cohorts and articles; also, he/she can comment on articles; he/she can assign cohorts to courses
- student can comment on articles and student can join cohorts
