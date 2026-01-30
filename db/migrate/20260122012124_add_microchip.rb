class AddMicrochip < ActiveRecord::Migration[8.1]
  def change
    add_column :create_cats, :microchip_number, :string
  end
end
