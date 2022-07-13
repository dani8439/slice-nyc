# Slice-NYC
A ruby on rails app that helps track and rate your favorite Pizza places in the NYC area. Users can create restaurants and pies, and add them to the database for other users to access as well. Users can also rate and keep track of restaurants they have visited in order to keep a record of what they like, and do not for future reference.

## Prerequisites:

You will need to have the following installed on your computer in order to use Slice-NYC:

- Ruby
- Rails 5+
- PostgreSQL database

## Live Demo: 

Slice-NYC is hosted on Heroku. If you would like to interact with a live version of this site, and have a look around, please click [here](https://slice-nyc.herokuapp.com/). 

<img width="1437" alt="Screen Shot 2022-07-13 at 3 45 56 PM" src="https://user-images.githubusercontent.com/26771302/178826178-d3e38a6a-ac30-468a-8c1b-eeb75fd86dd6.png">

## Set up:

1. Fork the repository and clone it.
2. Run `bundle install` to install gems.
3. Set up the database with `rake db:create` and `rake db:migrate`
4. Seed the database with `rake db:seed`. (Do not skip this step, otherwise you won't have any data to work with for certain categories).
5. The app uses the dotenv gem for environment variables. Create a `.env` file in the root of the app and add `FACEBOOK_KEY=your_key` and `FACEBOOK_SECRET=your_secret`. If you do not already have a Facebook developer account, you will need to do so in order to get these keys through Oauth on Facebook for developers, in order to log in through Facebook.
6. Run `rails s` and navigate to `http://localhost:3000`.

<img width="1435" alt="Screen Shot 2022-07-13 at 3 46 34 PM" src="https://user-images.githubusercontent.com/26771302/178826221-9afae29a-ce33-417b-98b4-4f54048d45ef.png">

## Notes:

1. At the moment, users cannot enter new information for sauces, crusts, toppings, and cheeses. Users can only create restaurants and pies based upon the information available. Future versions will make such attributes submittable on a user level.
