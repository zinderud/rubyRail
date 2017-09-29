gem 'bootstrap', '~> 4.0.0.beta'
gem 'jquery-rails'
gem 'friendly_id', '~> 5.1.0'  
 
 rails generate scaffold post title:string body:text description:text slug:string:uniq
 rails db:migrate