require 'iron_worker'

class HelloWorker < IronWorker::Base


    # This is the method that will be run
    def run
      yield  
    
    end
end