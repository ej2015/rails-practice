require 'rails_helper'

RSpec.describe "portals/show", type: :view do
  before(:each) do
    @portal = assign(:portal, Portal.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Agency Code/)
    expect(rendered).to match(/Policy/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4.5/)
    expect(rendered).to match(/5.5/)
    expect(rendered).to match(/6.5/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/End Date/)
  end
end
