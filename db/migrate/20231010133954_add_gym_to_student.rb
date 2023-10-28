class AddGymToStudent < ActiveRecord::Migration[7.0]
  def change
    add_reference :students, :gym, foreign_key: true
  end
end
