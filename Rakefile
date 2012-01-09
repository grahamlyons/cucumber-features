$: << File.dirname( __FILE__)
require 'rubygems'
require 'rake'

INVOKE_CUCUMBER = "bin/cucumber"
DIRS = ".bundle/ Gemfile.lock bin/ vendor/"

task :default => :run

task :install do
    system('bundle install --binstubs --path vendor/bundle')
end

task :run => [:install]  do
    system("#{INVOKE_CUCUMBER}")
end

task :clean do
    system("rm -rf #{DIRS}")
end
