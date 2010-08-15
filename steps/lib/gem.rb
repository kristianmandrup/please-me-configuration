module Lib
  class Gem < PleaseMe::Step
    attr_accessor :config, :options
  
    def initialize config, options = {}
      self.config = config
      self.options = options if options
    end
     
    def execute  
      create_file options[:app_name]
      create_dir  options[:app_name]
    end
  
    def revert
      remove_file options[:app_name]
      remove_dir  options[:app_name] 
    end    
  end
end