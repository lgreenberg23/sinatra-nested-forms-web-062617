require './environment'

module FormsLab
  class App < Sinatra::Base

    get '/' do
    	erb :'index.html'
    end

    get '/new' do
    	erb :'pirates/new'
    end

    post '/pirates' do 
		@pirate = Pirate.new(name: params['name'], weight: params['weight'], height: params['height'])
			# can use create because the model inherits from ActiveRecord base 
		# OR, could do:
		# redirect to "/pirates" 
		
	end
 
end
end
