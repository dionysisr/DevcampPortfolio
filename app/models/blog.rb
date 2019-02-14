class Blog < ApplicationRecord
	enum status: { draft: 0, published: 1 }
	extend FriendlyId
  friendly_id :title, use: :slugged
  attr_accessor :topic_id

  validates_presence_of :title, :body

  belongs_to :topic
end
