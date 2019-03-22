# Before we start

### What you'll need:

- Postgresql installed on your system
- Ruby 2.4.1 installed on your system
- 'Books' application cloned and set up


### How to set up 'Books' application:

1. Clone it from https://github.com/visualitypl/security-workshop-app
2. Go to the app directory `cd security-tutorial`
3. If you don't have bundler installed, run `gem install bundler`
4. Install gems `bundle install`
5. Go to the `config/database.yml` config file and config the database. There may be your postgres username and password needed if the default configuration doesn't work.
6. Create and migrate the database `rake db:create && rake db:migrate`
7. Seed the database with sample data `rake db:seed`
8. Run rails server `rails server`
9. Don't analyze the code, simply follow the instructions :)
