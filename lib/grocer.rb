require 'pry'

def find_item_by_name_in_collection(name, collection)

  collection.each do |hash|
   hash.each do |key, value|
     #binding.pry
     if value == name
       return hash
     end
   end
  end
  return
end

def consolidate_cart(cart)

  receipt = []
  
  cart.each do |item|
    item_name = item.keys[0]
    binding.pry
    if receipt[item_name]
      receipt[item_name][:count] += 1 
    else
      receipt[item_name] = item[item_name]
      receipt[item_name][:count] = 1 
    end
  end
  return receipt
end


  