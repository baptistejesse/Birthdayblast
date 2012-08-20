require 'iron_worker'

class HelloWorker < IronWorker::Base

    attr_accessor :user

    # This is the method that will be run
    def run(user)
        
    
    end
end