class Gossip < ApplicationRecord
	validates :title, presence: true, length: { in: 3..14 }
	validates :content, presence: true

	belongs_to :user
	has_many :gossip_tags, dependent: :destroy
	has_many :tags, through: :gossip_tags
end
