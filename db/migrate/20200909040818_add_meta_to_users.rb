class AddMetaToUsers < ActiveRecord::Migration[5.2]
  def change
    # Note that neither of the new columns is a reference
    # (Rails enforced foreign key). This is because Rails doesn’t know which
    # User type to use (and thus which table to lookup the foreign key in)
    # without you explicity providing it in the meta_type column.
    add_column :users, :meta_id, :integer
    add_column :users, :meta_type, :string

    add_index :users, [:meta_id, :meta_type]
  end
end
