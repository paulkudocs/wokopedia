# wokopedia

[]

Ruby On Rails 7 Wokopedia with Ruby on Rails 7, PostgreSQL, Thin Webserver, UUID's, Rack Contrib,
Email Sends, User Avatars, Enum Roles, Notifications, Announcements, Rollup, Importmap,
CSS Bundling, JS Bundling, Administrate, Turbo, Stimulus JS, Hotwire, Action Cable, Cable Ready,
Redis Caching, Bootstrap 5, Font Awesome 5, Devise Auth, Rubocop & RSpec!

## Roles - Devise User Model ##

* Admin as boolean flag on User model (manual - switch it in console)
* Member and other roles as enum integer (hash) on User model (write methods as required, default sign up set as user) No 3rd party gems needed for Roles.
* Example: User.all.update :role => :owner, User.first.update :admin => true

# JS & CSS Bundling with Rollup - no webpack/webpacker

* https://stimulus.hotwired.dev/

* https://docs.stimulusreflex.com/

# Combine with Hotwire and Strada & others #

* https://hotwired.dev/

Style kept minimal so Bootstrap 5 can be swapped out for other CSS or UI if required, Bootstrap icons via CDN (swap/remove), dummy fonts in root of app (not used)

* Ruby/Rails/Node/Postgres

- [Ruby](https://www.ruby-lang.org/en/) 3.0.0 up
- [Rails](https://rubyonrails.org/) 7.0.0 up
- [NodeJS] (https://nodejs.org/es/blog/release/v16.0.0/) 16.0.0
- [PostgreSQL](https://www.postgresql.org/docs/14/index.html) 14.00

## SET UP ##

(Todo: fix admin new user)

After first set email & db credentials in .env file (for PostgreSQL, cp .env.example to .env and fill in with your env details)

1. $ bundle install && bundle audit + (bundle audit --update)
2. $ yarn  (engine node v 16.0.0)

* Hotwire

3. $ rails hotwire:install  (dont overwrite, request js module declared in root .ts file )

4. $ rails dev:cache (check/toggle, must be cached, if not run again) 

5. Is set up to send basic user signup mail with Gmail, alter smtp or other mail credentials (.env, application_mailer, devise.rb & development.rb), then test signup confirmation emails by signing up & confirming user email
As above be sure to copy .env.example > .env and enter details, or adapt to suit yours.  (2 factor auth Google accs req an App password for the device registered there and being used, not the normal password)

6. $ bin/rails db:migrate:reset  (rails db:migrate:status, undo one, rails db:migrate:down VERSION=, undo all, db:migrate VERSION=0) or bin/setup

## Optional

7. $ rails stimulus_reflex:install (extra config needed see link [https://docs.stimulusreflex.com/])

# Optional

10. $ rails generate favicon (put your favicon.png in assets/images, along with favicon.json in config folder) [see https://realfavicongenerator.net]
   
11. $ rails g rspec:install  (for testing)

(for test db run $ rails db:test:prepare)

12. Run Importmap to set/pin Javascript  [https://github.com/rails/importmap-rails]

# Importmap Examples 

 ./bin/importmap
 ./bin/importmap pin bootstrap  (pin bootstrap & popper, ie import & set)
 ./bin/importmap json (show maps)

## Mandatory - Start server! ##

$ bin/dev   (thin start to just start server)

(For other cmds see  related docs/links)

# Examples

$ rails action_text:install (already done here)

$ rails generate administrate:install (if use default Administrate, for Admin example = in console: User.first.update :admin => true) )

# Live reload/watch CSS

$ $ yarn build:css --watch (separate terminal watch/update changes in styles)

## Author

Paul Anthony McGowan - xhostcom@gmail.com

https://www.patreon.com/xhostcom

### Contributing ###

Use Gitflow/Hubflow only develop branch

[https://datasift.github.io/gitflow/GitFlowForGitHub.html]

1.Clone it
2.Create your feature branch (git checkout -b my-new-feature)
3.Commit your changes (git commit -am 'Add awesome feature')
4.Push to the branch (git push origin my-awesome-feature)
5.Create a new Pull Request

