require 'rails/generators'

module Autocomplete
  class UncompressedGenerator < Rails::Generators::Base
    def install
      # Copy the unobtrusive JS file
      copy_file('autocomplete-rails-uncompressed.js', 'vendor/assets/javascripts/autocomplete-rails.js')
    end

    def self.source_root
      File.join(File.dirname(__FILE__), '..', '..', 'assets', 'javascripts')
    end
  end
end
