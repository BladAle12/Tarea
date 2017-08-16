class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :Alumno
      t.integer :Edad
      t.string :Carrera

      t.timestamps null: false
    end
  end
end
