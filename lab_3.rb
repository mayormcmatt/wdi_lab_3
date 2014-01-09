# Lab 3: Blender

smoothie_ingredients = {
  'flax seeds' => '1 tbsp',
  'chia seeds' => '1 tbsp',
  'coconut flakes' => '1 tbsp',
  'spirulina' => '1 tsp',
  'pumpkin seeds' => '1 tbsp',
  'oatmeal' => '1/4 cup',
  'coco powder' => '1 tbsp',
  'peanut butter' => '1 tbsp',
  'almonds' => '1/4 cup',
  'walnuts' => '1/4 cup',
  'spinach' => '1/4 cup',
  'greek yogurt' => '1/4 cup',
  'nutrional yeast' => '1 tbsp',
  'brussel sprouts' => '1/4 cup',
  'asparagus' => '1/4 cup',
  'kale' => '1/4 cup',
  'brocoli rabe' => '1/4 cup',
  'blue berries' => '1/4 cup',
  'chopped banana' => '1/2 cup',
  'straw berries' => '1/4 cup',
  'mango' => '1/4 cup',
  'hemp milk' => '1 cup'
}

def blend(hash)
	just_keys_no_space = hash.keys.join.delete(" ")
	keys_blended = just_keys_no_space.split("").shuffle.join
	print keys_blended
end

blend(smoothie_ingredients)

# create a class called Blender
# It should have a method that takes an array of ingredients and returns a mixed string of characters.
# Give the blender an on and off switch and only allow the blender to function when it's on.
# FOR SAFETY'S SAKE When you create a new blender by default it should be off.
# Blend the the smoothie array

class Blender
	def initialize(hash)
		@smoothie_ingredients = hash
	end

	# puts "Do you want to blend some stuff? (yes or no)"
	# choice = gets.chomp.downcase

	# case choice	
	# when choice == "yes"
	def blend
		puts "You turn on the blender and..."
		just_keys_no_space = @smoothie_ingredients.keys.join.delete(" ")
		keys_blended = just_keys_no_space.split("").shuffle.join
		print keys_blended
		puts "You really blended that well!"
	end
	# when choice == "no"
	# 	puts "OK, the blender stays off."
	# end
end

blender = Blender.new(smoothie_ingredients)
blender.blend
