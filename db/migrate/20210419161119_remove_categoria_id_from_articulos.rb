class RemoveCategoriaIdFromArticulos < ActiveRecord::Migration[6.1]
  def change
    remove_column :articulos, :categoria, :text
  end
end
