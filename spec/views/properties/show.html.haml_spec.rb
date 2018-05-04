require 'rails_helper'

RSpec.describe "properties/show", type: :view do
  before(:each) do
    @property = assign(:property, Property.create!(
      :mortgagee => "Mortgagee",
      :hc => 2,
      :building => 3,
      :renovation => 4,
      :h_type => 5,
      :r_type => 6,
      :staying => false,
      :p_type => 7
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Mortgagee/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/7/)
  end
end
