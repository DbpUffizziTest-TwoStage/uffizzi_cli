# frozen_string_literal: true

require 'thor'

module Uffizzi
  module UI
    class Shell
      def initialize
        @shell = Thor::Shell::Color.new
      end

      def say(msg)
        @shell.say(msg)
      end

      def print_in_columns(messages)
        @shell.print_in_columns(messages)
      end

      def print_table(table_data)
        @shell.print_table(table_data)
      end

      def last_message
        @shell.send(:stdout).string.strip
      end

      def error(msg)
        @shell.say(msg, Thor::Shell::Color::RED)
      end
    end
  end
end
