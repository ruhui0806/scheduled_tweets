## Description

This project is for learning ruby on rails. The code is donw by following a course from youtube: Ruby on rails for beginners

## Course information

https://www.youtube.com/watch?v=wkNR1hG4yOk&list=PLm8ctt9NhMNV75T9WYIrA6m9I_uw7vS56&index=1

# Code in use:

Bundler is a dependency management tool for Ruby which is available as a gem that can be installed through the RubyGems package manager which comes built-in using the following command:

    gem install bundler
    bundle

after adding a new gem to tge Gemfile, you need you install the gem using bundle:

    bundle install

to bring out all the routes:

    rails routes

undo migration:

    rails db:rollback

and then run the migration again:

    rails db:migrate

if you want to combine the rollback and migration, run the following commands:

    rails db:migrate:redo

To check if there's any error in the db in the rails concole:

    modelName.errors.first

## Flash:

    flash[:alert] = "Oops, something went wrong!" # can comment out and use form's alert instead

## render the user params

    params
    # => {"authenticity_token"=>"[FILTERED]", "user"=>{"email"=>"123@qwe.com", "password"=>"[FILTERED]", "password_confirmation"=>"[FILTERED]"}, "commit"=>"Sign Up"}
    render plain params[:user]
    #=> only render the user params

## turbor

Now turbo drive is a default part of rails 7. Turbo drive is a tool that handles the link clicks and form submissions. sending request to the server and updating just a portion of the page, instead of reloading the full page as before. Besides, it doesnt know how to handle error reponses. Therefore there is no error messages pop out. To solve this problem, just disable the turbo from the form by adding:

    data: {turbo: "false"}

## Conventions

- partials: "\_partial_name.html.erb"
