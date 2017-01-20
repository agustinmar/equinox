class Cliente < ActiveRecord::Base
	has_many :precio
	before_save :upcase_fields

	def upcase_fields
		self.nombre.upcase!
		self.paterno.upcase!
		self.materno.upcase!
	end
end
