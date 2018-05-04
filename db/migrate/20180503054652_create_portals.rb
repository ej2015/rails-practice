class CreatePortals < ActiveRecord::Migration[5.1]
  def change
    create_table :portals do |t|
      t.integer :agency_code
      t.integer :policy
      t.integer :product_type
      t.integer :cp
      t.float :base_premium
      t.float :discount
      t.float :premium
      t.string :email
      t.string :first_name
      t.string :last_name
      t.datetime :dob
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
