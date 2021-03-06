Gem::Specification.new do |s|
  s.name        = 'rails_base'
  s.version     = '0.1.8'
  s.license     = 'GPLv3'
  s.summary     = "A set of gems, shared configurations and tasks to make easy maintain Rails projects."
  s.description = "ExtraPolo shared base configurations"
  s.authors     = ["polo"]
  s.email       = 'x@extrapolo.com'
  s.files       = Dir["{config,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.homepage    = 'https://git.tacticaltech.org/ttc/rails_base'

  s.add_dependency 'rails',          '~> 4.2'     # web framework
  s.add_dependency 'puma',           '~> 2.11'    # web server
  s.add_dependency 'mysql2',         '= 0.3.18'   # database
  s.add_dependency 'slim-rails',     '~> 3.0'     # template
  s.add_dependency 'sass-rails',     '~> 5.0'     # style
  s.add_dependency 'coffee-rails',   '~> 4.1.0'   # coffescript
  s.add_dependency 'jquery-rails',   '>= 4.0.3'   # jquery
  s.add_dependency 'uglifier',       '>= 1.3.0'   # minify js
  s.add_dependency 'therubyracer',   '>= 0.12.2'  # faster minify js
  s.add_dependency 'oj',             '>= 2.12.10' # faster json
  s.add_dependency 'airbrake',       '~> 4.3'     # error catcher
  s.add_dependency 'friendly_id',    '~> 5.1'     # generate URL slugs
  s.add_dependency 'will_paginate',  '~> 3.1'     # pagination

end