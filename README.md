# dear_creatures
This Rails web application was created for charitable animal lovers who would like to donate items or funding to animal shelters. 

## User Story
A user can: 
* Create an account
* Log in and out of their account. 
* Browse through a list of shelters
* View a specific shelters needed item list
* Sumbit a donation of items or funds through a form
* View their past donations 

## To run this application:
In your terminal
run ```git clone git@github.com:brittjavs/dear_creatures.git``` then ```cd dear_creatures```

run ```bundle install```

run ```rails db:migrate RAILS_ENV=development``` 
then ```rails db:seed```

To view in browser

run ```rails s```  and ```ctrl + c``` to end the session

To log in with google:
Create a .env file in the root directory of this repository and add 
```GOOGLE_CLIENT_ID=Your client id```
```GOOGLE_CLIENT_SECRET=Your client secret```

You will add in your unique client ID and client secret from google.
