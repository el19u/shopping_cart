require 'rails_helper'

RSpec.describe Cart, type: :model do
 context "Shopping Cart" do
   it "Item to Cart" do
     cart = Cart.new
     cart.add_item 1
     expect(cart.empty?).to be false
   end

   it "if Item is same, not add Item but count will add" do
     cart = Cart.new
     3.times { cart.add_item(1) }
     5.times { cart.add_item(2) }
     2.times { cart.add_item(3) }

     expect(cart.items.length).to be 3
     expect(cart.items.first.quantity).to be 3
     expect(cart.items.second.quantity).to be 5
   end

   it "drop in and drop out"
   it "Cart total"
   it "Seasonal Discount"
 end

 context "Advance Feature" do
  it "Item to Session"
  it "Session to Item"
 end
end

