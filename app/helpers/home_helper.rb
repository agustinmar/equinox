module HomeHelper
	def enlace(nombre,ruta)
		link_to nombre,ruta
	end

	def is_active?(link_path)
  		current_page?(link_path) ? "active" : ""
	end

	def menu_navegacion(opciones)
		html = '<ul class="nav navbar-nav">'
			opciones.each do |nombre,ruta|
				html += '<li class="'+is_active?(ruta)+'">' + enlace(nombre,ruta) + '</li>'
			end
		html += '</ul>'
		return html.html_safe
	end
end