class CreateCaballos < ActiveRecord::Migration
  def change
    create_table :caballos do |t|
      t.string :nombre
      t.string :padre
      t.string :madre
      t.date :fechanac
      t.string :lugarnac
      t.string :sexo
      t.string :color
      t.float :peso
      t.string :alzada
      t.string :propietario
      t.boolean :convenio
      t.boolean :defuncion

      t.timestamps
    end
  end
end
