class CreateCatedraticos < ActiveRecord::Migration
  def change
    create_table :catedraticos do |t|
      t.string :Catedratico
      t.integer :Edad
      t.date :FechaIngreso

      t.timestamps null: false
    end
  end
end
