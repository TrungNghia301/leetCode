Select stu.student_id, stu.student_name, sub.subject_name, coalesce(exa.attended_exams ,0) as attended_exams
From Students stu
Cross join Subjects sub
Left join (
    Select student_id,subject_name, Count(*) as attended_exams 
    From Examinations
    Group by subject_name,student_id
) exa on stu.student_id = exa.student_id and sub.subject_name = exa.subject_name
Order by stu.student_id, sub.subject_name