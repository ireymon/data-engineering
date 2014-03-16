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
 - rails s

4. Open your browser to: http://0.0.0.0:3000/
5. Sign in with your facebook account or these credentials:
```
username: example@livingsocial.com
password: password123
```
Note: If you sign in with facebook, this app will not post anything to your facebook account.

## Application Goals
[checkmark] Accepts a tab delimited file (from a form) with the following columns: purchaser name, item description, item price, purchase count, merchant address, and merchant name
[checkmark] Parses the uploaded file

## Tests
```
bundle exec rspec
```


## Notes
For ease of setup this example app uses sqlite. This is not recommened for production use.
To handle authentication I used devise. To make handling fileuploads easy 
