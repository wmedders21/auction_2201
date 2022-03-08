class Auction
  attr_reader :items
  def initialize
    @items = []
  end

  def add_item(item)
    @items << item
  end

  def item_names
    @items.map { |item| item.name }
  end

  def unpopular_items
    @items.find_all { |item| item.bids.count == 0 }
  end

  def potential_revenue
    @items.map { |item| item.current_high_bid }.compact.sum
  end
end
