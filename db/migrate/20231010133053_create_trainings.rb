class CreateTrainings < ActiveRecord::Migration[7.0]
  def change
    create_table :trainings do |t|
      t.string :type_training, limit: 50
      t.integer :serie_training
      t.integer :repeticoes

      t.timestamps
    end
  end
end
