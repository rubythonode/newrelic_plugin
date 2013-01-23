Gem::Specification.new do |s|
  s.specification_version = 2 if s.respond_to? :specification_version=
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.rubygems_version = '1.3.5'

  ## Leave these as is they will be modified for you by the rake gemspec task.
  ## If your rubyforge_project name is different, then edit it and comment out
  ## the sub! line in the Rakefile
  s.name          = 'newrelic_plugin'
  s.version       = '0.0.0'
  s.date              = '2013-01-17'
  s.rubyforge_project = 'newrelic_plugin'

  ## Make sure your summary is short. The description may be as long
  ## as you like.
  s.summary     = "New Relic Ruby Plugin SDK"
  s.description = <<-EOF
This is the core gem for developing plugins for New Relic.  It is used to 
send plugin data to New RElic from non-application sources.
  EOF

  ## List the primary authors. If there are a bunch of authors, it's probably
  ## better to set the email to an email list or something. If you don't have
  ## a custom homepage, consider using your GitHub URL or the like.
  s.authors       = ["Lee Atchison"]
  s.email         = ["lee@newrelic.com"]
  s.homepage =    'http://newrelic.com'

  ## This gets added to the $LOAD_PATH so that 'lib/NAME.rb' can be required as
  ## require 'NAME.rb' or'/lib/NAME/file.rb' can be as require 'NAME/file.rb'
  s.require_paths = %w[lib]

  ## If your gem includes any executables, list them here.
  # s.executables   = s.files.grep(%r{^bin/}).map{ |f| File.basename(f) }

  ## Specify any RDoc options here. You'll want to add your README and
  ## LICENSE files to the extra_rdoc_files list.
  s.rdoc_options = ["--charset=UTF-8",
                    "--main", "README.rdoc"]
  s.extra_rdoc_files = %w[README.rdoc LICENSE]

  ## List your runtime dependencies here. Runtime dependencies are those
  ## that are needed for an end user to actually USE your code.
  # s.add_dependency('newrelic_plugin', ">= 1.0.0")
  s.add_dependency 'faraday', '>= 0.8.1'
  s.add_dependency 'json'

  ## List your development dependencies here. Development dependencies are
  ## those that are only needed during development
  s.add_development_dependency "minitest"
  s.add_development_dependency "vcr"

  ## Leave this section as-is. It will be automatically generated from the
  ## contents of your Git repository via the gemspec task. DO NOT REMOVE
  ## THE MANIFEST COMMENTS, they are used as delimiters by the task.
  # = MANIFEST =
  s.files = %w[
    Gemfile
    LICENSE
    README.rdoc
    Rakefile
    build_release_repo.sh
    lib/newrelic_plugin.rb
    lib/newrelic_plugin/agent.rb
    lib/newrelic_plugin/config.rb
    lib/newrelic_plugin/data_collector.rb
    lib/newrelic_plugin/error.rb
    lib/newrelic_plugin/nr_connect.rb
    lib/newrelic_plugin/processor.rb
    lib/newrelic_plugin/processors/epoch_counter_processor.rb
    lib/newrelic_plugin/processors/rate_processor.rb
    lib/newrelic_plugin/run.rb
    lib/newrelic_plugin/setup.rb
    lib/newrelic_plugin/simple_syntax.rb
    newrelic_plugin.gemspec
    newrelic_plugin.gemspec
    newrelic_plugin.gemspec
  ]
  # = MANIFEST =

  ## Test files will be grabbed from the file list. Make sure the path glob
  ## matches what you actually use.
  s.test_files = s.files.select { |path| path =~ /^test\/test_.*\.rb/ }

end
