class AddAutorIdToArticulos < ActiveRecord::Migration[6.1]
  def change
    add_column :articulos, :autor_id, :integer
    add_index :articulos, :autor_id
  end
end
