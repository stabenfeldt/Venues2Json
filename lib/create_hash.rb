class CreateHash
  r = {}
  Area.all.each do |area|
    r[:name] = area.name
    r[:venues] = [area.venues]

  end
end
