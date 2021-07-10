master_robe = Robe.new(type: :master)
paddaan_robe = Robe.new()

bob = Jedi.new(robe: paddaan_robe)

john = Jedi.new(robe: master_robe)

10.times do
  bob.strike(john)
  john.strike(bob)
end

p bob
p john
