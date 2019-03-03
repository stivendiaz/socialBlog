module ApplicationHelper
  def markdown(text)
		markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
		return markdown.render(text).html_safe
	end

	def calculateTime(date)   
		seconds= ((date-DateTime.now)/1.minutes).round.abs * 60    
		puts seconds  	
		mm, ss = seconds.divmod(60) 	
		hh, mm = mm.divmod(60) 	
		dd, hh = hh.divmod(24)    
		if dd != 0
			if dd == 1
				return "#{dd} Dia"
			else
				return "#{dd} Dias"
			end  
		end    
		if hh != 0 
			if hh == 1    
				return "#{hh} Hora"   
			else
				return "#{hh} Horas" 
			end
		end    
		if mm != 0     
			if mm == 1    
				return "#{mm} Hora"   
			else
				return "#{mm} Horas" 
			end   
		end    
		if ss != 0     
			return "#{ss} Segundos"   
		end  	
		return "Algunos segundos" 
	end

end
