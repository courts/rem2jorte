require 'yard'
require 'rake/clean'

CLEAN.include('doc/', '*.gem')

YARD::Rake::YardocTask.new do |t|
  t.files   = ['bin/rem2jorte']
  t.options = ['--main', 'README', '--markup', 'markdown']
end
