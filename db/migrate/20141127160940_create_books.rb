class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :titre
      t.string :auteur
      t.string :description
      t.string :rayon
      
      t.timestamps
    end
  end
end
