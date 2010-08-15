require File.dirname(__FILE__) + '/_base'

module Readme
  class Markdown < Base
  
    def initialize config, options = {}
      super
      self.readme = 'README.markdown'
    end
     
    def readme
%Q{# #{app_name} #

The #{app_name} project ...

## Installation ##

## Usage ##

## Copyright ##

Copyright (c) <#{Time.new.year}> <#{config[:user][:name]}>}
    end
  end
end