create database db2;
use db2;
create table Contests( contest_id integer(5) , interviewer_id integer(5), name varchar(255));
create table output(  contest_id integer(5), interviewer_id integer(5), name varchar(255), total_submissions integer(3), total_accepted_submissions integer(3), total_views integer(2), total_unique_views integer(3) );
create table colleges( college_id integer(2), contest_id integer(2) );
create table challenges(challenge_id integer(2), contest_id integer(2));
create table view_stats(challenge_id integer(2), total_views integer(2), total_unique_views integer(2));
create table Submission_Stats( challenge_id integer(2), total_submissions integer(3), total_unique_views integer(2));
SELECT contest_id, interviewer_id, name, 
       SUM(total_submissions) AS sum_total_submissions,
       SUM(total_accepted_submissions) AS sum_total_accepted_submissions,
       SUM(total_views) AS sum_total_views,
       SUM(total_unique_views) AS sum_total_unique_views
FROM output
GROUP BY contest_id, interviewer_id, name
HAVING sum_total_submissions + sum_total_accepted_submissions + sum_total_views + sum_total_unique_views > 0
ORDER BY  contest_id;
INSERT INTO OUTPUT VALUES("1","1",'Nitin',"111","39","156","56");
INSERT INTO OUTPUT VALUES("2","2",'Riya',"0","0","11","10");
INSERT INTO OUTPUT VALUES("3","3",'Chandan',"150","38","41","15");

SELECT * from ouput;