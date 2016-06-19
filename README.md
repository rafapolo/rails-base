# ExtraPolo Base

The ExtraPolo Base are a set of gems, configurations and tasks that allow developers to have all they need to use on our web projects stack, keeping it easier to be mantained among several projects.

It consists of
```
gem 'rails',          '~> 4.2'     # web framework
gem 'puma',           '~> 2.11'    # web server
gem 'mysql2',         '= 0.3.18'   # database
gem 'slim-rails',     '~> 3.0'     # template
gem 'sass-rails',     '~> 5.0'     # style
gem 'coffee-rails',   '~> 4.1.0'   # coffescript
gem 'jquery-rails',   '>= 4.0.3'   # jquery
gem 'uglifier',       '>= 1.3.0'   # minify js
gem 'therubyracer',   '>= 0.12.2'  # faster minify js
gem 'oj',             '>= 2.12.10' # faster json
gem 'airbrake',       '~> 4.3'     # error catcher
gem 'friendly_id',    '~> 5.1'     # generate URL slugs
gem 'will_paginate',  '~> 3.1'     # pagination
```

Configurations for
+ errbit

Just add it to your Rails project Gemfile
```
gem 'ttc_rails_base', :git => 'git@github.com:rafapolo/rails-base.git'
```