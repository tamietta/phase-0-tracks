cities = {
    london: {
        sights: ["Tower Bridge", "Big Ben", "London Eye"],
        restaurants: ["Nobu", "River Cafe", "Hakkasan"], 
        peak_season: {
            season: "summer", 
            months: (5..8)
            }
        },
    bangkok: {
        sights: ["Grand Palace", "Wat Arun", "Jim Thompson's House"],
        restaurants: ["Water Library", "Roast", "Soul Food Mahanakorn"], 
        peak_season: {
            season: "winter", 
            months: [1, (10..12)]
            }
        },
    san_francisco: {
        sights: ["Golden Gate Bridge", "Mission Street Art", "Ferry Building Farmers' Market"],
        restaurants: ["Namu Gaji", "Locanda Osteria", "Rich Table"], 
        peak_season: {
            season: "autumn", 
            months: (9..11)
            }
        }
}

# Target: bankok -> peak_season -> months -> 1
# Expected: 1
p cities[:bangkok][:peak_season][:months][0]

# Target: second listed sight for london
# Expected: "Big Ben"
p cities[:london][:sights][1]

# Target: index value of "O" of "Locanda Osteria" san_francisco's restaurant list
# Expected: 8
p cities[:san_francisco][:restaurants][1].index("O")

# Target: last two elements in bangkok's listed restaurants
# Expected: ["Roast", "Soul Food Mahanakorn"]
p cities[:bangkok][:restaurants][1, 2]

# Target: list the range of peak_season months for london
# Expected: [5, 6, 7, 8]
p cities[:london][:peak_season][:months].to_a

# Target: all values which are lists in san_francisco
=begin
Expected: {
    :sights => ["Golden Gate Bridge", "Mission Street Art", "Ferry Building Farmers' Market"],
    :restaurants => ["Namu Gaji", "Locanda Osteria", "Rich Table"]
    }
=end
p cities[:san_francisco].select {|k, v| v.kind_of? Array }