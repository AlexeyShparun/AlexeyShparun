#!/usr/bin/env ruby

# frozen_string_literal: true

def get_middle(s)
    if s.length.even?
      s[s.length / 2 - 1] + s[s.length / 2]
    else
      s[s.length / 2]
  end
end

def run_cli
  loop do
    print 'Enter string: '
    input = gets.chomp
    break if input == 'exit!'

    if input.empty?
      puts 'Empty! Try again'
    else
      puts "Middle character: #{get_middle(input)}"
    end
  end
end


run_cli