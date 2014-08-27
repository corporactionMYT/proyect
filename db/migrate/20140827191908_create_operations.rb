class CreateOperations < ActiveRecord::Migration
  def change
    create_table :operations do |t|
      t.string :name
      t.references :area, index: true
      t.text :description
      t.string :maquina
      t.string :time_standar

      t.timestamps
    end
  end
end
