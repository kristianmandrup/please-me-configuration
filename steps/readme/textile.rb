require File.dirname(__FILE__) + '/_base'

module Readme
  class Rdoc < Base  
    def initialize config, options = {}
      super
      self.readme = 'README.textile'
    end
     
    protected
     
    def readme
%Q{h1. #{app_name}

The #{app_name} project ...

h2. Installation

h2. Usage

h2. Copyright

Copyright (c) <#{Time.new.year}> <#{config[:user][:name]}>}
    end  
  end
end