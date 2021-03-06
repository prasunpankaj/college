require 'rails_helper'

RSpec.describe "subjects/new", type: :view do
  before(:each) do
    assign(:subject, Subject.new(
      :name => "MyString",
      :short_name => "MyString"
    ))
  end

  it "renders new subject form" do
    render

    assert_select "form[action=?][method=?]", subjects_path, "post" do

      assert_select "input#subject_name[name=?]", "subject[name]"

      assert_select "input#subject_short_name[name=?]", "subject[short_name]"
    end
  end
end
