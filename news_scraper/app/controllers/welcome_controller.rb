class WelcomeController < ApplicationController

include ScraperHelper

	def index
		@clarin = clarin # ||=
		@pagina = pagina
		@nacion = nacion
		@tiempo = tiempo
	end	
end
