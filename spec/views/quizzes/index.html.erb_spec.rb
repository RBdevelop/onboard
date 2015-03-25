require 'rails_helper'

RSpec.describe "quizzes/index", type: :view do
  before(:each) do
    assign(:quizzes, [
      Quiz.create!(
        :title => "Title",
        :description => "MyText",
        :document => "",
        :quiz_url => "Quiz Url"
      ),
      Quiz.create!(
        :title => "Title",
        :description => "MyText",
        :document => "",
        :quiz_url => "Quiz Url"
      )
    ])
  end

  it "renders a list of quizzes" do
    render
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Quiz Url".to_s, :count => 2
  end
end
