# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Recipe Model

```ruby
bin/rails generate model Recipe title:string ingredients:string instructions:string prep_time:integer cook_time:integer equipment:string easy:boolean 
```

I'm following allong here: https://guides.rubyonrails.org/gettingstarted.html
