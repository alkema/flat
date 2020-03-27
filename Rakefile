$LOAD_PATH.unshift File.expand_path 'lib'

require 'rake/testtask'

task default: 'test'

Rake::TestTask.new do |task|
  task.pattern = 'test/*_test.rb'
end

require 'rdoc/task'

RDoc::Task.new do |rdoc|
  rdoc.main = 'README.rdoc'
  rdoc.rdoc_files.include('README.rdoc', 'lib/*.rb')
end

# require "github/markup"
# require "redcarpet"
require 'yard'
require 'yard/rake/yardoc_task'

YARD::Rake::YardocTask.new do |t|
  t.files = ['lib/**/*.rb', '-', 'README.md']
end
