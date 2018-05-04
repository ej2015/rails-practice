class CreateMaids < ActiveRecord::Migration[5.1]
  def change
    create_table :maids do |t|
      t.string :m_fname
      t.string :m_lname
      t.integer :m_ms
      t.integer :m_nationality
      t.datetime :m_dob
      t.string :m_passport
      t.integer :m_emp_status
      t.string :m_wp_no
			t.datetime :m_wp_exp
      t.string :sb_transmission
      t.integer :cov_months
			t.boolean :security_bond
			t.boolean :waiver_of_indemnity
			t.integer :performance_bond

      t.timestamps
    end
  end
end
