# dear_creatures
This web application was created as my Rails Project for Flatiron School. It is a web application that allows users to create accounts, and log in. The user can browse through shelters and their needed items lists. They can submit donations of items or monetary funds through a form and see their past donations and updated shelter lists. 

To run this application:

run ```git clone git@github.com:brittjavs/dear_creatures.git``` then ```cd dear_creatures```
run ```bundle install```
run ```rails db:migrate RAILS_ENV=development``` then ```rails db:seed```

To view in browser

run ```rails s``` and ```ctrl + c``` to end the session

To log in with google:
Create a .env file in the root directory of this repository and add 
```GOOGLE_CLIENT_ID=Your client id```
```GOOGLE_CLIENT_SECRET=Your client secret```

You will add in your unique client ID and client secret from google.
