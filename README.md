# Live From New York
###Creator: Patrick Morgan

###http://live-from-ny.herokuapp.com/

####Why this idea?

The New York Times has a page dedicated to seeing important historical events that happened 'on this day in history'. What they don't have, though, is a simple way to see the news articles written about those important days. 

####What does it do?:

Using the New York Times Search API, I've built a simple app to allow users to search the NYTIMES archives for a specific date, view top articles from that day and save any interesting ones to a read-later profile.

####Data Models

The app using a straightforward 3 model schema to save articles and associate them with a given user: a 'Users' table is connected to an 'articles' in a many-to-many relationship through a basic join table I chose to call 'likes'.

#####A note on current design:

This app is currently optimized for a 13" Macbook, running Google Chrome. The layout shown in the screenshots may change depending on screen size or browser.

![Sign_in](https://www.evernote.com/shard/s82/sh/0236e794-9a4c-48b9-936d-c6304d143fbe/caac0c3021fbd71334e822442d58600a "Sign in")

![Sign_up](https://www.evernote.com/shard/s82/sh/bc8cfa73-bdc4-48c4-8a7e-1c411574e228/f46e1c2cbad0c70d26eca474cb037382 "Sign up")

![Main_search](https://www.evernote.com/shard/s82/sh/578c9cf6-8694-461f-afc9-3cb67918866e/72199bacfc525bb0dda126fa9ee1e56f "Main search")

![articles](https://www.evernote.com/shard/s82/sh/12ef9305-5c3e-45c9-8c9a-43481f862d90/2883af70d15ceafadb44ae472553f438 "Articles")

![user_profile](https://www.evernote.com/shard/s82/sh/25b29a5c-c725-469e-afdc-34dde88eb776/e9ad22bf33313593693842dea4eaad29 "User Profile")

![edit_profile](https://www.evernote.com/shard/s82/sh/d664ac3b-56b3-4d08-9d5a-83e7b5b01417/d6729cb02e65acb2fad30fb3cfa0a372"Edit Profile")

![password](https://www.evernote.com/shard/s82/sh/79a779a3-eaf2-4ff1-aeea-7b036dd1ac03/e8022f7e4b940f6fcd42c2d1404da83b "Recover Password")




