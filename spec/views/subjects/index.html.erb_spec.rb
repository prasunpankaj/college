require 'rails_helper'

RSpec.describe "subjects/index", type: :view do
  before(:each) do
    assign(:subjects, [
      Subject.create!(
        :name => "Name",
        :short_name => "Short Name"
      ),
      Subject.create!(
        :name => "Name",
        :short_name => "Short Name"
      )
    ])
  end

  it "renders a list of subjects" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Short Name".to_s, :count => 2
  end
end
