require 'rails_helper'

RSpec.describe "portals/new", type: :view do
  before(:each) do
    assign(:portal, Portal.new(
      :agency_code => "MyString",
      :policy => "MyString",
      :type => 1,
      :cp => 1,
      :base_premium => 1.5,
      :discount => 1.5,
      :premium => 1.5,
      :email => "MyString",
      :first_name => "MyString",
      :last_name => "MyString",
      :end_date => "MyString"
    ))
  end

  it "renders new portal form" do
    render

    assert_select "form[action=?][method=?]", portals_path, "post" do

      assert_select "input[name=?]", "portal[agency_code]"

      assert_select "input[name=?]", "portal[policy]"

      assert_select "input[name=?]", "portal[type]"

      assert_select "input[name=?]", "portal[cp]"

      assert_select "input[name=?]", "portal[base_premium]"

      assert_select "input[name=?]", "portal[discount]"

      assert_select "input[name=?]", "portal[premium]"

      assert_select "input[name=?]", "portal[email]"

      assert_select "input[name=?]", "portal[first_name]"

      assert_select "input[name=?]", "portal[last_name]"

      assert_select "input[name=?]", "portal[end_date]"
    end
  end
end
