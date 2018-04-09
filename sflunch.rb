#!/usr/bin/env ruby

FAVORITES = <<-END
SAJJ
Raavi
La Mediterranee
Pancho Villa Taqueria
Sutter Pub
Vietnam House
Curry Up Now
Pica Pica
iThai
May Lee's Restaurant
Saffron 685
Cholo Soy
END
.split("\n").uniq.freeze

VETOES = <<-END
Zen Yai Thai Restaurant
Rock Japanese Cuisine
Kisu Japanese Cuisine
Handy Deli
Enjoy Vegetarian
***REMOVED***
Palio Cafe
Schilling Cafe
Lee's Deli
Max's Opera Cafe
Sutter Pub
Sammy's Cafe
END
.split("\n").uniq.freeze

ALL = <<-END
SAJJ
La Mediterranee
Kisu Japanese Cuisine
Pancho Villa Taqueria
Sutter Pub
Vietnam House
Curry Up Now
Schilling Cafe
Pica Pica
Handy Deli
Cuisine of Nepal
iThai
May Lee's Restaurant
California Pizza Kitchen
Oda
Modern Thai
Allstar Cafe
Lotus Garden ***REMOVED*** Restaurant
The Crepe House III
Chez Beesen
Urba Curry
Sally's Restaurant
R Caffe
Bayshore Taqueria
Nucha Empanadas
Cholo Soy
Saucy Asian
Saffron 685
Mi Yucatan
Dabba
The Brick Yard
Dum Indian Soul Food
Opa Cafe
Lin's Kitchen
Darbar
Crepe & Curry
Taqueria Zorro
Fresca Garden
Sammy's Cafe
Enjoy Vegetarian
Togo's
Little Szechuan
Caffe Bianco
Perilla ***REMOVED*** Cuisine
Phat Philly
Lee's Deli
Palmyra
North India Restaurant
Million Thai
Pao Jao Dumpling
Golden Kim Tar
Chaat Corner
Chavita's Mexican Restaurant
Bamboo Restaurant
Supreme Pizza
Mikado Sushi
Phillie's
Green Papaya
Alimento
Raavi
Fuzio
Max's Opera Cafe
Clay Oven
Roxanne's
We Be Sushi
Zen Yai Thai Restaurant
Rock Japanese Cuisine
END
.split("\n").uniq.freeze

yes_selections = (FAVORITES - VETOES).sample(2)
new_selections = (ALL - FAVORITES - VETOES).sample(3)

all_selections = (yes_selections + new_selections).shuffle
puts Time.now
all_selections.each do |s|
  puts s
end