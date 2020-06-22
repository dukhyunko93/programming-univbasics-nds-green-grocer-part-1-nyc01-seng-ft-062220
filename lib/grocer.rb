require 'pry'

def find_item_by_name_in_collection(name, collection)
  collection.find do |item_info|
    if item_info[:item] == name
      item_info
    end
  end
end

def consolidate_cart(cart) 
  new_cart = []
  cart.each do |items_info|

    if find_item_by_name_in_collection(items_info[:item], new_cart)
      find_item_by_name_in_collection(items_info[:item], new_cart)[:count] += 1
    else 
      items_info[:count] = 1
      new_cart << items_info
    end
      
  end
new_cart 
end

