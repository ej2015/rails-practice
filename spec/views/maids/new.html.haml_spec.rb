require 'rails_helper'

RSpec.describe "maids/new", type: :view do
  before(:each) do
    assign(:maid, Maid.new(
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

  it "renders new maid form" do
    render

    assert_select "form[action=?][method=?]", maids_path, "post" do

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
