require 'spec_helper'

describe "bookmarks/edit" do
  before(:each) do
    @bookmark = assign(:bookmark, stub_model(Bookmark,
      :chapters_total => "",
      :chapters_completed => "",
      :notes => "MyString",
      :url => "MyString",
      :title => "MyString",
      :page_number => "",
      :git_repo => "MyString"
    ))
  end

  it "renders the edit bookmark form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", bookmark_path(@bookmark), "post" do
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
