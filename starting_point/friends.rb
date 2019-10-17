def get_name(person)
  return person[:name]
end


def get_name_from_tv(person)
  return person[:favourites][:tv_show]
end


def get_boolean_from_food(person, food)
  food_likes = person[:favourites][:snacks]
  if food_likes.include?(food)
    return true
  end
end

def add_friend(person_num, name)
  # @people << person_num[:name => name]
  # @person6 = [ name: "Scrappy Doo"]
  person_num = {:name => name }
  @people.push(person_num)
  # << @person6{:name => "Scrappy Doo"}

end

def remove_friend(person, friends_name)
  person[:friends].delete(friends_name)



    # index = @people[person_number][:friends].index(friends_name)
    # p index
    # @people[@person4][:friends][0].delete_at(0)
    # p @people
end



 def total_money()

   total = 0
   for person in @people
     total += person[:monies]
   end
   return total
 end


def lend_money(lender, lendee, monies)

  current_amount = lender[:monies]
  amount_after_lending = current_amount - monies
  lender[:monies] = amount_after_lending
  return lender[:monies]
  p @person5

end
