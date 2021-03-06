require 'minitest/autorun'
begin
  require 'minitest/reporters'
  Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new
rescue LoadError
end

class Item
end

class Cart
end

class CartTest < Minitest::Test
  def test_items_have_names_and_prices
    i = Item.new "Kale", 3.50
    assert_equal "Kale", i.name
    assert_equal 3.50, i.price
  end

  def test_carts_can_hold_items
    skip
    c = Cart.new
    c.add Item.new("Carrot", 1)
    c.add Item.new("Sweet Potato", 2)
    c.add Item.new("Melange", 1000)

    assert_equal 3, c.item_count
  end

  def test_carts_add_up_prices
    skip
    c = Cart.new
    c.add Item.new("Carrot", 1)
    c.add Item.new("Sweet Potato", 2)
    c.add Item.new("Melange", 1000)

    assert_equal 1003, c.subtotal
  end
end
