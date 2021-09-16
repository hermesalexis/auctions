class BiddingEngine
  def self.bid!(auction, amount, bidder)
    new(auction, amount, bidder).bid!
  end

  def initialize(auction, amount, bidder)
    @auction = auction
    @bid = Bid.new(bidder: bidder, auction: @auction, amount: amount)
  end

  def bid!
    if @bid.valid? && is_bigger?
      @bid.save
    else
      @auction.errors.add(:bid, "must be bigger than the last bid on the auction")
    end
  end

  private

  def is_bigger?
    last_bid = @auction.bids.last
    return true if last_bid.blank?

    last_bid.amount.to_i < @bid.amount
  end
end
