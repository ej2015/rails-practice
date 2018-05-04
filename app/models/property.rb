class Property < ApplicationRecord
	has_many :portals, as: :load
	enum p_type: { hdb: 0, landed_property: 1, condominium: 2 }
	enum h_type: { owner: 0, tenant: 1 }
	enum r_type: { hdb_studio: 0, hdb_2: 1, hdb_3: 2, hdb_4: 3, hdb_5: 4 }
end
