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
require 'rails_helper'

RSpec.describe Bid, type: :model do
  describe "Associations" do
    it { should belong_to(:bidder) }
    it { should belong_to(:auction) }
  end

  describe "Validations" do
    it { should validate_presence_of(:bidder) }
  end
end
