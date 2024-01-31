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
 
