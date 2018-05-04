class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :mortgagee
      t.integer :hc
      t.integer :building
      t.integer :renovation
      t.integer :h_type
      t.integer :r_type
      t.boolean :staying
      t.integer :p_type

      t.timestamps
    end
  end
end
