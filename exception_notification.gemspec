Gem::Specification.new do |s|
  s.name = 'exception_notification'
  s.version = '3.0.1'
  s.authors = ["Jamis Buck", "Josh Peek"]
  s.date = %q{2012-10-15}
  s.summary = "Exception notification for Rails apps"
  s.homepage = "http://smartinez87.github.com/exception_notification"
  s.email = "smartinez87@gmail.com"

  s.files = `git ls-files`.split("\n")
  s.test_files = `git ls-files -- test`.split("\n")
  s.require_path = 'lib'

  s.add_dependency("actionmailer", ">= 3.0.4")
  s.add_dependency("tinder", "~> 1.8")
  s.add_dependency("delayed_job", '~>3.0.0')
  s.add_dependency("ruby-growl", "3.0")
  s.add_development_dependency "rails", ">= 3.0.4"
  s.add_development_dependency "mocha", ">= 0.11.3"
  s.add_development_dependency "sqlite3", ">= 1.3.4"
end
