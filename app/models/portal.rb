class Portal < ApplicationRecord
	belongs_to :load, polymorphic: true
  enum agency_code: { gobear: 1001 }
  enum policy: { ecics_delux: 123, qbe_home_plus_standard: 233  }
	enum product_type: { maid_insurance: 0, property_insurance: 1, motor_insurance: 2, travel_insurance: 3 }
	enum cp: { ecics: 26, msig: 29, liberty_insurance: 8, qbe: 11 }
	
	def get_portal_payload
		{
			agency_code: Portal.agency_codes[agency_code],
			policy: Portal.policies[policy],
			type: Portal.product_types[product_type],
			cp: Portal.cps[cp],
			base_premium: base_premium,
			premium: premium,
			email: email,
			first_name: first_name,
			last_name: last_name,
			dob: get_date(dob),
			start_date: get_date(start_date)
		}
	end

	def get_load_payload
		case load.class.name
		when "Property"
			get_property_payload
		when "Maid"
			get_maid_payload
		end
	end

	def get_property_payload
		l = self.load
		{
			mortgagee: l.mortgagee,
			hc: l.hc/10_000,
			building: l.building/10_000,
			renovation: l.renovation/10_000,
			h_type: Property.h_types[l.h_type],
			r_type: Property.r_types[l.r_type],
			staying: get_boolean(l.staying),
			p_type: Property.p_types[l.p_type]
		}
	end

	def get_maid_payload
		l = self.load
		{
			m_fname: l.m_fname,
			m_lname: l.m_lname,
			m_ms: Maid.m_ms[l.m_ms],
			m_nationality: Maid.m_nationalities[l.m_nationality],
			m_dob: get_date(l.m_dob),
			m_passport: l.m_passport,
			m_emp_status: Maid.m_emp_statuses[l.m_emp_status],
			m_wp_no: l.m_wp_no,
			m_wp_exp: get_date(l.m_wp_exp),
			sb_transmission: l.sb_transmission,
			cov_months: Maid.cov_months[l.cov_months],
			security_bond: get_boolean(true),
			waiver_of_indemnity: get_boolean(l.waiver_of_indemnity),
			performance_bond: Maid.performance_bonds[l.performance_bond]
		}
	end

	def get_boolean(sel)
		sel ? "Y" : "N"
	end

	def get_date(date)
		date.strftime("%Y-%m-%d") if date.present?
	end


end
