require 'rails_helper'

RSpec.describe "maids/show", type: :view do
  before(:each) do
    @maid = assign(:maid, Maid.create!(
      :m_fname => "M Fname",
      :m_lname => "M Lname",
      :m_ms => 2,
      :m_nationality => 3,
      :m_passport => "M Passport",
      :m_emp_status => 4,
      :m_wp_no => "M Wp No",
      :sb_transmission => "Sb Transmission",
      :cov_months => 5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/M Fname/)
    expect(rendered).to match(/M Lname/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/M Passport/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/M Wp No/)
    expect(rendered).to match(/Sb Transmission/)
    expect(rendered).to match(/5/)
  end
end
