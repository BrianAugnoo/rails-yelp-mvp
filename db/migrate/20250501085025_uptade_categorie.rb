class UptadeCategorie < ActiveRecord::Migration[8.0]
  def change
    rename_column :restaurants, :catégorie, :categorie
  end
end
