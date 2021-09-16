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
#  user_id     :integer
#
require 'rails_helper'

RSpec.describe Auction, type: :model do
  subject { described_class.new(title: 'Anything',
                                description: 'Anything',
                                start_date: DateTime.now,
                                end_date: DateTime.now + 1.week,
                                user_id: 1
            )

  }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without a title" do
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a description" do
    subject.description = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a start_date" do
    subject.start_date = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without a end_date" do
    subject.end_date = nil
    expect(subject).to_not be_valid
  end

  describe "Asociations" do
    it { should belong_to(:user).without_validating_presence }
    it { should have_many(:bids) }
  end
end
