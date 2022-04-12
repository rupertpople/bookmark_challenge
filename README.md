# Bookmark_manager

User Stories

# USER STORY 1
`As a user
So that I keep track of certain websites
I would like to see a list of bookmarks`

# USER STORY 2
`As a busy user
So that I can save a website address
I want to add the site's address and title to a bookmark manager`

Link to the domain model: https://miro.com/app/board/uXjVO9sGhD0=/?share_link_id=405478026260


<img src="https://miro.com/app/live-embed/uXjVO9sGhD0=/?moveToViewport=-728,-270,1452,609" frameBorder="0" scrolling="no" allowFullScreen></ iframe width="768" height="432" />

# HOW TO SET UP AND CONNECT TO DATABASE
1. Connect to `psql`
2. Create the database using the psql command `CREATE DATABASE bookmark_manager;`
3. Connect to the database using the pqsl command `\c bookmark_manager;`
4. Run the query we have saved in the file `01_create_bookmarks_table.sql`
5. To make entries into table - INSERT INTO bookmarks (url) VALUES('http://www.makersacademy.com');
6. To view the created table - SELECT * FROM bookmarks;