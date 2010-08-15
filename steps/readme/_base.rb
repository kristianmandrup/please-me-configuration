module Readme
  class Base < PleaseMe::Step
    attr_accessor :config, :options

    attr_accessor :readme
  
    def initialize config, options = {}
      self.config = config
      self.options = options if options
      self.readme = 'README.txt'
    end
     
    def app_name
      options[:app_name].humanize
    end

    def execute
      create_file readme, content do
      end
    end
  
    def revert
      remove_file readme, content 
    end
    
    protected

    def content
      raise "Must be overridden by subclass"
    end    
  end
end