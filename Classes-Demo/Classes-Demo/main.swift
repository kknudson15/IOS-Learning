//Default to a struct but you can always change it to a class if needed
let skeleton = Enemy(health: 100, attackStrength: 10)
print(skeleton.health)
skeleton.move()
skeleton.attack()
skeleton.takeDamage(amount: 10)
let skeleton2 = Enemy(health: 100, attackStrength: 10)
let skeleton3 = Enemy(health: 100, attackStrength: 10)

let dragon = Dragon(health: 200, attackStrength: 50)
dragon.attackStrength = 15
dragon.move()
dragon.attack()
dragon.talk(speech: "My teeth are swords! My claws are spears! My wings are a hurricane!")

