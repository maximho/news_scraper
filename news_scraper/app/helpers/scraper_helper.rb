module ScraperHelper

	
	def scraper(url)
		scraper = Mechanize.new
		scraper.get(url)
	end

	def clarin
		clarin = scraper("http://www.clarin.com")
		clarin.at(".mt h2 span").text.strip
	end

	def pagina
		pagina = scraper("http://www.pagina12.com.ar") 
		pagina.at("div h3 a").text.strip
	end

	def nacion
		nacion = scraper("http://www.lanacion.com.ar")
		nacion.at("#apertura .primera h2 a").text.strip
	end

	def tiempo
		tiempo = scraper("http://tiempo.infonews.com")	
		tiempo.at("div .css-style-g1 .box-inside h1").text.strip
	end

end