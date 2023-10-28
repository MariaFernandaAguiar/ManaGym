class AddGymToEmployee < ActiveRecord::Migration[7.0]
  def change
    add_reference :employees, :gym, foreign_key: true
  end
end
