require 'rails_helper'

RSpec.describe "quizzes/show", type: :view do
  before(:each) do
    @quiz = assign(:quiz, Quiz.create!(
      :title => "Title",
      :description => "MyText",
      :document => "",
      :quiz_url => "Quiz Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Quiz Url/)
  end
end
