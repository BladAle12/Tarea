class CreateMateria < ActiveRecord::Migration
  def change
    create_table :materia do |t|
      t.string :nombre
      t.string :codigomat
      t.integer :dias
      t.datetime :fechainicio
      t.binary :estatus

      t.timestamps null: false
    end
  end
end
