require 'rails_helper'

RSpec.describe "lessons/edit", type: :view do
  before(:each) do
    @lesson = assign(:lesson, Lesson.create!(
      :title => "MyString",
      :description => "MyText",
      :document => "",
      :video_url => "MyString"
    ))
  end

  it "renders the edit lesson form" do
    render

    assert_select "form[action=?][method=?]", lesson_path(@lesson), "post" do

      assert_select "input#lesson_title[name=?]", "lesson[title]"

      assert_select "textarea#lesson_description[name=?]", "lesson[description]"

      assert_select "input#lesson_document[name=?]", "lesson[document]"

      assert_select "input#lesson_video_url[name=?]", "lesson[video_url]"
    end
  end
end
