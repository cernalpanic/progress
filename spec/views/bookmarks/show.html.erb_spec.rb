require 'spec_helper'

describe "bookmarks/show" do
  before(:each) do
    @bookmark = assign(:bookmark, stub_model(Bookmark,
      :chapters_total => "",
      :chapters_completed => "",
      :notes => "Notes",
      :url => "Url",
      :title => "Title",
      :page_number => "",
      :git_repo => "Git_repo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    rendered.should match(//)
    rendered.should match(/Notes/)
    rendered.should match(/Url/)
    rendered.should match(/Title/)
    rendered.should match(//)
    rendered.should match(/Git_repo/)
  end
end
