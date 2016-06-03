class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :nombre
      t.string :marca
      t.string :tipo
      t.text :descripcion

      t.timestamps null: false
    end
  end
end
