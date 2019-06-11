# slice-nyc
A ruby on rails app that helps track and rate your favorite Pizza places in the NYC area. Users can create restaurants and pies, and add them to the database for other users to access as well. Users can also rate and keep track of restaurants they have visited in order to keep a record of what they like, and do not for future reference. 

## Prerequisites:

You will need to have the following installed on your computer in order to use Slice-NYC:

- Ruby
- Rails 5+
- PostgreSQL database


## Set up:

1. For the repository and clone it.
2. Run `bundle install` to install gems.
3. Set up the database with `rake db:create` and `rake db:migrate`
4. Seed the database with `rake db:seed`.
5. The app uses the dotenv gem for environment variables. Create a `.env` file in the root of the app and add `FACEBOOK_KEY=your_key` and `FACEBOOK_SECRET=your_secret`. If you do not already have a Facebook developer account, you will need to do so in order to get these keys through Oauth on Facebook for developers.
6. Run `rails s` and navigate to `http://localhost:3000`.

## Notes:

1. At the moment, users cannot enter new information for sauces, crusts, toppings, and cheeses. Users can only create restaurants and pies based upon the information available. Future versions will make such attributes submittable on a user level.
