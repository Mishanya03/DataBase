SELECT
    CASE
        WHEN (SELECT COUNT(*) FROM course WHERE is_online = true) > (SELECT COUNT(*) FROM course WHERE is_online = false) THEN 'количество онлайн курсов больше'
        ELSE 'количество онлайн курсов не больше'
    END AS result;
