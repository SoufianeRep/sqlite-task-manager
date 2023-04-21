require 'colorize'
require "sqlite3"
DB = SQLite3::Database.new('tasks.db')
DB.results_as_hash = true
require_relative 'task'

# TODO: run CRUD tests

# puts '#### .find'.red
# task = Task.find(1) # this should return an instance
# nil_task = Task.find(100) # this should return nil
# puts "#{task.title} - #{task.description}"
# puts 'This should be nil:'
# p nil_task

# puts '#### .save(create)'.blue
# task = Task.new(title: 'Relax', description: 'Avoid Slackbot flashcards msg for a day')
# task.save
# puts 'This task should have an ID:'
# p task.id


# puts '#### .save(update)'.green
# task = Task.find(1)
# puts "#{task.title}"
# task.title = 'Eat pizza'
# task.save
# puts "#{task.title}"

# puts '#### .all'.yellow
# tasks = Task.all
# tasks.each do |task|
#   puts "#{task.title} - #{task.description}"
# end

# puts '#### .destroy'.magenta
# task = Task.find(1)
# task.destroy
# puts "This should be nil:"
# p task = Task.find(1)
