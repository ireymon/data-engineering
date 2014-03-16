# Challenge for Software Engineer - Big Data

This is Michael Irey's solution to the engineering challenge. Please see the instructions below.

## Requirements
1. ruby version 2.1.1
2. bundler
3. Facebook account (optional)

## Setup / Installation
1. Clone this repositoy
```
git clone git@github.com:ireymon/data-engineering.git
```
2. Change directories into the project.
3. Run `./setup.sh`. This will do the following
 - bundle
 - bundle exec rake db:setup
 - bundle rake db:create db:migrate RAILS_ENV=test
 - bundle exec rails s

4. Open your browser to: http://0.0.0.0:3000/
5. Sign in with your facebook account or these credentials:
```
username: example@livingsocial.com
password: password123
```
Note: If you sign in with facebook, this app will not post anything to your facebook account.

## Application Goal Checklist
 * Accepts a tab delimited file (from a form) with the following columns: purchaser name, item description, item price, purchase count, merchant address, and merchant name
 * Parses the uploaded file
 * Normalizes the data in the file
 * Stores the data in a relational database
 * After upload display the gross revenue
 * [BONUS] Handle authentication
 * [BONUS] Handle authentication via OpenID. Actually took this one step further and setup facebook authentication, because I noticed that is what LivingSocial actually does.
 * Use bootstrap to make the app aesthetically pleasing. This wasn't a goal but was very easy.

## Tests
Full suite of tests can be run:
```
bundle exec rspec
```

## Notes
For ease of setup this example app uses sqlite. This is not recommened for production use.
To handle authentication I used devise. To make handling fileuploads easy 

Any questions or comments please email Michael Irey at michael.irey@gmail.com
