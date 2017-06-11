class CreatePalettes < ActiveRecord::Migration[5.0]
  def change
    create_table :palettes do |t|
      t.string :color1, null: false
      t.string :color2, null: false
      t.string :color3, null: false
      t.string :color4, null: false

      t.timestamps
    end
  end
end
