# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Defining functions to seed DB

def seedSponsorsAndAds
  print("================= SeedingDB:  Creating Sponsors and Ads =======================\n")          # Information about what will be performed
  start = Time.now                                                                                    # Recording start time
  for i in 1..20 do
    Sponsor.create(spo_name: Faker::Company.name)                                                     # Creating Sponsors
    10.times do
      product = Faker::Company.bs
      product_link = Faker::Internet.url('product.split(" ")[0]' + '.com')
      path = 'ads/' + i.to_s + '/' + product.split(' ')[0] + '/main.jpg'
      Ad.create(ad_description: product, ad_link: product_link, ad_image_path: path, sponsor_id: i)   # Creating ads for Sponsors
    end
  end
  print("-- Added 20 fake Sponsors\n")
  print("-- Added 10 fake Ads per Sponsor\n")
  print('   -> ' + (Time.now - start).to_s + "s\n")
  print("================= SeedingDB:  Created Sponsors and Ads ========================\n")          # Informing about what was done
  print("\n")
end

def seedPlayerProfilesAndPlayerGameProfiles
  print("================= SeedingDB - Creating Player Profiles ========================\n")
  start = Time.now
  for i in 1..15 do
    real_name = Faker::Name.name
    user_name = Faker::Internet.user_name(real_name)
    password = Faker::Internet.password(8, 20)
    email = Faker::Internet.free_email(real_name)
    PlayerProfile.create(pla_pro_real_name: real_name, pla_pro_user_name: user_name,
                         pla_pro_password: password, pla_pro_email: email, pla_sparing_elo: 0)
    reputation = Faker::Number.between(1, 5)
    player_nickname = Faker::Internet.user_name
    p_game_rate = Faker::Number.between(1, 5)
    player = i
    game = Faker::Number.between(1, 15)
    PlayerGameProfile.create(player_reputation: reputation, player_nickname: player_nickname, player_game_rate: p_game_rate, player_profile_id: player, game_id: game)
  end
  print("-- Added 15 fake Player Profiles\n")
  print('   -> ' + (Time.now - start).to_s + "s\n")
  print("================= SeedingDB - Created Player Profiles =========================\n")
  print("\n")
end

def seedMailBoxes
  print("================= SeedingDB - Creating Mailboxs ===============================\n")
  start = Time.now
  for i in 1..50 do
    sender = Faker::Number.between(1, 15)
    recever = Faker::Number.between(1, 15)
    msg = Faker::Hipster.sentence(10)
    Mailbox.create(mail_sender_id: sender, mail_recever_id: recever, mail_message: msg)
  end
  print("-- Added 50 fake Mails\n")
  print('   -> ' + (Time.now - start).to_s + "s\n")
  print("================= SeedingDB - Created Mailboxs )===============================\n")
  print("\n")
end

def seedRatings
  print("================= SeedingDB - Creating Ratings ================================\n")
  start = Time.now
  for i in 1..50 do
    sender = Faker::Number.between(1, 15)
    recever = Faker::Number.between(1, 15)
    rat = Faker::Number.between(1, 5)
    Rating.create(rat_rater_id: sender, rat_recever_id: recever, rat_rate: rat)
  end
  print("-- Added 50 fake Ratings\n")
  print('   -> ' + (Time.now - start).to_s + "s\n")
  print("================= SeedingDB - Created Ratings =================================\n")
  print("\n")
end

def seedPlayerWhiteList
  print("================= SeedingDB - Creating PlayerWhiteLists =======================\n")
  start = Time.now
  for i in 1..50 do
    sender = Faker::Number.between(1, 15)
    recever = Faker::Number.between(1, 15)
    PlayerWhiteList.create(player_friend_sender_id: sender, player_friend_recever_id: recever)
  end
  print("-- Added 50 fake friend :'c\n")
  print('   -> ' + (Time.now - start).to_s + "s\n")
  print("================= SeedingDB - Created PlayerWhiteLists ========================\n")
  print("\n")
end

def seedPlayerBlackList
  print("================= SeedingDB - Creating PlayerBlackLists =======================\n")
  start = Time.now
  for i in 1..50 do
    sender = Faker::Number.between(1, 15)
    recever = Faker::Number.between(1, 15)
    PlayerBlackList.create(blocker_id: sender, blocked_id: recever)
  end
  print("-- Added 50 fake bad friend :'c\n")
  print('   -> ' + (Time.now - start).to_s + "s\n")
  print("================= SeedingDB - Created PlayerBlackLists ========================\n")
  print("\n")
end

def seedLocations
  print("================= SeedingDB - Creating Locations ==============================\n")
  start = Time.now
  for i in 1..15 do
    Location.create(loc_lat: Faker::Address.latitude, loc_lon: Faker::Address.longitude, loc_name: Faker::Address.community, player_profile_id: i)
  end
  print("-- Added 15 fake Locations\n")
  print('   -> ' + (Time.now - start).to_s + "s\n")
  print("================= SeedingDB - Created Locations ===============================\n")
  print("\n")
end

def seedGenres
  print("================= SeedingDB - Creating Genres =================================\n")
  start = Time.now
  Genre.create(gen_name: 'Action')
  Genre.create(gen_name: 'Platform games')
  Genre.create(gen_name: 'Shooter games')
  Genre.create(gen_name: "Fighting games and beat 'em ups")
  Genre.create(gen_name: 'Stealth game')
  Genre.create(gen_name: 'Survival games')
  Genre.create(gen_name: 'Rhythm games')
  Genre.create(gen_name: 'Action-adventure')
  Genre.create(gen_name: 'Survival horror')
  Genre.create(gen_name: 'Metroidvania')
  Genre.create(gen_name: 'Adventure')
  Genre.create(gen_name: 'Text adventures')
  Genre.create(gen_name: 'Graphic adventures')
  Genre.create(gen_name: 'Visual novels')
  Genre.create(gen_name: 'Interactive movie')
  Genre.create(gen_name: 'Real-time 3D adventures')
  Genre.create(gen_name: 'Role-playing')
  Genre.create(gen_name: 'Action RPG')
  Genre.create(gen_name: 'MMORPG')
  Genre.create(gen_name: 'Roguelikes')
  Genre.create(gen_name: 'Tactical RPG')
  Genre.create(gen_name: 'Sandbox RPG')
  Genre.create(gen_name: 'First-person party-based RPG')
  Genre.create(gen_name: 'Cultural differences')
  Genre.create(gen_name: 'Choices')
  Genre.create(gen_name: 'Fantasy')
  Genre.create(gen_name: 'Simulation')
  Genre.create(gen_name: 'Construction and management simulation')
  Genre.create(gen_name: 'Life simulation')
  Genre.create(gen_name: 'Vehicle simulation')
  Genre.create(gen_name: 'Strategy')
  Genre.create(gen_name: '4X game')
  Genre.create(gen_name: 'Artillery game')
  Genre.create(gen_name: 'Real-time strategy (RTS)')
  Genre.create(gen_name: 'Real-time tactics (RTT)')
  Genre.create(gen_name: 'Multiplayer online battle arena (MOBA)')
  Genre.create(gen_name: 'Tower defense')
  Genre.create(gen_name: 'Turn-based strategy (TBS)')
  Genre.create(gen_name: 'Turn-based tactics (TBT)')
  Genre.create(gen_name: 'Wargame')
  Genre.create(gen_name: 'Grand strategy wargame')
  Genre.create(gen_name: 'Sports')
  Genre.create(gen_name: 'Racing')
  Genre.create(gen_name: 'Sports game')
  Genre.create(gen_name: 'Competitive')
  Genre.create(gen_name: 'Sports-based fighting')
  Genre.create(gen_name: 'Other notable genres')
  Genre.create(gen_name: 'MMO')
  Genre.create(gen_name: 'Casual game')
  Genre.create(gen_name: 'Party game')
  Genre.create(gen_name: 'Programming game')
  Genre.create(gen_name: 'Logic game')
  Genre.create(gen_name: 'Trivia game')
  Genre.create(gen_name: 'Board game / Card game')
  Genre.create(gen_name: 'Idle gaming')
  Genre.create(gen_name: 'Video game genres by purpose')
  Genre.create(gen_name: 'Advergame')
  Genre.create(gen_name: 'Art game')
  Genre.create(gen_name: 'Casual game')
  Genre.create(gen_name: 'Christian game')
  Genre.create(gen_name: 'Educational game')
  Genre.create(gen_name: 'Electronic sports')
  Genre.create(gen_name: 'Exergame')
  Genre.create(gen_name: 'Serious game')
  Genre.create(gen_name: 'Scientific studies')
  print("-- Added 15 fake Genres\n")
  print('   -> ' + (Time.now - start).to_s + "s\n")
  print("================= SeedingDB - Created Genres ==================================\n")
  print("\n")
end

def seedPlatforms
  print("================= SeedingDB - Creating Platforms ==============================\n")
  start = Time.now
  Platform.create(plat_name: 'Atari 7800', plat_link: 'http://www.atari.com')
  Platform.create(plat_name: 'Atari Jaguar', plat_link: 'http://www.atari.com')
  Platform.create(plat_name: 'Sega Mega Drive / Genesis', plat_link: 'http://www.sega.com')
  Platform.create(plat_name: 'Sega Saturn', plat_link: 'http://www.sega.com')
  Platform.create(plat_name: 'Sega DreamCast', plat_link: 'http://www.sega.com')
  Platform.create(plat_name: 'Microsoft Xbox', plat_link: 'http://www.microsoft.com')
  Platform.create(plat_name: 'Microsoft Xbox 360', plat_link: 'http://www.microsoft.com')
  Platform.create(plat_name: 'Microsoft Xbox One', plat_link: 'http://www.microsoft.com')
  Platform.create(plat_name: 'Sony PlayStation', plat_link: 'http://www.sony.com')
  Platform.create(plat_name: 'Sony PlayStation 2', plat_link: 'http://www.sony.com')
  Platform.create(plat_name: 'Sony PlayStation 3', plat_link: 'http://www.sony.com')
  Platform.create(plat_name: 'Sony PlayStation 4', plat_link: 'http://www.sony.com')
  Platform.create(plat_name: 'Sony PlayStation Vita', plat_link: 'http://www.sony.com')
  Platform.create(plat_name: 'Nintendo Nintendo Entretainmen System', plat_link: 'http://www.nintendo.com')
  Platform.create(plat_name: 'Nintendo Super Nintendo Entretainmen System', plat_link: 'http://www.nintendo.com')
  Platform.create(plat_name: 'Nintendo Nintendo 64', plat_link: 'http://www.nintendo.com')
  Platform.create(plat_name: 'Nintendo Nintendo Wii', plat_link: 'http://www.nintendo.com')
  Platform.create(plat_name: 'Nintendo Nintendo Wii U', plat_link: 'http://www.nintendo.com')
  Platform.create(plat_name: 'Nintendo Nintendo Switch', plat_link: 'http://www.nintendo.com')
  Platform.create(plat_name: 'Nintendo Nintendo Game Boy', plat_link: 'http://www.nintendo.com')
  Platform.create(plat_name: 'Nintendo Nintendo Game Boy Color', plat_link: 'http://www.nintendo.com')
  Platform.create(plat_name: 'Nintendo Nintendo Game Boy Micro', plat_link: 'http://www.nintendo.com')
  Platform.create(plat_name: 'Nintendo Nintendo Game Boy Advance SP', plat_link: 'http://www.nintendo.com')
  Platform.create(plat_name: 'Nintendo Nintendo Game Boy Advance', plat_link: 'http://www.nintendo.com')
  Platform.create(plat_name: 'Nintendo Nintendo 3DS', plat_link: 'http://www.nintendo.com')
  print("-- Added 15 fake Plataforms\n")
  print('   -> ' + (Time.now - start).to_s + "s\n")
  print("================= SeedingDB - Created Platforms ===============================\n")
  print("\n")
end

def seedPegi
  print("================= SeedingDB - Creating Platforms ==============================\n")
  start = Time.now
  Pegi.create(peg_name: '3 or older', peg_age: 3, peg_image: 'https://upload.wikimedia.org/wikipedia/commons/2/2c/PEGI_3.svg')
  Pegi.create(peg_name: '7 or older', peg_age: 7, peg_image: 'https://upload.wikimedia.org/wikipedia/commons/2/29/PEGI_7.svg')
  Pegi.create(peg_name: '12 or older', peg_age: 12, peg_image: 'https://upload.wikimedia.org/wikipedia/commons/4/44/PEGI_12.svg')
  Pegi.create(peg_name: '16 or older', peg_age: 16, peg_image: 'https://upload.wikimedia.org/wikipedia/commons/8/8a/PEGI_16.svg')
  Pegi.create(peg_name: '18 or older', peg_age: 18, peg_image: 'https://upload.wikimedia.org/wikipedia/commons/7/75/PEGI_18.svg')
  print("-- Added 5 Pegi\n")
  print('   -> ' + (Time.now - start).to_s + "s\n")
  print("================= SeedingDB - Created Platforms ===============================\n")
  print("\n")
end

def seedGames
  print("================= SeedingDB - Creating Games ==================================\n")
  start = Time.now
  for i in 1..15 do
    title = Faker::Book.title
    new_genres = []
    for i in 1..Faker::Number.between(1, 10)
      new_genres += [Genre.find(i)]
    end
    new_platforms = []
    for i in 1..Faker::Number.between(1, 10)
      new_platforms += [Platform.find(i)]
    end
    new_game = Game.create(gam_name: title, gam_description: Faker::Lovecraft.paragraph, gam_link: Faker::Internet.url(title + '.com'), pegi_id: Faker::Number.between(1, 5))
    new_game.genres = new_genres
    new_game.platforms = new_platforms
  end
  print("-- Added 15 fake Games\n")
  print('   -> ' + (Time.now - start).to_s + "s\n")
  print("================= SeedingDB - Created Games ===================================\n")
  print("\n")
end

def seedSubForum
  15.times do
    game = Game.find(Faker::Number.between(1, 15))
    SubForum.create(sub_for_name: Faker::Zelda, sub_for_description: Faker::LeagueOfLegends.quote, game: game)
  end
end

def seedThreadForum
  #To do seeding of thread forums of sub forums
end

def seedComments
  #To do seeding of comments of thread forums of sub forums
end

def seedAttachments
  #To do seeding of seedAttachments of comments of thread forums of sub forums
end

# Seeding with functions

seedSponsorsAndAds
seedPegi
seedGenres
seedPlatforms
seedGames
seedPlayerProfilesAndPlayerGameProfiles
seedLocations
seedMailBoxes
seedRatings
seedPlayerWhiteList
seedPlayerBlackList
seedSubForum
seedThreadForum
seedComments
