class CreateAlunos < ActiveRecord::Migration[7.0]
  def change
    create_table :alunos do |t|
      t.string :nome
      t.string :rg
      t.string :telefone
      t.string :email
      t.string :dataMatricula

      t.timestamps
    end
  end
end
