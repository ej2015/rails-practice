require 'rails_helper'

RSpec.describe "maids/edit", type: :view do
  before(:each) do
    @maid = assign(:maid, Maid.create!(
      :m_fname => "MyString",
      :m_lname => "MyString",
      :m_ms => 1,
      :m_nationality => 1,
      :m_passport => "MyString",
      :m_emp_status => 1,
      :m_wp_no => "MyString",
      :sb_transmission => "MyString",
      :cov_months => 1
    ))
  end

  it "renders the edit maid form" do
    render

    assert_select "form[action=?][method=?]", maid_path(@maid), "post" do

      assert_select "input[name=?]", "maid[m_fname]"

      assert_select "input[name=?]", "maid[m_lname]"

      assert_select "input[name=?]", "maid[m_ms]"

      assert_select "input[name=?]", "maid[m_nationality]"

      assert_select "input[name=?]", "maid[m_passport]"

      assert_select "input[name=?]", "maid[m_emp_status]"

      assert_select "input[name=?]", "maid[m_wp_no]"

      assert_select "input[name=?]", "maid[sb_transmission]"

      assert_select "input[name=?]", "maid[cov_months]"
    end
  end
end
