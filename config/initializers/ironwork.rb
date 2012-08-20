IronWorker.configure do |config|     
  config.token = 'Q5feOWu4vJ8f06FykRA2O3hAgBo'
  config.project_id = '5031a5f6c46dc357cd0026cb'
  
  config.database = Rails.configuration.database_configuration[Rails.env] 
end