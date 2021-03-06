require 'rubygems'
require_relative 'lib/data_generator'

dg = DataGenerator.new

def paste_command
    if RUBY_PLATFORM =~ /mswin/
        'clip'
    else
        'pbcopy'
    end
end

if ARGV[0] != nil
  case ARGV[0]
  when "email"
    output = dg.random_email(ARGV[1])
    `echo #{output} | #{paste_command}`
    puts output
  when "words"
    output = dg.random_words(ARGV[1])
    `echo #{output} | #{paste_command}`
    puts output
  when "special_chars"
    output = dg.special_characters
    `echo #{output} | #{paste_command}`
    puts "Special characters copied to clipboard."
  else
    #TODO: Make this a better error message
    puts"Invalid parameters."
  end
else
  #TODO: Make this a better error message
    puts "Please specify a function."
end