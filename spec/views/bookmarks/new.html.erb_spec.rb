require 'spec_helper'

describe "bookmarks/new" do
  before(:each) do
    assign(:bookmark, stub_model(Bookmark,
      :chapters_total => "",
      :chapters_completed => "",
      :notes => "MyString",
      :url => "MyString",
      :title => "MyString",
      :page_number => "",
      :git_repo => "MyString"
    ).as_new_record)
  end

  it "renders new bookmark form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bookmarks_path, "post" do
      assert_select "input#bookmark_chapters_total[name=?]", "bookmark[chapters_total]"
      assert_select "input#bookmark_chapters_completed[name=?]", "bookmark[chapters_completed]"
      assert_select "input#bookmark_notes[name=?]", "bookmark[notes]"
      assert_select "input#bookmark_url[name=?]", "bookmark[url]"
      assert_select "input#bookmark_title[name=?]", "bookmark[title]"
      assert_select "input#bookmark_page_number[name=?]", "bookmark[page_number]"
      assert_select "input#bookmark_git_repo[name=?]", "bookmark[git_repo]"
    end
  end
end
