module Readme
  class Rspec2 < PleaseMe::Step
    attr_accessor :config, :options

    attr_accessor :file
  
    def initialize config, options = {}
      self.config = config
      self.options = options if options
    end
     
    def execute  
      create_file '.rspec' do
        '--format nested --color'
      end
      create_dir 'spec' do        
      create_file 'spec_helper.rb', spec_helper
      end
    end
  
    def revert
      remove_file '.rspec'       
      remove_dir 'spec'      
    end
    
    protected

    def spec_helper
      %Q{require 'rspec'
# autorun
require '#{options[:app_name]}'

RSpec.configure do |config|
end}
    end
  end
end