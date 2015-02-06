hear /dispense crisps/ do
  num = rand(10)
  if [2,7,9].include?(num)
    HTTParty(:post "http://vending-machine.office.theodi.org/dispense?flavour=ready-salted")
  else
    "Get your own damn crisps, yo"
  end
end
