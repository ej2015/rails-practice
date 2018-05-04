class Maid < ApplicationRecord
	has_many :portals, as: :load
	enum m_ms: { single: 0, married: 1, divorced: 2, widowed: 3 }
	enum m_nationality: { philippines: 142, indonesia: 78, vietnam: 199 }
	enum m_emp_status: { renewal: 0, new_application: 1, transfer: 2 }
	enum cov_months: { months_26: 0, months_14: 1 }
	enum performance_bond: { id_70: 0, ph_40: 1, ph_70: 2 }
end
