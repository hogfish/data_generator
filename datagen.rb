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
  when "words"
    output = dg.random_words(ARGV[1])
  when "special_chars"
    output = dg.special_characters
  else
    #TODO: Make this a better error message
    output = "Invalid parameters."
  end
    #TODO: fix so the "Invalid parameters" message doesn't get copied to clipboard.
    `echo #{output} | #{paste_command}`
    puts output
else
  #TODO: Make this a better error message
    puts "Please specify a function."
end