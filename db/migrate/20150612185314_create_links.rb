class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.integer :user_id
      t.string :destination
      t.string :title
      t.string :timestamps

      t.timestamps null: false
    end
  end
end
