USE avisoft;

CREATE TABLE friends (
    id INT PRIMARY KEY,
    name VARCHAR(255),
    activity VARCHAR(255)
);

CREATE TABLE activities (
    id INT PRIMARY KEY,
    name VARCHAR(255)
);

INSERT INTO friends (id, name, activity)
VALUES
    (1, 'Jonathan D.', 'Eating'),
    (2, 'Jade W.', 'Singing'),
    (3, 'Victor J.', 'Singing'),
    (4, 'Elvis Q.', 'Eating'),
    (5, 'Daniel A.', 'Eating'),
    (6, 'Bob B.', 'Horse Riding');

INSERT INTO activities (id, name)
VALUES
    (1, 'Eating'),
    (2, 'Singing'),
    (3, 'Horse Riding');

WITH ActivityParticipants AS (
    SELECT
        a.name AS activity,
        COUNT(f.id) AS num_participants
    FROM
        activities a
    LEFT JOIN
        friends f ON a.name = f.activity  -- No need for TRIM() since we ensure consistency in data insertion
    GROUP BY
        a.name
)
SELECT
    activity
FROM
    ActivityParticipants
WHERE
    num_participants != (
        SELECT
            MAX(num_participants)
        FROM
            ActivityParticipants
    )
AND
    num_participants != (
        SELECT
            MIN(num_participants)
        FROM
            ActivityParticipants
    );
