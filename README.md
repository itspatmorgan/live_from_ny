# Live From New York

###Developer: Patrick Morgan

### <http://live-from-ny.herokuapp.com/>

####Why this idea?

*'On this day in history...'*

Most people have come across this type of article or webpage at one point or another. In fact, The New York Times has a webpage dedicated to highlighting the important historical events that happened 'on this day in history'. What they don't have, though, is a simple way to uncover the news written about those important days. 

####What does it do?

*Using the New York Times Search API, this simple app allows users to:*

  1. Query the NYTIMES Search API for articles from any day, **starting in 1852**
  2. View top articles from that day
  3. Save any interesting ones to their own read-later list

####Basic specs & Data models

On the back-end, I built *Live From New York* with Ruby on Rails, using a Postgresql database and Rspec/Capybara for testing. On the front-end, I used HTML/CSS and Twitter Bootstrap. 

The app uses a straightforward 3 model schema to save articles and associate them with a given user: a 'Users' table is connected to an 'articles' table in a many-to-many relationship through a basic join table I chose to call 'likes'.

####A note on version 1 design

The app is currently optimized for a 13" Macbook, running Google Chrome. The layout shown in the screenshots may change/break depending on screen size or browser.

---
##Design - Main Views

###Sign in

![Sign_in](https://www.evernote.com/shard/s82/sh/0236e794-9a4c-48b9-936d-c6304d143fbe/caac0c3021fbd71334e822442d58600a/deep/0/LiveFromNY---Sign-in.png "Sign in")

###Sign up
![Sign_up](https://www.evernote.com/shard/s82/sh/bc8cfa73-bdc4-48c4-8a7e-1c411574e228/f46e1c2cbad0c70d26eca474cb037382/deep/0/LiveFromNY---Sign-up.png "Sign up")

###Main search
![Main_search](https://www.evernote.com/shard/s82/sh/578c9cf6-8694-461f-afc9-3cb67918866e/72199bacfc525bb0dda126fa9ee1e56f/deep/0/LiveFromNY---Main-Search.png "Main search")

###Articles search results 
![articles](https://www.evernote.com/shard/s82/sh/12ef9305-5c3e-45c9-8c9a-43481f862d90/2883af70d15ceafadb44ae472553f438/deep/0/LiveFromNY---Articles.png "Articles")

###User profile/ Saved articles
![user_profile](https://www.evernote.com/shard/s82/sh/25b29a5c-c725-469e-afdc-34dde88eb776/e9ad22bf33313593693842dea4eaad29/deep/0/LiveFromNY---User-Profile.png "User Profile")

###Edit profile/ Cancel account
![edit_profile](https://www.evernote.com/shard/s82/sh/d664ac3b-56b3-4d08-9d5a-83e7b5b01417/d6729cb02e65acb2fad30fb3cfa0a372/deep/0/LiveFromNY---Edit.png "Edit Profile")

###Reset password
![password](https://www.evernote.com/shard/s82/sh/79a779a3-eaf2-4ff1-aeea-7b036dd1ac03/e8022f7e4b940f6fcd42c2d1404da83b/deep/0/LiveFromNY---Password.png "Recover Password")