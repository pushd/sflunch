#!/usr/bin/env ruby

FAVORITES = <<-END
SAJJ
Raavi
Pancho Villa Taqueria
Curry Up Now
iThai
Pao Jao Dumpling
Green Papaya
Roxanne's
END
.split("\n").uniq.freeze

VETOES = <<-END
Golden Kim Tar
Opa Cafe
Chaat Corner
R Caffe
Urba Curry
Clay Oven
Cuisine of Nepal
Phillie's
Palmyra
Mikado Sushi
Alimento
Phat Philly
Fresca Garden
North India Restaurant
Modern Thai
Chavita's Mexican Restaurant
Bayshore Taqueria
Vietnam House
Lotus Garden Vietnamese Restaurant
Zen Yai Thai Restaurant
Rock Japanese Cuisine
Kisu Japanese Cuisine
Handy Deli
Enjoy Vegetarian
Palio Cafe
Schilling Cafe
Lee's Deli
Max's Opera Cafe
Sutter Pub
Sammy's Cafe
Million Thai
Taqueria Zorro
We Be Sushi
Saucy Asian
Perilla Vietnamese Cuisine
Crepe & Curry
The Crepe House III
Allstar Cafe
Oda
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
Lotus Garden Vietnamese Restaurant
The Crepe House III
Chez Beesen
Urba Curry
Sally's Restaurant
R Caffe
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
Little Szechuan
Caffe Bianco
Perilla Vietnamese Cuisine
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
Bayshore Taqueria
END
.split("\n").uniq.freeze

all = ((FAVORITES + FAVORITES + ALL) - VETOES)
picks = []
while picks.length < 5 do
  pick = all.sample(1)
  unless picks.include?(pick)
    picks << pick
  end
end

puts Time.now
picks.each do |s|
  puts s
end
