require 'rails_helper'

RSpec.describe "properties/index", type: :view do
  before(:each) do
    assign(:properties, [
      Property.create!(
        :mortgagee => "Mortgagee",
        :hc => 2,
        :building => 3,
        :renovation => 4,
        :h_type => 5,
        :r_type => 6,
        :staying => false,
        :p_type => 7
      ),
      Property.create!(
        :mortgagee => "Mortgagee",
        :hc => 2,
        :building => 3,
        :renovation => 4,
        :h_type => 5,
        :r_type => 6,
        :staying => false,
        :p_type => 7
      )
    ])
  end

  it "renders a list of properties" do
    render
    assert_select "tr>td", :text => "Mortgagee".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
  end
end
