class AddGymToMachine < ActiveRecord::Migration[7.0]
  def change
    add_reference :machines, :gym, foreign_key: true
  end
end
