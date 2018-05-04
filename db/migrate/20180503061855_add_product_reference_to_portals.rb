class AddProductReferenceToPortals < ActiveRecord::Migration[5.1]
  def change
		add_reference :portals, :load, polymorphic: true, index: true
  end
end
