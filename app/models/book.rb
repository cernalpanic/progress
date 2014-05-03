class Book < ActiveRecord::Base
  belongs_to :bookmark
  def generate_title
    "#{title}"
  end
end
