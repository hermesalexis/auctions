# == Schema Information
#
# Table name: bids
#
#  id         :integer          not null, primary key
#  bidder_id  :integer
#  auction_id :integer
#  amount     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Bid < ApplicationRecord
  belongs_to :bidder, class_name: "User"
  belongs_to :auction, class_name: "Auction"

  validates :bidder, presence: true
end
