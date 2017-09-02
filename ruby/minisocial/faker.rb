require 'rubygems'
require 'faker'

puts Faker::Name.unique.name.scan(/\b\w*\b/)