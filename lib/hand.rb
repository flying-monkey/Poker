class Hand

  attr_reader :set_rank

  def initialize
    @set = set
  end

  def compare(set)
    @set.rank = 0
    sorted = @set.sort_by {card.value}
    # min = sorted[0].value
    # range_in_order = (min..min+4).to_a
    # range_in_order
    vals_greater_than_10 = sorted.all? {|x| x.value >= 10}
    suits_same = sorted.all? {|x| sorted[0].suit == x.suit}
    sorted_in_order = range_in_order(sorted)
    # n_of_a_kind = of_a_kind(sorted)

    if suits_same && vals_greater_than_10
      @set.rank = 23
    elsif suits_same && sorted_in_order
      @set.rank = 22
    elsif suits_same
      @set.rank = 19
    elsif sorted_in_order
      @set.rank = 18
    else
      of_a_kind(sorted)
    end


  end


  def range_in_order(sorted)
    sorted.each_index do |i|
      return true if sorted[i].value + 1 == sorted[i+1].value
    end
    false
  end

  def of_a_kind(sorted)
    hsh = Hash.new(0)
    sorted.each do |card|
      hsh[card.value] += 1
    end
    # hsh.select {|k,v| v > 1}
    keys = hsh.values.select {|x| x > 1}.sort

    case keys.last
    when 4
      @set.rank = 21
    when 3
      if keys[-2] == 2
        @set.rank = 20
      else
        @set.rank = 17
      end
    when 2
      if keys[-2] == 2
        @set.rank = 16
      else
        @set.rank = 15
      end
    end
    if @set.rank == 0
      @set.rank = sorted[-1].value
    end
  end

end
