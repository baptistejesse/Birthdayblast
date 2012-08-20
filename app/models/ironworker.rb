require 'iron_worker'

class HelloWorker < IronWorker::Base

    attr_accessor :name

    # This is the method that will be run
    def run
        puts "Hello #{name}!"
    end
end