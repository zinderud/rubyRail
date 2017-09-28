aşamalar

`rails new todos-api --api -T`
Dependencies
**rspec-rails - Testing framework.
 
**factory_girl_rails - A fixtures replacement with a more straightforward syntax. You'll see.
    
**shoulda_matchers - Provides RSpec with additional matchers.
    
**database_cleaner - You guessed it! It literally cleans our test database to ensure a clean state in each test suite.
    
**faker - A library for generating fake data. We'll use this to generate test data.


bundle install

rails generate rspec:install

rails g model Todo title:string created_by:string
rails g model Item name:string done:boolean todo:references

rails db:migrate

test için
bundle exec rspec


rails g controller Todos
rails g controller Items