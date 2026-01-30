class CreateCreateCats < ActiveRecord::Migration[8.1]
  def change
    create_table :create_cats do |t|
      t.string :name
      t.string :sex
      t.text :description
      t.boolean :adopted

      t.timestamps
    end
  end
end
