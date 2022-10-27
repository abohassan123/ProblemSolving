'''
/*********************************************************************************************
 *                            CODERBYTE SQL USER LOGINS CHALLENGE                            *
 *                                                                                           *
 * Your table: maintable_O9AAP                                                               *
 * MySQL version: 5.5.56-log                                                                 *
 *                                                                                           *
 *      +---------------+---------------+                                                    *
 *      | ID            | DateJoined    |                                                    *
 *      +---------------+---------------+                                                    *
 *      | 2343434	| 2017-01-06    |                                                    *
 *      | 6343544	| 2017-01-12    |                                                    *
 *      | 355445	| 2017-01-16    |                                                    *
 *      | 2322324	| 2017-01-25    |                                                    *
 *      | 122323	| 2017-02-05    |                                                    *
 *      | 454343	| 2017-02-07    |                                                    *
 *      | 2342342	| 2017-02-21    |                                                    *
 *      | 1322323	| 2017-03-05    |                                                    *
 *      | 5341124	| 2017-03-07    |                                                    *
 *      | 13663442	| 2017-03-14    |                                                    *
 *      | 26323242	| 2017-03-16    |                                                    *
 *      | 12263545	| 2017-03-25    |                                                    *
 *      | 23423423	| 2017-03-25    |                                                    *
 *      | 34452352	| 2017-03-25    |                                                    *
 *      | 235534534	| 2017-03-25    |                                                    *
 *      | 22224233	| 2017-03-26    |                                                    *
 *      | 3353235	| 2017-04-05    |                                                    *
 *      | 56243434	| 2017-04-14    |                                                    *
 *      | 33463266	| 2017-04-21    |                                                    *
 *      | 6634653	| 2017-05-07    |                                                    *
 *      | 2342324	| 2017-05-14    |                                                    *
 *      | 2366436	| 2017-05-16    |                                                    *
 *      | 1123124	| 2017-05-25    |                                                    *
 *      | 3534534	| 2017-05-25    |                                                    *
 *      | 46763543	| 2017-05-25    |                                                    *
 *      | 33463255	| 2017-05-25    |                                                    *
 *      +---------------+---------------+                                                    *
 *                                                                                           *
 * Problem Statement                                                                         *
 * In this MySQL challenge, the table provided shows all new users signing up on a specific  *
 * date in the format YYYY-MM-DD. Your query should output the change from one month to the  *
 * next. Because the first month has no preceding month, your output should skip that row.   * 
 * Your output should look like the following table.                                         *   
 *                                                                                           *
 *                                                                                           *
 *                        +-----------------+---------------------+                          *
 *                        | Month           | MonthToMonthChange  |                          *
 *                        +-----------------+---------------------+                          *
 *                        | February        | -1                  |                          *
 *                        | March           | 6                   |                          *
 *                        | April           | -6                  |                          *
 *                        | May             | 4                   |                          *
 *                        +-----------------+---------------------+                          *
 *                                                                                           *
 ********************************************************************************************/

/*
'''
SELECT MONTHNAME(T1.DateJoined) AS Month,
COUNT(T1.DateJoined) -
(
    SELECT COUNT (T2.DateJoined)
    FROM maintable_O9AAP AS T2
    WHERE MONTH(T2.DateJoined)=MONTH(T1.DateJoined)-1

) AS MonthToMonthChange
FROM maintable_O9AAP AS T1
WHERE MONTH(T1.DateJoined) !=1
GROUP BY MONTHNAME(T1.DateJoined)
ORDER BY T1.DateJoined ASC ;

