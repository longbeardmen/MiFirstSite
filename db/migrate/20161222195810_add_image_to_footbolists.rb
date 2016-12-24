class AddImageToFootbolists < ActiveRecord::Migration
  def change
    add_column :footbolists, :image, :string
  end
end
