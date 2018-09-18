class CreateSubs < ActiveRecord::Migration[5.1]
  def change
    create_table :subs do |t|
      t.string :title, null:false
      t.string :url
      t.text :content
      t.integer :user_id, null:false
      t.timestamps
    end
    add_index :subs, :user_id
  end
end
