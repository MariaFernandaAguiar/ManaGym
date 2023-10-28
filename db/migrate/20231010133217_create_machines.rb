class CreateMachines < ActiveRecord::Migration[7.0]
  def change
    create_table :machines do |t|
      t.integer :quan_machine
      t.string :type_machine
      t.string :nome_machine

      t.timestamps
    end
  end
end
