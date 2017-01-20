class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :paterno
      t.string :materno
      t.string :telefono
      t.string :movil
      t.string :correo
      t.string :domicilio
      t.string :ciudad
      t.string :pais

      t.timestamps
    end
  end
end
