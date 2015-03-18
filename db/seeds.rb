Burger.destroy_all
Ingredient.destroy_all

sub_roll = Ingredient.create!(name: 'sub roll', category: 'bun')
sourdough = Ingredient.create!(name: 'sourdough', category: 'bun')
seven_grain = Ingredient.create!(name: 'seven-grain bun', category: 'bun')
brioche = Ingredient.create!(name: 'brioche style bun', category: 'bun')
ciabatta = Ingredient.create!(name: 'ciabatta', category: 'bun')
hawaiian = Ingredient.create!(name: 'hawaiian', category: 'bun')
sesame = Ingredient.create!(name: 'sesame seed bun', category: 'bun')
rye = Ingredient.create!(name: 'rye bun', category: 'bun')




beef = Ingredient.create!(name: 'beef patty', category: 'patty')
chicken = Ingredient.create!(name: 'chicken patty', category: 'patty')
bison = Ingredient.create!(name: 'organic bison patty', category: 'patty')
ahi_tuna = Ingredient.create!(name: 'hand-cut ahi tuna patty', category: 'patty')
turkey = Ingredient.create!(name: 'ground turkey patty', category: 'patty')
portobello = Ingredient.create!(name: 'portobello patty', category: 'patty')
chorizo = Ingredient.create!(name: 'chorizo patty', category: 'patty')

no_patty = Ingredient.create!(name: 'no patty', category: 'patty')


lettuce = Ingredient.create!(name: 'lettuce', category: 'vegetables')
tomato = Ingredient.create!(name: 'tomato', category: 'vegetables')
beets = Ingredient.create!(name: 'beets', category: 'vegetables')
snow_peas = Ingredient.create!(name: 'snow peas', category: 'vegetables')
mushrooms = Ingredient.create!(name: 'mushrooms', category: 'vegetables')
peas = Ingredient.create!(name: 'peas', category: 'vegetables')
parsnips = Ingredient.create!(name: 'parsnips', category: 'vegetables')
romaine = Ingredient.create!(name: 'romaine lettuce', category: 'vegetables')
kale = Ingredient.create!(name: 'kale', category: 'vegetables')
poblano_pepper = Ingredient.create!(name: 'poblano pepper', category: 'vegetables')
rosemary = Ingredient.create!(name: 'rosemary', category: 'vegetables')
coleslaw = Ingredient.create!(name: 'coleslaw', category: 'vegetables')
parsley = Ingredient.create!(name: 'parsley', category: 'vegetables')
enoki_mushrooms = Ingredient.create!(name: 'enoki mushrooms', category: 'vegetables')
chard = Ingredient.create!(name: 'chard', category: 'vegetables')
bay_leaf = Ingredient.create!(name: 'bay leaf', category: 'vegetables')
radish = Ingredient.create!(name: 'radish', category: 'vegetables')
olive = Ingredient.create!(name: 'olives', category: 'vegetables')
okra = Ingredient.create!(name: 'okra', category: 'vegetables')
squash = Ingredient.create!(name: 'squash', category: 'vegetables')
leek = Ingredient.create!(name: 'leek', category: 'vegetables')
sprouts = Ingredient.create!(name: 'sprouts', category: 'vegetables')
cauliflower = Ingredient.create!(name: 'cauliflower', category: 'vegetables')
broccoli = Ingredient.create!(name: 'broccoli', category: 'vegetables')


cheese_curds = Ingredient.create!(name: 'cheese curds', category: 'cheese')
brie = Ingredient.create!(name: 'brie', category: 'cheese')
bleu = Ingredient.create!(name: 'bleu', category: 'cheese')
baby_swiss = Ingredient.create!(name: 'baby swiss', category: 'cheese')
gorgonzola = Ingredient.create!(name: 'gorgonzola', category: 'cheese')
pepper_jack = Ingredient.create!(name: 'pepper jack', category: 'cheese')
parmesan = Ingredient.create!(name: 'parmesan', category: 'cheese')
muenster = Ingredient.create!(name: 'muenster', category: 'cheese')
cheddar = Ingredient.create!(name: 'cheddar', category: 'cheese')
feta = Ingredient.create!(name: 'feta', category: 'cheese')
provolone = Ingredient.create!(name: 'provolone', category: 'cheese')
gouda = Ingredient.create!(name: 'gouda', category: 'cheese')
gruyere = Ingredient.create!(name: 'gruyere', category: 'cheese')
camembert = Ingredient.create!(name: 'camembert', category: 'cheese')



cajun = Ingredient.create!(name: 'cajun', category: 'sauce')
mint_relish = Ingredient.create!(name: 'mint relish', category: 'sauce')
thai_peanut_sauce = Ingredient.create!(name: 'thai peanut sauce', category: 'sauce')
honey_dijon = Ingredient.create!(name: 'honey dijon', category: 'sauce')
bbq = Ingredient.create!(name: 'bbq sauce', category: 'sauce')
garlic_aioli = Ingredient.create!(name: 'roasted garlic aioli', category: 'sauce')
ketchup = Ingredient.create!(name: 'ketchup', category: 'sauce')
mustard = Ingredient.create!(name: 'mustard', category: 'sauce')
mayonnaise = Ingredient.create!(name: 'mayonnaise', category: 'sauce')


bacon = Ingredient.create!(name: 'bacon', category: 'premium')
chili = Ingredient.create!(name: 'chili', category: 'premium')
shoestring_fries = Ingredient.create!(name: 'shoestring fries', category: 'premium')
apples = Ingredient.create!(name: 'apples', category: 'premium')
avocado = Ingredient.create!(name: 'avocado', category: 'premium')
polenta = Ingredient.create!(name: 'polenta', category: 'premium')
artichoke = Ingredient.create!(name: 'artichoke hearts', category: 'premium')
onion_rings = Ingredient.create!(name: 'onion rings', category: 'premium')
hummus = Ingredient.create!(name: 'hummus', category: 'premium')
egg = Ingredient.create!(name: 'egg', category: 'premium')
deviled_egg = Ingredient.create!(name: 'deviled egg', category: 'premium')
capers = Ingredient.create!(name: 'capers', category: 'premium')
ham = Ingredient.create!(name: 'ham', category: 'premium')
pineapple = Ingredient.create!(name: 'pineapple', category: 'premium')

kb = Burger.create!(name: 'If Looks Could Kale', image: '/images/burger4.jpg')
kb.ingredients << [kale, beef, lettuce, sub_roll]
rb = Burger.create!(name: 'It’s Fun to Eat at the rYeMCA Burger', image: '/images/burger3.jpg')
rb.ingredients << [rye, mustard, cheddar, avocado]
cb = Burger.create!(name: 'Chorizo Your Own Adventure', image: '/images/burger2.jpg')
cb.ingredients << [chorizo, sesame, tomato, lettuce]
ex = Burger.create(name: 'Expensive Test', image: '/images/burger1.jpg')
ex.ingredients << [rye, egg, deviled_egg, pineapple]
