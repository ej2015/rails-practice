require 'rails_helper'

RSpec.describe "properties/new", type: :view do
  before(:each) do
    assign(:property, Property.new(
      :mortgagee => "MyString",
      :hc => 1,
      :building => 1,
      :renovation => 1,
      :h_type => 1,
      :r_type => 1,
      :staying => false,
      :p_type => 1
    ))
  end

  it "renders new property form" do
    render

    assert_select "form[action=?][method=?]", properties_path, "post" do

      assert_select "input[name=?]", "property[mortgagee]"

      assert_select "input[name=?]", "property[hc]"

      assert_select "input[name=?]", "property[building]"

      assert_select "input[name=?]", "property[renovation]"

      assert_select "input[name=?]", "property[h_type]"

      assert_select "input[name=?]", "property[r_type]"

      assert_select "input[name=?]", "property[staying]"

      assert_select "input[name=?]", "property[p_type]"
    end
  end
end
