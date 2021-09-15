# == Schema Information
#
# Table name: auctions
#
#  id          :integer          not null, primary key
#  start_date  :datetime
#  end_date    :datetime
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Auction < ApplicationRecord
  validates :start_date, :end_date, :title, :description, presence: true
end
