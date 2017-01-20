class HomeController < ApplicationController

  def inicio
  	@titulo = "Bienvenidos"
  end

  def clientes
  	@titulo = "Clientes"
  end

  def Precios
  	@titulo = "Precios"
  end

  def usuarios
  	@titulo = "Usuarios"
  end
end
