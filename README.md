# TravelBuddy
A web application for travel event management.

## How to run the application locally. (in vagrant)
- vagrant up 
- vagrant ssh
- clone https://github.com/memphis-comp7012/TravelBuddy.git
- bundle install.
- delete .sql file in db directetory.
- rails db:migrate db:seed.
- sudo apt install imagemagick (for image upload resize it requires a c program.)
- rails s -b 0.0.0.0
- go to web browser localhost:3000
