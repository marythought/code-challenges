require 'rake/testtask'

task default: 'test'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.pattern = 'test/**/*_test.rb'
end

# usage: rake new[filename]
task :new, [:name] do |_t, args|
  sh "echo 'def #{args[:name]}(input)\nend\n' >> 'lib/#{args[:name]}.rb'"
  sh "echo 'require \"test_helper\"\nrequire \"#{args[:name]}.rb\"\n\ndescribe \"#{args[:name]}\" do\n\ttest_input = []\n\n\tit \"returns a valid result\" do\n\t\tassert_equal [], #{args[:name]}(test_input)\n\tend\nend' >> 'test/#{args[:name]}_test.rb'"
end
