require 'rails_helper'

RSpec.describe "quizzes/edit", type: :view do
  before(:each) do
    @quiz = assign(:quiz, Quiz.create!(
      :title => "MyString",
      :description => "MyText",
      :document => "",
      :quiz_url => "MyString"
    ))
  end

  it "renders the edit quiz form" do
    render

    assert_select "form[action=?][method=?]", quiz_path(@quiz), "post" do

      assert_select "input#quiz_title[name=?]", "quiz[title]"

      assert_select "textarea#quiz_description[name=?]", "quiz[description]"

      assert_select "input#quiz_document[name=?]", "quiz[document]"

      assert_select "input#quiz_quiz_url[name=?]", "quiz[quiz_url]"
    end
  end
end
