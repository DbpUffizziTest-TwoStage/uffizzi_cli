# frozen_string_literal: true

require 'open3'

module Cli
  class Common
    class << self
      def show_manual(method_name)
        manual_doc_path = "man/uffizzi-#{method_name}"

        Open3.pipeline("man #{manual_doc_path}")
      end
    end
  end
end