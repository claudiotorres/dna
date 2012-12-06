# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

Site.delete_all
Dnatest.delete_all
Answer.delete_all
Weight.delete_all
Option.delete_all
Question.delete_all
Evaluation.delete_all
puts "Success: Old Database data deleted"

evaluation_data = Evaluation.create(:order => 1, :name => 'English', :description => 'English Version' )
puts "Success: Evaluation data loaded"

question_data = evaluation_data.questions.create(:order => 1, :name => 'Content', :description => 'Do you have a SiteMap.xml?')
puts "Success: Question 1 data loaded"

option_data = question_data.options.create(:order => 1, :name => 'Competitive', :description => 'No. No idea what it means.')
puts "Success: Option data loaded"
option_data.weights.create(:value => 1, :strategyid => 'Content')

option_data = question_data.options.create(:order => 2, :name => 'Best Practice', :description => 'Yes. We created once.')
puts "Success: Option data loaded"
option_data.weights.create(:value => 4, :strategyid => 'Content')

option_data = question_data.options.create(:order => 3, :name => 'Excellence', :description => 'Sure. We keep updated.')
puts "Success: Option data loaded"
option_data.weights.create(:value => 8, :strategyid => 'Content')
puts "Success: Question 1 options data loaded"

question_data = evaluation_data.questions.create(:order => 2, :name => 'Social', :description => 'Do you have a Social Media Strategy?')
puts "Success: Question 2 data loaded"

option_data = question_data.options.create(:order => 1, :name => 'Competitive', :description => 'No. We have some social media profiles.')
puts "Success: Option data loaded"
option_data.weights.create(:value => 1, :strategyid => 'Social')

option_data = question_data.options.create(:order => 2, :name => 'Best Practice', :description => 'Yes. We create company profiles.')
puts "Success: Option data loaded"
option_data.weights.create(:value => 4, :strategyid => 'Social')

option_data = question_data.options.create(:order => 3, :name => 'Excellence', :description => 'Sure. We have a team working on that.')
puts "Success: Option data loaded"
option_data.weights.create(:value => 8, :strategyid => 'Social')
puts "Success: Question 2 options data loaded"

question_data = evaluation_data.questions.create(:order => 3, :name => 'Advertise', :description => 'Do you have a Google AdWords Campaign?')
puts "Success: Question 3 data loaded"

option_data = question_data.options.create(:order => 1, :name => 'Competitive', :description => 'No. Never tried.')
puts "Success: Option data loaded"
option_data.weights.create(:value => 1, :strategyid => 'Advertise')

option_data = question_data.options.create(:order => 2, :name => 'Best Practice', :description => 'Yes. We created once.')
puts "Success: Option data loaded"
option_data.weights.create(:value => 4, :strategyid => 'Advertise')

option_data = question_data.options.create(:order => 3, :name => 'Excellence', :description => 'Sure. It is part of our strategy.')
puts "Success: Option data loaded"
option_data.weights.create(:value => 8, :strategyid => 'Advertise')
puts "Success: Question 3 options data loaded"

