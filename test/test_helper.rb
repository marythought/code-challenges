require 'minitest/autorun'
require 'minitest/spec'
require 'minitest/reporters'
Minitest::Reporters.use!

# single test: rake test TEST=spec/features/[NAME]_spec.rb TESTOPTS="--name=test_foobar1 -v"
