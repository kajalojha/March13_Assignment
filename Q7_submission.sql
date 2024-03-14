use avisoft ;
create table submission (
sub_id int ,
parent_id int);
insert into submission(sub_id ,parent_id)
values (1,null),
(2,null),
(1,null),
(12,null),
(3,1),
(5,2),
(3,1),
(4,1),
(9,1),
(10,2),
(6,7);
SELECT 
    p.sub_id AS post_id,
    COUNT(DISTINCT c.sub_id) AS number_of_comments
FROM 
    (SELECT sub_id FROM Submission WHERE parent_id IS NULL) p
LEFT JOIN 
    Submission c ON p.sub_id = c.parent_id
GROUP BY 
    p.sub_id
ORDER BY 
    p.sub_id;



