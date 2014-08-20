class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.references :document, index: true
      t.string :number_document
      t.string :name
      t.string :last_name
      t.string :gender
      t.string :street_address
      t.string :email
      t.string :phone
      t.references :area, index: true
      t.references :user, index: true
      t.references :online, index: true

      t.timestamps
    end
  end
end
