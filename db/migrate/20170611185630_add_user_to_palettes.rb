class AddUserToPalettes < ActiveRecord::Migration[5.0]
  def change
    add_reference :palettes, :user, foreign_key: true
  end
end
