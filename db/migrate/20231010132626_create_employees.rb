class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :nome_employee, limit: 100
      t.string :rg_employee, limit: 20
      t.string :email_employee, limit: 100
      t.date :data_inicio
      t.decimal :salario_employee

      t.timestamps
    end
    add_index :employees, :rg_employee, unique: true
  end
end
