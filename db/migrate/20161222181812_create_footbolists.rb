class CreateFootbolists < ActiveRecord::Migration
  def change
    create_table :footbolists do |t|
      t.string :name
      t.string :second_name
      t.string :description
      t.string :club

      t.timestamps null: false
    end
  end
end
