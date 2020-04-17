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
  count = 0 
  
  cart.each do |hash|
    hash.each do
      
    end
    #binding.pry
    hash[:count] = count+1
    receipt << hash
  end
  return receipt
end


  