/*to create a database for our socialmedia analysis*/
create database socialmediaanalytics;
/*creating a users table in socialmediaanalytics database*/
use socialmediaanalytics;
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(255),
    Email VARCHAR(255),
    RegistrationDate DATETIME
);
/*inserting values into the users table */
INSERT INTO Users (UserID, Username, Email, RegistrationDate)
VALUES
  (1, 'JohnDoe', 'john.doe@example.com', '2024-01-31 08:00:00'),
  (2, 'AliceSmith', 'alice.smith@example.com', '2024-01-31 09:30:00'),
  (3, 'BobJohnson', 'bob.johnson@example.com', '2024-01-31 10:45:00'),
  (4, 'EmilyWilliams', 'emily.williams@example.com', '2024-01-31 11:00:00'),
  (5, 'MichaelJones', 'michael.jones@example.com', '2024-01-31 12:30:00'),
  (6, 'OliviaBrown', 'olivia.brown@example.com', '2024-01-31 14:15:00'),
  (7, 'DavidWilson', 'david.wilson@example.com', '2024-01-31 15:45:00'),
  (8, 'SophiaMiller', 'sophia.miller@example.com', '2024-01-31 17:00:00'),
  (9, 'DanielDavis', 'daniel.davis@example.com', '2024-01-31 18:30:00'),
  (10, 'EmmaMartinez', 'emma.martinez@example.com', '2024-01-31 20:00:00'),
  (11, 'WilliamTaylor', 'william.taylor@example.com', '2024-01-31 21:30:00'),
  (12, 'IsabellaAnderson', 'isabella.anderson@example.com', '2024-01-31 23:00:00'),
  (13, 'EthanMoore', 'ethan.moore@example.com', '2024-02-01 01:00:00'),
  (14, 'AvaWhite', 'ava.white@example.com', '2024-02-01 03:00:00'),
  (15, 'JamesHarris', 'james.harris@example.com', '2024-02-01 05:00:00'),
  (16, 'GraceMartin', 'grace.martin@example.com', '2024-02-01 07:00:00'),
  (17, 'HenryClark', 'henry.clark@example.com', '2024-02-01 09:00:00'),
  (18, 'LilyTurner', 'lily.turner@example.com', '2024-02-01 11:00:00'),
  (19, 'AndrewWard', 'andrew.ward@example.com', '2024-02-01 13:00:00'),
  (20, 'ChloeKing', 'chloe.king@example.com', '2024-02-01 15:00:00');
/*creating a posts table in socialmediaanalytics database*/
use socialmediaanalytics;
CREATE TABLE Posts (
    PostID INT PRIMARY KEY,
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    PostContent VARCHAR(255),
    PostDate DATETIME,
    LikesCount INT,
    CommentsCount INT
);
/*insert values into posts*/
INSERT INTO Posts (PostID, UserID, PostContent, PostDate, LikesCount, CommentsCount)
VALUES
  (1, 1, 'Exciting news!', '2024-01-31 11:15:00', 15, 5),
  (2, 2, 'Check out my latest artwork!', '2024-01-31 12:30:00', 20, 8),
  (3, 3, 'Loving the weather today.', '2024-01-31 13:45:00', 10, 3),
  (4, 4, 'Just reached a milestone!', '2024-01-31 11:45:00', 30, 10),
  (5, 5, 'Traveling to a new destination.', '2024-01-31 13:00:00', 25, 7),
  (6, 6, 'Learning a new skill.', '2024-01-31 14:30:00', 18, 5),
  (7, 7, 'Enjoying a quiet weekend.', '2024-01-31 16:00:00', 22, 8),
  (8, 8, 'Reflecting on life.', '2024-01-31 17:30:00', 27, 12),
  (9, 9, 'Excited about the future.', '2024-01-31 19:00:00', 35, 15),
  (10, 10, 'Favorite book recommendation.', '2024-01-31 20:30:00', 40, 18),
  (11, 11, 'Nature hike with friends.', '2024-01-31 22:00:00', 32, 11),
  (12, 12, 'Cooking experiment gone right!', '2024-01-31 23:30:00', 28, 9),
  (13, 13, 'Late-night coding session.', '2024-02-01 01:30:00', 24, 6),
  (14, 14, 'Art exhibition opening.', '2024-02-01 03:30:00', 37, 14),
  (15, 15, 'Sunrise at the beach.', '2024-02-01 05:30:00', 42, 20),
  (16, 16, 'Coffee and contemplation.', '2024-02-01 07:30:00', 29, 10),
  (17, 17, 'Fitness journey progress.', '2024-02-01 09:30:00', 31, 13),
  (18, 18, 'Gardening adventures.', '2024-02-01 11:30:00', 26, 8),
  (19, 19, 'Tech conference highlights.', '2024-02-01 13:30:00', 38, 16),
  (20, 20, 'Weekend DIY project.', '2024-02-01 15:30:00', 33, 11);
/*creating a comments table in socialmediaanalytics database*/
use socialmediaanalytics;
CREATE TABLE Comments (
    CommentID INT PRIMARY KEY,
    PostID INT,
    FOREIGN KEY (PostID) REFERENCES Posts(PostID),
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    CommentContent VARCHAR(255),
    CommentDate DATETIME,
    LikesCount INT
);
/*insert values into comments*/
INSERT INTO Comments (CommentID, PostID, UserID, CommentContent, CommentDate, LikesCount)
VALUES
  (1, 1, 2, 'Congrats!', '2024-01-31 11:30:00', 2),
  (2, 1, 3, 'Awesome news!', '2024-01-31 11:45:00', 4),
  (3, 2, 1, 'Incredible work!', '2024-01-31 13:00:00', 6),
  (4, 4, 5, 'Congratulations on the milestone!', '2024-01-31 12:00:00', 5),
  (5, 4, 6, 'That\'s impressive!', '2024-01-31 12:15:00', 8),
  (6, 5, 7, 'Safe travels!', '2024-01-31 13:30:00', 4),
  (7, 6, 8, 'What skill are you learning?', '2024-01-31 15:00:00', 7),
  (8, 7, 9, 'Sounds peaceful.', '2024-01-31 16:30:00', 10),
  (9, 8, 10, 'Deep thoughts!', '2024-01-31 18:00:00', 12),
  (10, 9, 11, 'Can you share the book title?', '2024-01-31 19:30:00', 14),
  (11, 10, 12, 'Nature hikes are the best!', '2024-01-31 21:00:00', 11),
  (12, 11, 13, 'What were you coding?', '2024-01-31 22:30:00', 9),
  (13, 12, 14, 'Amazing art!', '2024-01-31 23:45:00', 13),
  (14, 13, 15, 'Coding at night is my favorite too.', '2024-02-01 02:00:00', 6),
  (15, 14, 16, 'Favorite piece at the exhibition?', '2024-02-01 04:00:00', 14),
  (16, 15, 17, 'Beautiful sunrise!', '2024-02-01 06:00:00', 18),
  (17, 16, 18, 'What\'s in the coffee?', '2024-02-01 08:00:00', 10),
  (18, 17, 19, 'Keep it up with the fitness journey!', '2024-02-01 10:00:00', 13),
  (19, 18, 20, 'Share some gardening tips!', '2024-02-01 12:00:00', 8),
  (20, 19, 1, 'Which tech conference did you attend?', '2024-02-01 14:00:00', 16);
/*creating a likes table in socialmediaanalytics database*/
use socialmediaanalytics;
CREATE TABLE Likes (
    LikeID INT PRIMARY KEY,
    PostID INT,
    FOREIGN KEY (PostID) REFERENCES Posts(PostID),
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES Users(UserID),
    LikeDate DATETIME
);
/*insert into likes table */
INSERT INTO Likes (LikeID, PostID, UserID, LikeDate)
VALUES
  (1, 1, 3, '2024-01-31 11:20:00'),
  (2, 2, 1, '2024-01-31 12:45:00'),
  (3, 3, 2, '2024-01-31 14:00:00'),
  (4, 4, 1, '2024-01-31 11:00:00'),
  (5, 5, 2, '2024-01-31 12:15:00'),
  (6, 6, 3, '2024-01-31 13:30:00'),
  (7, 7, 4, '2024-01-31 15:00:00'),
  (8, 8, 5, '2024-01-31 16:30:00'),
  (9, 9, 6, '2024-01-31 18:00:00'),
  (10, 10, 7, '2024-01-31 19:30:00'),
  (11, 11, 8, '2024-01-31 21:00:00'),
  (12, 12, 9, '2024-01-31 22:30:00'),
  (13, 13, 10, '2024-02-01 01:00:00'),
  (14, 14, 11, '2024-02-01 03:00:00'),
  (15, 15, 12, '2024-02-01 05:00:00'),
  (16, 16, 13, '2024-02-01 07:00:00'),
  (17, 17, 14, '2024-02-01 09:00:00'),
  (18, 18, 15, '2024-02-01 11:00:00'),
  (19, 19, 16, '2024-02-01 13:00:00'),
  (20, 20, 17, '2024-02-01 15:00:00');
--total users: 
SELECT COUNT(*) AS TotalUsers FROM Users;
--users who haven't posted yet:
SELECT U.Username FROM Users U WHERE U.UserID NOT IN (SELECT DISTINCT UserID FROM Posts);
--average likes per user 
SELECT
    U.Username,
    AVG(L.LikeID) AS AvgLikes
FROM
    Users U
LEFT JOIN
    Likes L ON U.UserID = L.UserID
GROUP BY
    U.Username;
--post with more likes than comments
SELECT
    P.PostID,
    P.PostContent,
    P.LikesCount,
    P.CommentsCount
FROM
    Posts P
WHERE
    P.LikesCount > P.CommentsCount;

/*users with highest number of comments*/
SELECT
    U.UserID,
    U.Username,
    COUNT(C.CommentID) AS CommentCount
FROM
    Users U
JOIN
    Comments C ON U.UserID = C.UserID
GROUP BY
    U.UserID, U.Username
ORDER BY
    CommentCount DESC;
/*users with highest number of likes */
SELECT
    U.UserID,
    U.Username,
    COUNT(L.LikeID) AS LikeCount
FROM
    Users U
JOIN
    Likes L ON U.UserID = L.UserID
GROUP BY
    U.UserID, U.Username
ORDER BY
    LikeCount DESC;
/*average comments and likes per post */
SELECT
    AVG(P.LikesCount) AS AvgLikesPerPost,
    AVG(P.CommentsCount) AS AvgCommentsPerPost
FROM
    Posts P;
-- Track the number of posts, comments, and likes over time
SELECT
    DATE(p.PostDate) AS ActivityDate,
    COUNT(p.PostID) AS PostCount,
    COUNT(DISTINCT C.CommentID) AS CommentCount,
    COUNT(DISTINCT L.LikeID) AS LikeCount
FROM
    Posts P
LEFT JOIN
    Comments C ON P.PostID = C.PostID
LEFT JOIN
    Likes L ON P.PostID = L.PostID
GROUP BY
    ActivityDate
ORDER BY
    ActivityDate;
 
