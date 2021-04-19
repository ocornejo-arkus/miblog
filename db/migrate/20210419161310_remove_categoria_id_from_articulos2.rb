class RemoveCategoriaIdFromArticulos2 < ActiveRecord::Migration[6.1]
  def change
    remove_column :articulos, :categoria_id, :text
  end
end
