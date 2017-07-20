require './environment'

module FormsLab
  	class App < Sinatra::Base

	    get '/' do
	    	erb :'index.html'
	    end

	    get '/new' do
	    	erb :'pirates/new'
	    end

	    get '/pirates' do
	    	@pirates = Pirate.all 
	    	erb :'pirates/index'
	    end

	    
	    get '/pirates/:id' do 
			@pirate = Pirate.find(params[:id])
			erb :'/pirates/show'
		end

	    post '/pirates' do 
			@pirate = Pirate.new(params[:pirate])
				# can use create because the model inherits from ActiveRecord base 
			# OR, could do:
			redirect "/pirates" 	
		end
 	end

end
