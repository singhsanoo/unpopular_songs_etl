# YouTube Statistics ETL

## About
---
The purpose of this project is to perform an ETL (extract, transform, load) process using **Pandas**, **SQLAlchemy**, and **PostgresSQL** on Youtube data pulled from **Kaggle**. This process is used to make data more workable and easily accessable from a database for future analysis.


## Contributers
---
- Sanoo Singh
- Bryan Groves
- Lief Herzfeld


## Sources
---
Data used was pulled from **Kaggle**. Information about the data and the data itself can be found in the links below.

- [comments.csv](https://www.kaggle.com/datasets/advaypatil/youtube-statistics?select=comments.csv)
- [videos-stats.csv](https://www.kaggle.com/datasets/advaypatil/youtube-statistics?select=videos-stats.csv)

## Database
---
This project uses **PostgresSQL** as the database.

## Instructions
---
1. Clone the repository to your local machine.
2. Open **pgAdmin 4** and create a database called ``youtube_stats_db``.
3. In the query tool, open the file ``youtube_statistic_db.sql`` from your local repository.
4. Create the tables ``comments`` and ``video_stats``.
5. Minimize **pgAdmin 4**.
6. Open up a **Git Bash** on ``youtube_statistics_etl`` cloned folder.
7. In the **Git Bash** terminal, either type ``source activate PythonData38`` or ``conda activate PythonData38``. Depending on how your machine is set up, one of these commands will activate the shell you need.
8. In the **Git Bash** terminal, type ``jupyter notebook`` to open a **jupyter notebook**.
9. In your **jupyter notebook**, create a new file named ``credentials.py``.
10. In the ``credentials.py`` file, insert the following lines of code:
    - ``my_postgres = <your postgres username>``
    - ``my_password = <your postgres password>``

    Where ``<your postgres username>`` is your **PostgresSQL** username and ``<your postgres password>`` is your **PostgresSQL** password.
11. Open ``youtube_statistic_etl.ipynb`` notebook, restart and clear output.
12. Run ``youtube_statistic_etl.ipynb``.
13. Minimize your **jupyter notebook**.
14. Expand your **pgAdmin 4**.
15. Run the join script from ``youtube_statistic_db.sql`` to verify the table and the merge.
