class AddNameToMaids < ActiveRecord::Migration[5.1]
  def change
		add_column :maids, :name, :string
  end
end
