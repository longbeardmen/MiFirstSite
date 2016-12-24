class CreateWallComments < ActiveRecord::Migration
  def change
    create_table :wall_comments do |t|
      t.string :title
      t.text :message
    end
  end
end
