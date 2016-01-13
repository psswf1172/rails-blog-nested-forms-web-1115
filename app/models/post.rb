class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :post_tags
  has_many :tags, :through => :post_tags

  validates_presence_of :name, :content

  accepts_nested_attributes_for :tags

  # def tags
  #   []
  # end

  # def tags_attributes=(attributes)
  #   # Process the attributes hash
  # end

end
