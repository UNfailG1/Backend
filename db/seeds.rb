require 'faker'

@nameSeed     = ""
@added        = ""
@flagTracker  = true
def trackerTime()

  if @flagTracker
    print("== SeedingDB: " + @nameSeed + " seeding\n")    # Information about what will be performe
    @start        = Time.now
    @flagTracker  = false
  else
    print("\t-- Added " + @added + "\n")
    print("\t-> " + (Time.now - @start).to_s +  "s\n")
    print("== SeedingDB: " + @nameSeed + " seeded\n\n")
    @flagTracker  = true
  end

end

def seedSponsorsAndAds

  @nameSeed = "Sponsor and Ads"
  @added    = "10 sponsors and 45 ads"
  trackerTime()

  Sponsor.create(spo_name:  "Google")
  Ad.create(ad_description: "Andoid",               ad_link: "https://www.android.com",               sponsor_id: 1)
  Ad.create(ad_description: "Google Maps",          ad_link: "https://www.google.com/maps",           sponsor_id: 1)
  Ad.create(ad_description: "Youtube",              ad_link: "https://www.youtube.com",               sponsor_id: 1)
  Ad.create(ad_description: "Google Drive",         ad_link: "https://www.google.com/drive/",         sponsor_id: 1)

  Sponsor.create(spo_name:  "Microsoft")
  Ad.create(ad_description: "Windows",              ad_link: "https://www.microsoft.com",             sponsor_id: 2)
  Ad.create(ad_description: "Age of Empires",       ad_link: "https://www.ageofempires.com",          sponsor_id: 2)
  Ad.create(ad_description: "Halo",                 ad_link: "https://www.halowaypoint.com",          sponsor_id: 2)
  Ad.create(ad_description: "Office suite",         ad_link: "https://www.office.com",                sponsor_id: 2)

  Sponsor.create(spo_name:  "Blizzard")
  Ad.create(ad_description: "World of Warcraft",    ad_link: "https://worldofwarcraft.com",           sponsor_id: 3)
  Ad.create(ad_description: "Overwatch",            ad_link: "https://playoverwatch.com",             sponsor_id: 3)
  Ad.create(ad_description: "Heroes of the Dorm",   ad_link: "https://heroesofthedorm.com",           sponsor_id: 3)
  Ad.create(ad_description: "Hearth Stone",         ad_link: "https://playhearthstone.com/en-us/",    sponsor_id: 3)

  Sponsor.create(spo_name:  "Hi-Rez Studios")
  Ad.create(ad_description: "Smite",                ad_link: "https://www.smitegame.com",             sponsor_id: 4)
  Ad.create(ad_description: "Paladins",             ad_link: "https://www.paladins.com",              sponsor_id: 4)
  Ad.create(ad_description: "Hand of the Gods",     ad_link: "https://www.handofthegods.com",         sponsor_id: 4)

  Sponsor.create(spo_name:  "Riot Games")
  Ad.create(ad_description: "League of Legenfs",    ad_link: "https://na.leagueoflegends.com",        sponsor_id: 5)

  Sponsor.create(spo_name:  "Nintendo")
  Ad.create(ad_description: "Nintendo Switch",      ad_link: "https://www.nintendo.com/switch/",      sponsor_id: 6)
  Ad.create(ad_description: "Nintendo 3DS",         ad_link: "https://www.nintendo.com/3ds/",         sponsor_id: 6)
  Ad.create(ad_description: "Nintendo 2DS",         ad_link: "https://www.nintendo.com/2ds/",         sponsor_id: 6)
  Ad.create(ad_description: "Amiibo Detective Pikachu",
    ad_link: "https://www.nintendo.com/amiibo/detail/detective-pikachu-amiibo",   sponsor_id: 6)
  Ad.create(ad_description: "Amiibo Mipha",
    ad_link: "https://www.nintendo.com/amiibo/detail/mipha-amiibo-the-legend-of-zelda-series",        sponsor_id: 6)
  Ad.create(ad_description: "Amiibo Urbosa",
    ad_link: "https://www.nintendo.com/amiibo/detail/urbosa-amiibo-the-legend-of-zelda-series",       sponsor_id: 6)
  Ad.create(ad_description: "Amiibo daruk",
    ad_link: "https://www.nintendo.com/amiibo/detail/daruk-amiibo-the-legend-of-zelda-series",        sponsor_id: 6)
  Ad.create(ad_description: "Kirby Star Allies",
    ad_link: "https://www.nintendo.com/games/detail/kirby-star-allies-switch",                        sponsor_id: 6)
  Ad.create(ad_description: "Bayonetta 2",
    ad_link: "https://www.nintendo.com/games/detail/bayonetta-2-switch",                              sponsor_id: 6)

  Sponsor.create(spo_name:  "Sony")
  Ad.create(ad_description: "God of War",           ad_link: "https://godofwar.playstation.com",      sponsor_id: 7)
  Ad.create(ad_description: "Playstation 4",
    ad_link: "https://www.playstation.com/en-us/explore/ps4/",                                        sponsor_id: 7)
  Ad.create(ad_description: "Playstation 4 Pro",
    ad_link: "https://www.playstation.com/en-us/explore/ps4-pro",                                     sponsor_id: 7)
  Ad.create(ad_description: "Playstation 4 Accessories",
    ad_link: "https://www.playstation.com/en-us/explore/accessories/",                                sponsor_id: 7)
  Ad.create(ad_description: "Playstation VR",
    ad_link: "https://www.playstation.com/en-us/explore/playstation-vr/",                             sponsor_id: 7)
  Ad.create(ad_description: "Uncharted",
    ad_link: "https://www.unchartedthegame.com/en-us/",                                               sponsor_id: 7)

  Sponsor.create(spo_name:  "Electronic Arts")
  Ad.create(ad_description: "Anthem",               ad_link: "https://www.ea.com/games/anthem",       sponsor_id: 8)
  Ad.create(ad_description: "A Way Out",            ad_link: "https://www.ea.com/games/a-way-out",    sponsor_id: 8)
  Ad.create(ad_description: "Fe",                   ad_link: "https://www.ea.com/games/fe",           sponsor_id: 8)
  Ad.create(ad_description: "UFC 3",                ad_link: "https://www.ea.com/games/ufc/ufc-3",    sponsor_id: 8)
  Ad.create(ad_description: "FIFA",                 ad_link: "https://www.easports.com/fifa",         sponsor_id: 8)
  Ad.create(ad_description: "Star Wars BattleFront II",
    ad_link: "https://www.ea.com/games/starwars/battlefront/battlefront-2",                           sponsor_id: 8)
  Ad.create(ad_description: "Need for Speed Payback",
    ad_link: "https://www.ea.com/games/need-for-speed/need-for-speed-payback",                        sponsor_id: 8)

  Sponsor.create(spo_name:  "Rockstar Games")
  Ad.create(ad_description: "Bully",
    ad_link: "https://www.rockstargames.com/games/info/bully",                                        sponsor_id: 9)
  Ad.create(ad_description: "Grand Theft Auto V",
    ad_link: "https://www.rockstargames.com/games/info/V",                                            sponsor_id: 9)
  Ad.create(ad_description: "Red Dead Redemption 2",
    ad_link: "https://www.rockstargames.com/games/info/reddeadredemption2",                           sponsor_id: 9)

  Sponsor.create(spo_name:  "Ubisoft")
  Ad.create(ad_description: "Assassin's Creed",     ad_link: "https://assassinscreed.ubisoft.com",    sponsor_id: 10)
  Ad.create(ad_description: "For Honor",            ad_link: "https://forhonor.ubisoft.com",          sponsor_id: 10)
  Ad.create(ad_description: "Farcry 5",             ad_link: "https://far-cry.ubisoft.com",           sponsor_id: 10)
  Ad.create(ad_description: "Farcry Primal",
    ad_link: "https://www.ubisoft.com/es-mx/game/far-cry-primal/",                                    sponsor_id: 10)

  trackerTime()

end

def seedLocations

  @nameSeed = "Locations"
  @added    = "15 Locations"
  trackerTime()

  for i in 1..15 do
    Location.create(loc_lat: Faker::Address.latitude, loc_long: Faker::Address.longitude, loc_name: Faker::Address.community)
  end

  trackerTime()

end

def seedPlayerProfilesAndPlayerGameProfiles

  @nameSeed = "Player profiles and Player game profiles"
  @added    = "between 0 and 485 player profiles. Between 0 and 485 player game profiles"
  trackerTime

  count = 0;
  start_date = Date.new(2017, 01, 01)
  end_date = Date.new(2018, 4, 30)
  puts ((count/485.0)*100).to_i.to_s + '%'
  while start_date <= end_date
    Faker::Number.between(0, 1).times do
      real_name = Faker::Name.name
      username = Faker::Internet.user_name(real_name)
      password = Faker::Internet.password(8, 20)
      email = Faker::Internet.free_email(real_name)
      location = Faker::Number.between(1, 15)
      PlayerProfile.create(pp_username: username, password_confirmation: password, password: password, location_id: location,
        email: email, pp_spairing_elo: Faker::Number.between(0, 5), pp_avatar: 'user.svg', created_at: start_date)
    end
    start_date = start_date + 1.days
    count = count + 1
    puts ((count/(485.0*2))*100).to_i.to_s + '%'
  end

  games = Game.all
  for i in 1..PlayerProfile.all.count do
    reputation = Faker::Number.between(1, 5)
    player_nickname = Faker::Internet.user_name
    p_game_rate = Faker::Number.between(1, 5)
    player = i
    pp_times = Faker::Number.between(0, 1)
    pp_times.times do
      game = games[Faker::Number.between(1, 37)]
      PlayerGameProfile.create(pgp_reputation: reputation, pgp_nickname: player_nickname, pgp_rate: p_game_rate, player_profile_id: player, game_id: game)
      game.update_attribute(:gam_user_counter, game.gam_user_counter + 1)
    end
    puts ((PlayerProfile.all.count + i)/(PlayerProfile.all.count*2.0)*100).to_i.to_s + '%'
  end

  trackerTime
end

def seedMailBoxes

  @nameSeed = "MailBoxes"
  @added    = "between 0 and 1 times the number of player profiles Mailboxes"
  trackerTime

  count = 0.0
  numb_players = PlayerProfile.count
  puts ((count/numb_players)*100).to_i.to_s + '%'
  PlayerProfile.all.each{ |player|
    mail_times = Faker::Number.between(0, 1)
    mail_times.times do
      recever = PlayerProfile.find(Faker::Number.between(1, numb_players))
      date = Faker::Date.between([player.created_at, recever.created_at].max, Date.today)
      while recever.id == player.id
        recever = PlayerProfile.find(Faker::Number.between(1, PlayerProfile.count))
      end
      msg = Faker::Hipster.sentence(10)
      Mailbox.create(sender_id: player.id, receiver_id: recever.id, mail_message: msg, created_at: date)
    end
    count = count + 1
    puts ((count/numb_players)*100).to_i.to_s + '%'
  }

  trackerTime
end

def seedPlayerFriends

  @nameSeed = "PlayerFriends"
  @added    = "5 Fake friends :'c"
  trackerTime

  for i in 1..5 do
    player_id = Faker::Number.between(1, 15)
    player = PlayerProfile.find(player_id)
    friend_id = Faker::Number.between(1, 15)
    friend = PlayerProfile.find(friend_id)
    player.friends.push(friend)
    friend.friends.push(player)
  end

  trackerTime
end

def seedPlayerBlokedList

  @nameSeed = "BlockedPlayers"
  @added    = "5 bad friends :'c"
  trackerTime

  for i in 1..5 do
    player = PlayerProfile.find(Faker::Number.between(1, 15))
    blocked = PlayerProfile.find(Faker::Number.between(1, 15))
    player.blocked_players.push(blocked)
  end

  trackerTime

end

def seedPegi

  @nameSeed = "Pegi"
  @added    = "6 Pegis"
  trackerTime

  Pegi.create(peg_name: '3 or older',   peg_age: 3,   peg_image: 'https://upload.wikimedia.org/wikipedia/commons/2/2c/PEGI_3.svg')
  Pegi.create(peg_name: '7 or older',   peg_age: 7,   peg_image: 'https://upload.wikimedia.org/wikipedia/commons/2/29/PEGI_7.svg')
  Pegi.create(peg_name: '12 or older',  peg_age: 12,  peg_image: 'https://upload.wikimedia.org/wikipedia/commons/4/44/PEGI_12.svg')
  Pegi.create(peg_name: '16 or older',  peg_age: 16,  peg_image: 'https://upload.wikimedia.org/wikipedia/commons/8/8a/PEGI_16.svg')
  Pegi.create(peg_name: '18 or older',  peg_age: 18,  peg_image: 'https://upload.wikimedia.org/wikipedia/commons/7/75/PEGI_18.svg')
  Pegi.create(peg_name: 'Unknown or rate pending',  peg_age: 18,  peg_image: 'https://upload.wikimedia.org/wikipedia/commons/7/75/PEGI_18.svg')

  trackerTime

end

def seedGenres

  @nameSeed = "Genres"
  @added    = "14 Genres"
  trackerTime()

  Genre.create(id: 4, gen_name: "Fighting",                   gen_views: 0)
  Genre.create(id: 5, gen_name: "Shooter",                    gen_views: 0)
  Genre.create(id: 9, gen_name: "Puzzle",                     gen_views: 0)
  Genre.create(id: 10, gen_name: "Racing",                    gen_views: 0)
  Genre.create(id: 11, gen_name: "Real Time Strategy (RTS)",  gen_views: 0)
  Genre.create(id: 12, gen_name: "Role-playing (RPG)",        gen_views: 0)
  Genre.create(id: 13, gen_name: "Simulator",                 gen_views: 0)
  Genre.create(id: 14, gen_name: "Sport",                     gen_views: 0)
  Genre.create(id: 15, gen_name: "Strategy",                  gen_views: 0)
  Genre.create(id: 16, gen_name: "Turn-based strategy (TBS)", gen_views: 0)
  Genre.create(id: 24, gen_name: "Tactical",                  gen_views: 0)
  Genre.create(id: 31, gen_name: "Adventure",                 gen_views: 0)
  Genre.create(id: 32, gen_name: "Indie",                     gen_views: 0)
  Genre.create(id: 33, gen_name: "Arcade",                    gen_views: 0)

  trackerTime()

end

def seedPlatforms

  @nameSeed = "Platforms"
  @added    = "20 Platform"
  trackerTime

  Platform.create(id: 3,    plat_name: 'Linux', plat_link: "http://www.linux.org", plat_views: 0)
  Platform.create(id: 5,    plat_name: "Wii", plat_link: "https://www.igdb.com/platforms/wii", plat_views: 0)
  Platform.create(id: 6,    plat_name: 'PC (Microsoft Windows)', plat_link: 'http://windows.microsoft.com/', plat_views: 0)
  Platform.create(id: 8,    plat_name: "PlayStation 2", plat_link: "https://www.igdb.com/platforms/ps2", plat_views: 0)
  Platform.create(id: 9,    plat_name: 'PlayStation 3', plat_link: "http://us.playstation.com/ps3/", plat_views: 0)
  Platform.create(id: 12,   plat_name: 'Xbox 360', plat_link: "http://www.xbox.com/en-US/xbox-360", plat_views: 0)
  Platform.create(id: 14,   plat_name: 'Mac', plat_link: 'https://www.apple.com/osx/', plat_views: 0)
  Platform.create(id: 34,   plat_name: 'Android', plat_link: "http://www.android.com/", plat_views: 0)
  Platform.create(id: 37,   plat_name: 'Nintendo 3DS', plat_link: "http://www.nintendo.com/3ds", plat_views: 0)
  Platform.create(id: 38,   plat_name: "PlayStation Portable", plat_link: "https://www.igdb.com/platforms/psp", plat_views: 0)
  Platform.create(id: 39,   plat_name: 'iOS', plat_link: "https://www.igdb.com/platforms/ios", plat_views: 0)
  Platform.create(id: 41,   plat_name: 'Wii U', plat_link: "http://www.nintendo.com/wiiu/", plat_views: 0)
  Platform.create(id: 45,   plat_name: 'PlayStation Network', plat_link: "https://www.igdb.com/platforms/psn", plat_views: 0)
  Platform.create(id: 46,   plat_name: 'PlayStation Vita', plat_link: "https://www.igdb.com/platforms/psvita", plat_views: 0)
  Platform.create(id: 48,   plat_name: 'PlayStation 4', plat_link: "http://www.playstation.com/ps4/", plat_views: 0)
  Platform.create(id: 49,   plat_name: 'Xbox One', plat_link: "http://www.xbox.com/en-US/xbox-one", plat_views: 0)
  Platform.create(id: 52,   plat_name: "Arcade", plat_link: "https://www.igdb.com/platforms/arcade", plat_views: 0)
  Platform.create(id: 74,   plat_name: 'Windows Phone', plat_link: "https://www.igdb.com/platforms/winphone", plat_views: 0)
  Platform.create(id: 92,   plat_name: "SteamOS", plat_link: "http://store.steampowered.com/steamos", plat_views: 0)
  Platform.create(id: 130,  plat_name: 'Nintendo Switch', plat_link: "http://www.nintendo.com/switch", plat_views: 0)

  trackerTime

end

def seedGames

  @nameSeed = "Games"
  @added    = "38 Games"
  trackerTime

  #Origin Games
  game = Game.create(id: 115, gam_name: "League of Legends", gam_description: "League of Legends is a fast-paced, competitive online game that blends the speed and intensity of an RTS with RPG elements. Two teams of powerful champions, each with a unique design and playstyle, battle head-to-head across multiple battlefields and game modes. With an ever-expanding roster of champions, frequent updates and a thriving tournament scene, League of Legends offers endless replayability for players of every skill level.",
    gam_link: "http://www.leagueoflegends.com", pegi_id: 3,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/lxoumgqbbj3erxgq6a6l.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(11)
  game.genres << Genre.find(15)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(14)

  game = Game.create(id: 121, gam_name: "Minecraft", gam_description: "Minecraft is an open world game that has no specific goals for the player to accomplish, allowing players a large amount of freedom in choosing how to play the game however, there is an achievement system. The gameplay by default is first person, but players have the option to play in third person mode. The core gameplay revolves around breaking and placing blocks. The game world is essentially composed of rough 3D objects—mainly cubes—that are arranged in a fixed grid pattern and represent different materials, such as dirt, stone, various ores, water, and tree trunks. While players can move freely across the world, objects and items can only be placed at fixed locations relative to the grid. Players can gather these material blocks and place them elsewhere, thus allowing for various constructions.",
    gam_link: "https://minecraft.net/", pegi_id: 2,
    gam_image: "//images.igdb.com/igdb/image/upload/t_cover_big/ew1zwceoeho7lipjxi1n.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(13)
  game.genres << Genre.find(31)
  game.genres << Genre.find(32)
  game.platforms << Platform.find(3)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(9)
  game.platforms << Platform.find(12)
  game.platforms << Platform.find(14)
  game.platforms << Platform.find(34)
  game.platforms << Platform.find(39)
  game.platforms << Platform.find(41)
  game.platforms << Platform.find(45)
  game.platforms << Platform.find(46)
  game.platforms << Platform.find(48)
  game.platforms << Platform.find(49)
  game.platforms << Platform.find(74)
  game.platforms << Platform.find(130)

  game = Game.create(id: 289, gam_name: "Age of Empires", gam_description: "Age of Empires (AoE) is a history-based real-time strategy video game developed by Ensemble Studios and published by Microsoft. The game uses the Genie, a 2D sprite-based game engine. The game allows the user to act as the leader of an ancient civilization by advancing it through four ages (the Stone, Tool, Bronze, and Iron Ages), gaining access to new and improved units with each advance.",
    gam_link: "https://en.wikipedia.org/wiki/Age_of_Empires_(video_game)", pegi_id: 6,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/lclbmfihd2crlasugy6b.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(11)
  game.genres << Genre.find(13)
  game.genres << Genre.find(15)
  game.genres << Genre.find(31)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(14)

  game = Game.create(id: 327, gam_name: "Age of Empires II: The Age of Kings", gam_description: "Take control of a powerful civilization. Lead them through 1000 years of the Middle Ages to riches and greatness. Will you Intimidate the world into following you by using military force? Rule the world with honor and nobility by using commerce and diplomacy? Or Underhandedly seize power through conspiracy, deception and regicide? There are many paths to power, there can only be one ruler!\n\nFeatures:\n\n* Travel through time as your civilization evolves from the Dark Age to the Imperial Age\n\n* Construct a rich and thriving empire by trading with allies\n\n* Control and lead military forces with tactical commands\n\n* Go into battle at the side of famous heroes such as Joan of Arc, Barbarossa or William Wallace",
    gam_link: "http://ageofempires.wikia.com/wiki/Age_of_Empires_Series_Wiki", pegi_id: 6,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/yoqdjsssreh8sjs9nvtv.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(11)
  game.genres << Genre.find(15)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(8)
  game.platforms << Platform.find(14)

  game = Game.create(id: 492, gam_name: "Gears of War 3", gam_description: "Gears of War 3 is the spectacular conclusion to one of the most memorable and celebrated sagas in videogames. Gears of War 3 plunges players into a harrowing tale of hope, survival and brotherhood. In Gears of War 3, players fight on as Marcus Fenix, the grizzled war hero and leader of Delta Squad. Eighteen months after the fall of the last human city, the war against the Locust rages on. Meanwhile, deep beneath the surface, a fearsome new threat is infecting the planet from within. With survivors scattered and civilization in ruins, time is running out for Marcus and his comrades as they fight to save the human race.",
    gam_link: "https://gearsofwar.com/en-us/games/gears-of-war-3/xbox-360", pegi_id: 5,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/w806olyp4jyzem47i8fd.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(5)
  game.platforms << Platform.find(12)
  game.platforms << Platform.find(49)

  game = Game.create(id: 547, gam_name: "Gears of War", gam_description: "A third-person tactical shooter from Epic, running on the Unreal Engine 3. Gears of War thrusts gamers into a deep and harrowing story of humankind's epic battle for survival against the Locust Horde, a nightmarish race of creatures that surface from the bowels of the planet.\n\nUnlike other shooters, Gears of War is all about teamwork in a big way. All game modes, levels and scenarios are designed specifically to encourage co-operative play, whether it be with A.I. partners or human players (with A.I. teammates designed with specific strengths, weaknesses and personalities.) On top of that, voice recognition will be available for players, and obviously voice chat to discuss strategy with your friends. In addition to voice chat, gamers will be able to experience individualized matchmaking, view player statistics, earn player achievements, customize their games, and build and personalize their gamer profiles over Xbox Live.",
    gam_link: "http://gearsofwar.xbox.com/", pegi_id: 5,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/tlitpk2q2sixai0cv2qi.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(5)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(12)

  game = Game.create(id: 548, gam_name: "Gears of War 2", gam_description: "In Gears of War 2, The COG continues its fight against the Locust horde, who are attempting to sink all of the cities on the planet Sera by using a big riftworm to eat the ground beneath them. Sergeant Marcus Fenix leads Delta Squad into the depths of the planet to try to stop the worm from eating but instead they discover the true intent of the Locust actions.",
    gam_link: "https://twitter.com/gearsofwar", pegi_id: 5,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/nfzagyc0ktt66972xici.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(5)
  game.platforms << Platform.find(12)

  game = Game.create(id: 5589, gam_name: "Clash of Clans", gam_description: "Clash of Clans is an addictive mixture of strategic planning and competitive fast-paced combats. Raise an army of Barbarians, War Wizards, Dragons and other mighty fighters. Join a clan of players and rise through the ranks, or create your own Clan to contest ownership of the Realm.",
    gam_link: "http://www.supercell.net/games/view/clash-of-clans", pegi_id: 3,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/aui4ckfsazuiwsrxlvhe.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(11)
  game.genres << Genre.find(15)
  game.platforms << Platform.find(34)
  game.platforms << Platform.find(39)

  game = Game.create(id: 990, gam_name: "Halo: Reach", gam_description: "Experience the story before the events of Halo: Combat Evolved as you fight to defend the planet Reach from a harrowing Covenant invasion. In this first-person shooter you can customize your own Spartan with armor and accessories to experience both a pulse-pounding campaign and addictive multiplayer mode. Reach will fall, but it won't go down without a fight.",
    gam_link: "https://www.halowaypoint.com/en-us/games/halo-reach/xbox-360", pegi_id: 4,
    gam_image: "://images.igdb.com/igdb/image/upload/t_cover_big/btb2qjrmavliwaiqtuyz.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(5)
  game.platforms << Platform.find(12)

  game = Game.create(id: 1020, gam_name: "Grand Theft Auto V", gam_description: "The biggest, most dynamic and most diverse open world ever created, Grand Theft Auto V blends storytelling and gameplay in new ways as players repeatedly jump in and out of the lives of the game’s three lead characters, playing all sides of the game’s interwoven story.",
    gam_link: "http://www.rockstargames.com/V/", pegi_id: 5,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/t0zqmqhdcxppyol3mtlg.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(5)
  game.genres << Genre.find(10)
  game.genres << Genre.find(14)
  game.genres << Genre.find(31)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(9)
  game.platforms << Platform.find(12)
  game.platforms << Platform.find(48)
  game.platforms << Platform.find(49)

  game = Game.create(id: 1905, gam_name: "Fortnite", gam_description: "Fortnite is the living, action building game from the developer formerly known as Epic MegaGames. You and your friends will lead a group of Heroes to reclaim and rebuild a homeland that has been left empty by mysterious darkness only known as \"the Storm\". \n \nBand together online to build extravagant forts, find or build insane weapons and traps and protect your towns from the strange monsters that emerge during the Storm. In an action experience from the only company smart enough to attach chainsaws to guns, get out there to push back the Storm and save the world. And don't forget to loot all the things.",
    gam_link: "http://fortnitegame.com", pegi_id: 2,
    gam_image: "//images.igdb.com/igdb/image/upload/t_cover_big/j7lazlgtms7siqn7fn5y.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(5)
  game.genres << Genre.find(13)
  game.genres << Genre.find(14)
  game.genres << Genre.find(31)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(14)
  game.platforms << Platform.find(39)
  game.platforms << Platform.find(45)
  game.platforms << Platform.find(48)
  game.platforms << Platform.find(49)

  game = Game.create(id: 2609, gam_name: "Rising Storm", gam_description: "Rising Storm is the next game in the award-winning Red Orchestra franchise. You know the great gameplay, innovative features and realistic audio and graphics of RO2 - Rising Storm will take this to the Pacific Theater, adding even more features, new levels, new weapons and new factions. The game will allow the player to fight across iconic locations from the famous island-hopping campaigns in the Pacific from 1942 to 1945, as the US Army and Marine Corps fight it out with the Imperial Japanese army and Special Naval Landing Forces. Players will experience beach assaults, jungle fighting, close quarters night fighting and more across Guadalcanal, Iwo Jima and Saipan, among other iconic battles. The player is able to take the part of either side – American or Japanese – battling it out online in multiplayer on up to 64-player servers.\n\nRising Storm also introduces an entirely new type of gameplay to the franchise - asymmetrical warfare. The American’s have the apparent advantage in firepower with their fast firing semi-automatic rifles, fully automatic weapons, and devastating flamethrower. The Japanese balance this out with gameplay elements that model their raw courage, ferocity, and cunning use of equipment. Their knee mortars allow them to rain indirect fire down on their enemies from anywhere in the map. Grenades can be planted and turned into booby-traps for unwary GIs. The Japanese put very high store on close-quarter combat, with a bayonet on almost every weapon – even machine guns and SMGs. Their banzai charge suppresses the enemy making it difficult for them to return fire and gives them an opportunity to close in to use bayonets and katanas on their opponents.",
    gam_link: "https://en.wikipedia.org/wiki/Rising_Storm_%28video_game%29", pegi_id: 5,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/qw64sh49kyoy8n93173i.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(5)
  game.genres << Genre.find(13)
  game.platforms << Platform.find(6)

  game = Game.create(id: 28540, gam_name: "Assassin's Creed: Origins", gam_description: "For the last four years, the team behind Assassin’s Creed IV Black Flag has been crafting a new beginning for the Assassin’s Creed franchise.\n\nSet in Ancient Egypt, players will journey to the most mysterious place in history, during a crucial period that will shape the world and give rise to the Assassin’s Brotherhood. Plunged into a living, systemic and majestic open world, players are going to discover vibrant ecosystems, made of diverse and exotic landscapes that will provide them with infinite opportunities of pure exploration, adventures and challenges.\n\nPowered by a new fight philosophy, Assassin's Creed Originsembraces a brand new RPG direction where players level up, loot, and choose abilities to shape and customize their very own skilled Assassin as they grow in power and expertise while exploring the entire country of Ancient Egypt.",
    gam_link: "https://store.steampowered.com/app/582160", pegi_id: 5,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/l2dza03yjs6j5u6uuak2.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(12)
  game.genres << Genre.find(31)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(48)
  game.platforms << Platform.find(49)

  game = Game.create(id: 2920, gam_name: "FIFA 14", gam_description: "FIFA 14 is a 2013 sports association football simulation video game developed by EA Canada and published by Electronic Arts. It was released in late September 2013 for the PlayStation 2, PlayStation 3, PlayStation Portable, PlayStation Vita, Xbox 360, Wii, Nintendo 3DS and Microsoft Windows.[3] It was released as freemium, under the title FIFA 14 Mobile, for iOS and Android on September 23, 2013[6] and for Windows Phone 8 on February 28, 2014,[9] although much of the game is inaccessible without an in-app payment. It was a launch title for the PlayStation 4 and Xbox One in November 2013[7][8] and is the last FIFA game to be released for the PlayStation 2 and PlayStation Portable.\n\nThe game received primarily positive reviews across all systems.",
    gam_link: "http://www.ea.com/uk/fifa-14", pegi_id: 1,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/etn5hmoke3spyxmlhoty.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(14)
  game.platforms << Platform.find(5)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(8)
  game.platforms << Platform.find(9)
  game.platforms << Platform.find(12)
  game.platforms << Platform.find(34)
  game.platforms << Platform.find(37)
  game.platforms << Platform.find(38)
  game.platforms << Platform.find(39)
  game.platforms << Platform.find(46)
  game.platforms << Platform.find(48)
  game.platforms << Platform.find(49)

  game = Game.create(id: 2963, gam_name: "Dota 2", gam_description: "Dota 2 is a multiplayer online battle arena video game and the stand-alone sequel to the Defense of the Ancients (DotA) mod.\n\nEach match of Dota 2 involves two teams, both containing five players and occupying a fortified stronghold at either end of the map. Victory is achieved by destroying the enemy's Ancient, a building that is invulnerable until certain objectives are achieved. Each player controls a \"Hero\" character and focuses on leveling up, acquiring items and fighting against the other team to achieve victory during each match.",
  gam_link: "http://www.dota2.com/", pegi_id: 6, gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/qcx7vedma0pvf0hzisxc.jpg",
  gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(9)
  game.genres << Genre.find(11)
  game.genres << Genre.find(12)
  game.genres << Genre.find(15)
  game.genres << Genre.find(24)
  game.platforms << Platform.find(3)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(14)

  game = Game.create(id: 6803, gam_name: "Halo 5: Guardians", gam_description: "Peace is shattered when colony worlds are unexpectedly attacked. But when humanity's greatest hero goes missing, a new Spartan is tasked with hunting the Master Chief and solving a mystery that threatens the entire galaxy.",
    gam_link: "https://en.wikipedia.org/wiki/Halo_5:_Guardians", pegi_id: 4,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/rzjnrhuv5rozj52g9aq3.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(5)
  game.platforms << Platform.find(49)

  game = Game.create(id: 7313, gam_name: "Heroes of the Storm", gam_description: "Heroes of the Storm is a multiplayer online battle arena video game currently under development by Blizzard Entertainment. The game brings together characters (known in the game as heroes) from multiple Blizzard universes, such as Warcraft and StarCraft and puts them against each other in an arena in a 5 versus 5 battle. Heroes of the Storm features multiple game modes, such as co-op (PCs vs. NPCs) and versus (PCs vs. PCs).",
    gam_link: "http://us.battle.net/heroes/en/", pegi_id: 6,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/nam6futpzszd26us2jat.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(11)
  game.genres << Genre.find(15)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(14)

  game = Game.create(id: 7433, gam_name: "FIFA World", gam_description: "Play as your favourite club or country in Online Seasons or create your own unique squad to play your style of football in Ultimate Team. Challenge your friends or challenge the world – it’s the authentic FIFA experience, now FREE to play on PC.\n\nEA SPORTS™ FIFA World features award-winning EA SPORTS FIFA HD console gameplay and over 30 officially licensed leagues, 600 clubs and 16,000 players.",
    gam_link: "https://en.wikipedia.org/wiki/FIFA_World", pegi_id: 1,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/diemodptyfk37ap6jwjq.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(14)
  game.platforms << Platform.find(6)

  game = Game.create(id: 7534, gam_name: "TERA", gam_description: "The unique world of TERA is home to many different inhabitants. A combination of seven playable races, each with a different culture and history, and nine playable classes give you freedom to shape your own history, in a way that you choose.\n\nExplore an enormous world full of diverse terrain and beautiful landscapes, without loading screens and zone transitions. Explore open-world dungeons and fight roaming bosses.\n\nPlayers in TERA are able to run for election in the groundbreaking political system. Choosing a province or continent, players can make a move to take over the mantle of either a Vanarch, the ruler of a province, or Exarch, the ruler of a continent. Doing so will grant the player prestige, glory and power.\n\nKeep a steady hand and know your arsenal, combat in TERA requires a quick finger and nuance on the battlefield, as most skills have to be aimed and can be dodged.\n\nBreathtaking visuals powered by Unreal Engine 3\nFeast your eyes on cutting-edge graphics never before seen in an MMO.\n\nThe enemies in TERA range from small animals to giant, towering demons and monsters. Fighting those colossal creatures is a completely different experience!\nExciting PvP battles in the Battlegrounds\nTeam up with a group of friends to battle other teams in organized battlegrounds. Prizes, glory and conquest awaits the most skilled warriors.\nSocial feature\nAdvanced guild system, auction house, mounts, achievements... everything you can expect from a complete social MMO experience!",
    gam_link: "http://tera.enmasse.com/", pegi_id: 2,
    gam_image: "//images.igdb.com/igdb/image/upload/t_cover_big/yywpkwjetgomzn1qbr8w.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(12)
  game.genres << Genre.find(31)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(48)
  game.platforms << Platform.find(49)

  game = Game.create(id: 7574, gam_name: "FIFA 15", gam_description: "FIFA 15 is a football simulation game developed by EA Canada and published by Electronic Arts. FIFA 15 is the first of the series to be developed for next generation (Xbox One and PS4) consoles and also features the new Ignite game engine.",
    gam_link: "http://www.easports.com/fifa", pegi_id: 1,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/kq2pbxsax0aufgpij41o.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(14)
  game.platforms << Platform.find(5)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(9)
  game.platforms << Platform.find(12)
  game.platforms << Platform.find(37)
  game.platforms << Platform.find(46)
  game.platforms << Platform.find(48)
  game.platforms << Platform.find(49)

  game = Game.create(id: 11133, gam_name: "Dark Souls III", gam_description: "As fires fade and the world falls into ruin, developer FROMSOFTWARE and director Hidetaka Miyazaki continue their critically-acclaimed and genre-defining series with Dark Souls III. Fans and newcomers alike will get lost in the games hallmark rewarding gameplay and immersive graphics. Now only embers remain…",
    gam_link: "http://www.darksouls3.com/", pegi_id: 4,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/c1mahksyzikn8eyjai8q.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(12)
  game.genres << Genre.find(31)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(48)
  game.platforms << Platform.find(49)

  game = Game.create(id: 11186, gam_name: "Gears of War 4", gam_description: "A new saga begins for one of the most acclaimed video game franchises in history. After narrowly escaping an attack on their village, JD Fenix and his friends, Kait and Del, must rescue the ones they love and discover the source of a monstrous new enemy.",
    gam_link: "https://gearsofwar.com/en-us/gears-of-war-4", pegi_id: 5,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/vo0k42jaombqazz5m12j.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(5)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(49)

  game = Game.create(id: 11198, gam_name: "Rocket League", gam_description: "Soccer meets racing once again in our long-awaited, MP-focused sequel to Supersonic Acrobatic Rocket-Powered Battle-Cars!\n\nA futuristic Sports-Action game, Rocket League, equips players with booster-rigged vehicles that can be crashed into balls for incredible goals or epic saves across multiple, highly-detailed arenas. Using an advanced physics system to simulate realistic interactions, Rocket League relies on mass and momentum to give players a complete sense of intuitive control in this unbelievable, high-octane re-imagining of association football.",
    gam_link: "https://www.facebook.com/RocketLeague", pegi_id: 1,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/edkpgyqgfsxyiby9pyj5.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(10)
  game.genres << Genre.find(14)
  game.genres << Genre.find(32)
  game.platforms << Platform.find(45)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(92)
  game.platforms << Platform.find(14)
  game.platforms << Platform.find(48)
  game.platforms << Platform.find(49)
  game.platforms << Platform.find(3)
  game.platforms << Platform.find(130)

  game = Game.create(id: 15707, gam_name: "Clash Royale", gam_description: "Enter the Arena! From the creators of Clash of Clans comes a real-time multiplayer game starring the Royales, your favorite Clash characters and much, much more.\n\nCollect and upgrade dozens of cards featuring the Clash of Clans troops, spells and defenses you know and love, as well as the Royales: Princes, Knights, Baby Dragons and more. Knock the enemy King and Princesses from their towers to defeat your opponents and win Trophies, Crowns and glory in the Arena. Form a Clan to share cards and build your very own battle community.\n\nLead the Clash Royale Family to victory!\n\n\nFEATURES\n*Earn chests to unlock rewards, collect powerful new cards and upgrade existing ones\n*Destroy opponent’s towers and win Crowns to earn epic Crown chests\n*Build and upgrade your card collection with the Clash Royale Family along with dozens of your favorite Clash troops, spells and defenses\n*Construct your ultimate. Battle Deck to defeat your opponents\n*Progress through multiple Arenas all the way to the top\n*Form a Clan to share cards and build your very own battle community\n*Challenge your Clanmates and friends to a private duel\n*Learn different battle tactics by watching the best duels on TV Royale",
    gam_link: "https://clashroyale.com/", pegi_id: 6,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/c7zjtskfahqfyjyisuo5.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(11)
  game.genres << Genre.find(15)
  game.genres << Genre.find(16)
  game.platforms << Platform.find(34)
  game.platforms << Platform.find(39)

  game = Game.create(id: 16707, gam_name: "Duskers", gam_description: "In Duskers you pilot drones into derelict spaceships to find the means to survive and piece together how the universe became a giant graveyard.\nYou are a drone operator, surrounded by old gritty tech that acts as your only eyes and ears to the outside world. What you hear comes through a remote microphone. What you see is how each drone sees the world. Motion sensors tell you something's out there, but not what. And when you issue commands, you do it through a command line interface.",
    gam_link: "http://duskers.misfits-attic.com/", pegi_id: 6,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/tjcysk7qftugymkkxhic.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(15)
  game.genres << Genre.find(32)
  game.platforms << Platform.find(3)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(14)
  game.platforms << Platform.find(92)

  game = Game.create(id: 18116, gam_name: "Barricade", gam_description: "Barricade is an overhead view maze arcade game released by RamTeK in 1976. Players move their blocks across the screen to create walls to try to surround their opponents and force them to crash into the walls or any block.",
    gam_link: "https://www.igdb.com/games/barricade", pegi_id: 6,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/goj9mqykd6ryfkmhwi5l.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(9)
  game.genres << Genre.find(33)
  game.platforms << Platform.find(52)

  game = Game.create(id: 18166, gam_name: "Rising Storm 2: Vietnam", gam_description: "Rising Storm 2: Vietnam is a sequel to the stand-alone expansion pack to Rising Storm and focuses on the Vietnam War.",
    gam_link: "https://en.wikipedia.org/wiki/Rising_Storm_2:_Vietnam", pegi_id: 6,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/wpev096fih78krgnxsyy.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(5)
  game.genres << Genre.find(13)
  game.genres << Genre.find(15)
  game.genres << Genre.find(32)
  game.platforms << Platform.find(6)

  game = Game.create(id: 18138, gam_name: "Pokkén Tournament", gam_description: "Pokkén Tournament was developed with BANDAI NAMCO Entertainment, Inc., the producers of one of the top achievements in fighting games, the Tekken series. True to its legacy, this game brings tight gameplay and incredible control to never-before-seen battles between Pokémon. The gameplay is designed to be enjoyed by a wide range of people—even those who have never played a fighting game or an action game before can easily pick it up and play!\n\nKey Word: Pokke, pokkén, pokken, poken, pokén",
    gam_link: "https://en.wikipedia.org/wiki/Pokk%C3%A9n_Tournament", pegi_id: 2,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/fqt7lnmkdqazqybeuemf.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(4)
  game.genres << Genre.find(33)
  game.platforms << Platform.find(41)
  game.platforms << Platform.find(52)

  game = Game.create(id: 18320, gam_name: "Battlefield 1", gam_description: "Discover classic Battlefield gameplay with epic multiplayer and an adventure-filled campaign. Experience the Dawn of All-Out War, Only in Battlefield 1.\n\nFight your way through epic battles going from tight urban combat in a besieged French city to big open spaces in the Italian Alps or frantic combats in the Arabic sand dunes. Experience large-scale battles as infantry or piloting vehicles on land, air and sea, from the tanks and bikes on the ground, to bi-planes and gigantic battleships.\n\nDiscover a new world at war through an adventure-filled campaign, or join in epic multiplayer battles with up to 64 players. Adapt your tactics and strategy to the earth-shattering, dynamic environments and destruction.",
    gam_link: "http://www.battlefield.com/", pegi_id: 5,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/ts6ceuy9nu1sgwpeabmo.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(5)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(48)
  game.platforms << Platform.find(49)

  game = Game.create(id: 36872, gam_name: "Forza Motorsport 7", gam_description: "Forza is back and in 4K.",
    gam_link: "https://en.wikipedia.org/wiki/Forza_Motorsport_7", pegi_id: 1,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/dwvsn2o0cmq6rff8xvhk.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(10)
  game.genres << Genre.find(13)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(49)

  game = Game.create(id: 41608, gam_name: "Halo: The Master Chief Collection Limited Edition", gam_description: "Relive the greatest adventures of the ultimate solder with Halo: The Master Chief Collection, which includes the complete story of the Master Chief on one console for the first time ever. Halo: Combat Evolved , Halo 2, Halo 3 and Halo 4 are all packed into this massive package. And not only is the debut Halo delivered in its acclaimed Anniversary package, but for the first time, an entirely remastered version of the iconic sequel that revolutionized online console gaming is available with the Halo 2 Anniversary version of the game. This collection lets you experience Halo in an all-new way, at higher visual fidelity running at 60 frames per second (fps) on dedicated servers.\n\nHalo: The Master Chief Collection features curated campaign and multiplayer playlists across all four games and features more than 100 multiplayer maps -- authentic to their original release. In addition, Halo 2 Anniversary includes six all-new maps built from the ground up for Xbox One.",
    gam_link: "https://www.igdb.com/games/halo-the-master-chief-collection-limited-edition", pegi_id: 6,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/kuaub4pjaajuepmlxuq3.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(5)
  game.platforms << Platform.find(49)

  game = Game.create(id: 11071, gam_name: "FIFA 16", gam_description: "FIFA 16 innovates across the entire pitch to deliver a balanced, authentic, and exciting football experience that lets you play your way, and compete at a higher level. You'll have Confidence in Defending, take Control in Midfield, and you'll produce more Moments of Magic than ever before. FIFA 16 - Play Beautiful.\n\nWith innovative gameplay features, FIFA 16 brings Confidence in Defending, Control in Midfield, and gives you the tools to create more Moments of Magic than ever before. Fans new to the franchise, or skilled players looking to improve their game will have a chance to Compete at a Higher Level using the all new FIFA Trainer. Innovation Across the Entire Pitch. New Ways to Play. Compete at a Higher Level.",
    gam_link: "https://en.wikipedia.org/wiki/FIFA_16", pegi_id: 1,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/z6ukyh2er3ntgeax0yew.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(14)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(9)
  game.platforms << Platform.find(12)
  game.platforms << Platform.find(34)
  game.platforms << Platform.find(39)
  game.platforms << Platform.find(48)
  game.platforms << Platform.find(49)


  game = Game.create(id: 11544, gam_name: "Paladins", gam_description: "Paladins is a brightly colored, online, class based, first person shooter. It features Champions who have various weapons and abilities. On top of that, there is a Cards System that modifies the behaviour and abilities in certain ways.\n\nEnter a fantasy world of ancient technology in Paladins, a team-based shooter with strategy elements and deep character customization. Through a unique collectible card system, players can amplify and augment a character’s core set of abilities to play exactly how they want to play.",
    gam_link: "http://www.paladins.com/", pegi_id: 6,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/cqfnhpjoz4njvino6vnf.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(5)
  game.genres << Genre.find(11)
  game.genres << Genre.find(15)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(14)
  game.platforms << Platform.find(45)
  game.platforms << Platform.find(48)
  game.platforms << Platform.find(49)

  game = Game.create(id: 16741, gam_name: "Blade & Soul", gam_description: "Blade & Soul is a MMORPG currently in development by NCsoft's Team Bloodlust development team. The characters in this oriental style game are designed by the well-known illustrator Hyung-tae Kim.", gam_link: "http://www.bladeandsoul.com/en/", pegi_id: 6,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/myriiu2kmjjbzuyug74j.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(12)
  game.platforms << Platform.find(6)

  game = Game.create(id: 19459, gam_name: "FIFA 17", gam_description: "For the first time ever in FIFA, live your story on and off the pitch as the Premier League’s next rising star, Alex Hunter. Play on any club in the Premier league, for authentic managers and alongside some of the best players on the planet. Experience brand new worlds in FIFA 17, all while navigating your way through the emotional highs and lows of The Journey.",
    gam_link: "https://www.easports.com/fifa/the-journey", pegi_id: 1,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/xv7upjgzdop40tvgztte.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(14)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(9)
  game.platforms << Platform.find(12)
  game.platforms << Platform.find(45)
  game.platforms << Platform.find(48)
  game.platforms << Platform.find(49)

  game = Game.create(id: 27081, gam_name: "FIFA 18", gam_description: "Powered by Frostbite™, EA SPORTS™ FIFA 18 blurs the line between the virtual and real worlds, bringing to life the players, teams, and atmospheres that immerse you in the emotion of The World’s Game. The biggest step in gameplay innovation in franchise history, FIFA 18 introduces Real Player Motion Technology, an all-new animation system which unlocks a new level of responsiveness, and player personality – now Cristiano Ronaldo and other top players feel and move exactly like they do on the real pitch. Player Control combined with new Team Styles and Positioning give you the tools to deliver Dramatic Moments that ignite Immersive Atmospheres around the world. The World’s Game also takes you on a global journey as Alex Hunter Returns along with a star-studded cast of characters, including Cristiano Ronaldo and other European football stars. And in FIFA Ultimate Team™, FUT ICONS, featuring Ronaldo Nazário and other football legends, are coming to FIFA 18 on PlayStation 4, Xbox One, and PC when the game launches on September 29, 2017.",
    gam_link: "https://www.easports.com/fifa/", pegi_id: 1,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/ybvx0zc8nxkqorpfjjsp.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(14)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(9)
  game.platforms << Platform.find(12)
  game.platforms << Platform.find(48)
  game.platforms << Platform.find(49)
  game.platforms << Platform.find(130)

  game = Game.create(id: 36794, gam_name: "Pokkén Tournament DX", gam_description: "Pokkén Tournament (Japanese: ポッ拳 Hepburn: Pokken) is a fighting video game developed by Bandai Namco Studios and published by The Pokémon Company. The game combines gameplay elements from Bandai Namco's Tekken series with characters from Nintendo's Pokémon franchise.[4] It was released for Japanese arcades in July 2015, and worldwide for the Wii U in March 2016.[5] An enhanced port for the Nintendo Switch, titled Pokkén Tournament DX, was released in September 2017.",
    gam_link: "http://www.pokkentournament.com/dx/en-us/", pegi_id: 6,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/efib2m2zdhcy3gvem4b5.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(4)
  game.genres << Genre.find(33)
  game.platforms << Platform.find(130)

  game = Game.create(id: 36911, gam_name: "Dragon Ball FighterZ", gam_description: "DRAGON BALL FighterZ is born from what makes the DRAGON BALL series so loved and famous: endless spectacular fights with its all-powerful fighters.",
    gam_link: "http://dragonball.wikia.com/wiki/Dragon_Ball_FighterZ", pegi_id: 3,
    gam_image: "//images.igdb.com/igdb/image/upload/t_thumb/d3u9twanoznp5fspuzpe.jpg", gam_user_counter: 0, gam_views: 0)
  game.genres << Genre.find(4)
  game.platforms << Platform.find(6)
  game.platforms << Platform.find(48)
  game.platforms << Platform.find(49)

  trackerTime
end

def seedSubForum
  @nameSeed = "SubForum"
  @comments = 0
  @added    = "114 subforums, 342 thread forums and "
  trackerTime

  counter = 0.0
  total = Game.count
  puts ((counter/total)*100).to_s + "%"
  Game.all.each{ |game|
    2.times do
      sf = SubForum.create(sf_name: Faker::Zelda.location + " " + Faker::Zelda.character,
        sf_description: Faker::LeagueOfLegends.quote, game: game)
      seedThreadForum(sf)
    end
    counter = counter + 1
    puts ((counter/total)*100).to_s + "%"
  }

  @added = @added + @comments + "comments"
  trackerTime
end

def seedThreadForum(sub_forum)
  2.times do
    a = ThreadForum.create(thr_name: Faker::Zelda.item, thr_views: 0, thr_comments: 0, sub_forum: sub_forum)
    seedComments(a)
    a.save
  end
end

def seedComments(thread_forum)
  comments = Faker::Number.between(1, 10)
  @comments = @comments + comments
  comments.times do
    Comment.create(com_comment: Faker::MostInterestingManInTheWorld.quote,
      thread_forum: thread_forum, player_profile: PlayerProfile.find(Faker::Number.between(1, 15)))
  end
  thread_forum.update_attribute(:thr_comments, comments)
end

def rawSeed
  @nameSeed = "rawSeed"
  @comments = 0
  @added    = "everything"
  trackerTime
  File.open("db/raw_seed.sql", "r") do |f|
    f.each_line do |line|
      puts ActiveRecord::Base.connection.execute(line)
    end
  end
  PlayerProfile.create(pp_username: "admin", password_confirmation: "admin1234", password: "admin1234", location_id: 1,
    email: "admin@admin.com", pp_spairing_elo: 0, pp_avatar: 'user.svg')
  print("   -> email: admin@admin.com password: admin \n")
  trackerTime
end

# Seeding with functions

#seedSponsorsAndAds
#seedLocations
#seedPegi
#seedGenres
#seedPlatforms
#seedGames
#seedPlayerProfilesAndPlayerGameProfiles
#seedSubForum
#seedMailBoxes
#seedPlayerFriends
#seedPlayerBlokedList
rawSeed
