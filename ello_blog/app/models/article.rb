class Article < ActiveRecord::Base
  belongs_to :author, class_name: "User"
  belongs_to :category

  validates :title, :body, :author_id, :category_id, presence: true

end