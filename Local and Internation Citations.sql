CREATE TABLE local_journal_citations (
         citation_id INT, 
         paper_id INT, 
         paper_title VARCHAR(100)
     );
     CREATE TABLE international_journal_citations (
         citation_id INT, 
         paper_id INT, 
         paper_title VARCHAR(100)
     );
     INSERT INTO local_journal_citations VALUES 
         (1, 1, 'Data Science in Healthcare'), 
         (2, 2, 'Machine Learning Applications'), 
         (3, 3, 'Big Data Analytics');
     INSERT INTO international_journal_citations VALUES 
         (1, 1, 'Data Science in Healthcare'), 
         (2, 4, 'Artificial Intelligence in Medicine'), 
         (3, 2, 'Machine Learning Applications');


SELECT * FROM LOCAL_JOURNAL_CITATIONS

SELECT * FROM INTERNATIONAL_JOURNAL_CITATIONS


/*
Identify all research papers that have been cited by both local and international journals.
*/

SELECT L.PAPER_TITLE
FROM LOCAL_JOURNAL_CITATIONS L
JOIN INTERNATIONAL_JOURNAL_CITATIONS I
ON L.CITATION_ID=I.CITATION_ID
AND L.PAPER_ID = I.PAPER_ID
