class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :nombre
      t.string :descripcion
      t.string :string
      t.date :fecha_comienzo
      t.date :fecha_termino
      t.string :estado

      t.timestamps
    end
  end
end
