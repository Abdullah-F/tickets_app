#Tickets App

## Installation
In order to get the app running follow the steps listed below:
* Make sure you have [docker](https://docs.docker.com/engine/install/) installed locally on your machine.
* Make sure to have [docker-compose](https://docs.docker.com/compose/install/) installed locally on your machine.
* after dowing the above steps clone the app from this repo.
* after cloning open the terminal, run `cd tickets_app`
* after being in the repo directory in your machine run `docker-compose up`
* the app should be running on [http://localhost:5000/](http://localhost:5000/)
* run `docker container exec -it tickets_app_api_1 /bin/bash` in a new window.
* run `rails db:setup` to create the databases and seed.
* the app has seeds to help you test manually (just a user is created to be assigned tickets)

## Linting

* this app uses standardrb for formatting.
* run `docker container exec -it tickets_app_api_1 /bin/bash` in a new window.
* run `bundle exec standardrb` for formatting.

## tests
* this app uses rspec for testing.
* run `docker container exec -it tickets_app_api_1 /bin/bash` in a new window.
* run `bundle exec rspec` to run the tests.

## who the app works

* the app only has one single endponit for creating tickets, I created a user in the seedrb to be assigned to tickets since no registeration
   or any other funtionalites are supported in this app for users.
* the time zone in the user table shall be used for display purposes after seralization is added to the app and other endpoints.
* time is saved in  UTC in the app, which is rails default.
* a single rake task is made to fire up sending emails on due_date.
* run `docker container exec -it tickets_app_cron_jobs_1  bash -c "bundle exec whenever --update-crontab && crond"` to start whenever corn jobs.
* the above command should be automated and not manula but due to time constraint could not investegate why docker compose failed to run it.
* currently the mailers are tested locally using perviews. if you wish to get them to send real messages add your own config to `development.rb`
## things to be improved.
* using a separate container for processing the jobs along with sidekiq and redis.
* better improve the archetcure of notifications (using notice is a good idea but need version 6.0+ of rails)

