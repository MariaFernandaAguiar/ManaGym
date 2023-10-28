class CreateGyms < ActiveRecord::Migration[7.0]
  def change
    create_table :gyms do |t|
      t.string :nome_gym, limit: 100
      t.string :cnpj_gym, limit: 20
      t.integer :quan_student
      t.string :endereco_gym, limit: 100

      t.timestamps
    end
    add_index :gyms, :cnpj_gym, unique: true
  end
end
