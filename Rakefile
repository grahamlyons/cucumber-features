$: << File.dirname( __FILE__)
require 'rubygems'
require 'rake'

INVOKE_CUCUMBER = "bin/cucumber"

task :default => :run

task :install do
    system('bundle install --no-cache --binstubs --path vendor/bundle')
end

task :run => [:install]  do
    system("#{INVOKE_CUCUMBER}")
end
