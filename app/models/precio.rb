class Precio < ActiveRecord::Base
	belongs_to :caballo
	belongs_to :cliente
	belongs_to :tipo
	belongs_to :moneda
end
