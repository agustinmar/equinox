class CreatePrecios < ActiveRecord::Migration
  def change
    create_table :precios do |t|
      t.integer :caballo_id
      t.integer :cliente_id
      t.decimal :importe
      t.integer :tipo_id
      t.integer :moneda_id

      t.timestamps
    end
  end
end