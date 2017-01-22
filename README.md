== Notebrush Read Me


### Some of what are we using:
* [Ruby on Rails](https://github.com/rails/rails)
* [Bootstrap](https://github.com/twbs/bootstrap-sass)
* [Devise](https://github.com/plataformatec/devise)
* [Public Activity](https://github.com/chaps-io/public_activity)
* [Pry Rails](https://github.com/rweng/pry-rails)
* [Rspec Rails](https://github.com/rspec/rspec-rails)
* [PostgreSQL](https://rubygems.org/gems/pg/versions/0.18.4)


### Getting started:

To set it up on your local (nix) machine here is what you need to do. Install Ruby & Rails. Clone this repo using the following command:

```
git clone https://github.com/hezekiahdevelopment/Notebrush
cd Notebrush
```

Then resolve dependencies using bundler:
```
bundle install
```

Setup PG & Run Migrations:
```
bundle exec rake db:setup --trace
```

Run Specs:
```
bundle exec rspec
```

### Populate Mock data
To test the app with mock data, run the following rake task:
```
bundle exec rake db:seed --trace
```

Run Rails locally:
```
bundle exec rails s
```


This will create records with values from the `db/seeds.rb` file.

