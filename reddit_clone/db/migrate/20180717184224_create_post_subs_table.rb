class CreatePostSubsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :post_subs_tables do |t|
      t.integer :post_id, null: false
      t.integer :sub_id, null: false
    end
    
    add_index :post_subs_tables, :post_id
    add_index :post_subs_tables, :sub_id
  end
end
