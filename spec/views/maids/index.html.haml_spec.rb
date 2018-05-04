require 'rails_helper'

RSpec.describe "maids/index", type: :view do
  before(:each) do
    assign(:maids, [
      Maid.create!(
        :m_fname => "M Fname",
        :m_lname => "M Lname",
        :m_ms => 2,
        :m_nationality => 3,
        :m_passport => "M Passport",
        :m_emp_status => 4,
        :m_wp_no => "M Wp No",
        :sb_transmission => "Sb Transmission",
        :cov_months => 5
      ),
      Maid.create!(
        :m_fname => "M Fname",
        :m_lname => "M Lname",
        :m_ms => 2,
        :m_nationality => 3,
        :m_passport => "M Passport",
        :m_emp_status => 4,
        :m_wp_no => "M Wp No",
        :sb_transmission => "Sb Transmission",
        :cov_months => 5
      )
    ])
  end

  it "renders a list of maids" do
    render
    assert_select "tr>td", :text => "M Fname".to_s, :count => 2
    assert_select "tr>td", :text => "M Lname".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "M Passport".to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => "M Wp No".to_s, :count => 2
    assert_select "tr>td", :text => "Sb Transmission".to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
  end
end
