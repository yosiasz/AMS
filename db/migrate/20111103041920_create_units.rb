class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :name
      t.string :number
      t.integer :numberofrooms
      t.references :apartmentcomplex

      t.timestamps
    end
    add_index :units, :apartmentcomplex_id
  end
end
