json.array! @cars.each do |car|
  json.id car.id
  json.year car.year
  json.make car.make
  json.mode car.model
  json.price car.price
end