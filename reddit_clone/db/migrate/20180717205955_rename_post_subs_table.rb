class RenamePostSubsTable < ActiveRecord::Migration[5.1]
  def change
    rename_table :post_subs_tables, :post_subs
  end
end
