require 'rails_helper'

RSpec.describe "portals/index", type: :view do
  before(:each) do
    assign(:portals, [
      Portal.create!(
        :agency_code => "Agency Code",
        :policy => "Policy",
        :type => 2,
        :cp => 3,
        :base_premium => 4.5,
        :discount => 5.5,
        :premium => 6.5,
        :email => "Email",
        :first_name => "First Name",
        :last_name => "Last Name",
        :end_date => "End Date"
      ),
      Portal.create!(
        :agency_code => "Agency Code",
        :policy => "Policy",
        :type => 2,
        :cp => 3,
        :base_premium => 4.5,
        :discount => 5.5,
        :premium => 6.5,
        :email => "Email",
        :first_name => "First Name",
        :last_name => "Last Name",
        :end_date => "End Date"
      )
    ])
  end

  it "renders a list of portals" do
    render
    assert_select "tr>td", :text => "Agency Code".to_s, :count => 2
    assert_select "tr>td", :text => "Policy".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.5.to_s, :count => 2
    assert_select "tr>td", :text => 5.5.to_s, :count => 2
    assert_select "tr>td", :text => 6.5.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "End Date".to_s, :count => 2
  end
end
