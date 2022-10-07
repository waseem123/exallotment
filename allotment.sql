INSERT INTO tbl_allotment(exam_center_id,emp_id,exam_id,appointed_designation)
SELECT
    2 AS exam_center_id,
    emp_id,
    2 AS exam_id,
    'समवेक्षक' AS appointed_designation
FROM
    tbl_employee
WHERE
    emp_category = 3 AND emp_id NOT IN(
    SELECT
        emp_id
    FROM
        tbl_allotment
    WHERE
        exam_id = 2
)
LIMIT 3;