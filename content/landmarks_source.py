# Master list of the landmark photos in public/structures/ (Randy's photos).
#
#   python3 content/landmarks_source.py
#
# writes BOTH:
#   - country_monkey_landmarks.sql  (Country Monkey's LANDMARK questions)
#   - content/landmarks.csv         (the Thinking Pants "Wish You Were Here"
#                                    category; build.mjs turns it into SQL)
#
# One row per photo: file, answer, regions, difficulty, 6 wrong answers,
# other names a typed Final Wager answer may use.
#
# Difficulty 1-4: 1 = anyone knows it (Eiffel Tower), 4 = an expert's pick
# (Turning Torso). Thinking Pants tile = difficulty x 100. Country Monkey uses
# its own 100-250 scale (1=100, 2=150, 3=200, 4=250); its Final Wager picks
# from the easier middle level, i.e. difficulty 2 landmarks.
#
# Regions are Country Monkey's: AFRICA, AMERICAS, ASIA (Asia & Pacific),
# EUROPE, MIDDLE_EAST_ASIA. A landmark in a country that sits in two regions
# (Egypt, Turkiye, Pakistan) is listed in both, like that country's map.
#
# Wrong answers are real places of the same kind and look (tower for tower,
# canyon for canyon), so a guess by elimination doesn't work.
import csv, os

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

E, AM, AS, ME, AF = 'EUROPE', 'AMERICAS', 'ASIA', 'MIDDLE_EAST_ASIA', 'AFRICA'

L = [
# --- difficulty 1: the postcard icons -------------------------------------
('eiffel-tower', 'Eiffel Tower', [E], 1, ['Tokyo Tower', 'Blackpool Tower', 'CN Tower', 'Space Needle', 'Berlin TV Tower', 'Petronas Towers'], []),
('great-pyramids', 'Great Pyramids of Giza', [AF, ME], 1, ['Pyramid of Djoser', 'Chichen Itza', 'Pyramids of Meroë', 'Pyramid of the Sun', 'Temple of Karnak', 'Valley of the Kings'], ['Pyramids of Giza', 'Giza Pyramids', 'Great Pyramid of Giza', 'Great Pyramids', 'Pyramids']),
('taj-mahal', 'Taj Mahal', [AS], 1, ["Humayun's Tomb", 'Red Fort', 'Jama Masjid', 'Sheikh Zayed Grand Mosque', 'Bibi Ka Maqbara', 'Badshahi Mosque'], []),
('big-ben', 'Big Ben', [E], 1, ['Tower Bridge', 'Westminster Abbey', 'Hungarian Parliament Building', 'Buckingham Palace', 'Tower of London', "St. Paul's Cathedral"], ['Elizabeth Tower', 'Palace of Westminster', 'Houses of Parliament']),
('colosseum', 'Colosseum', [E], 1, ['Roman Forum', 'Pantheon', 'Arena of Nîmes', 'Verona Arena', 'Circus Maximus', 'Amphitheatre of El Jem'], ['Coliseum', 'Flavian Amphitheatre', 'Roman Colosseum']),
('leaning-tower-pisa', 'Leaning Tower of Pisa', [E], 1, ["Giotto's Campanile", "St. Mark's Campanile", 'Torre del Mangia', 'Asinelli Tower', 'Belfry of Bruges', 'Tower of Hercules'], ['Tower of Pisa', 'Pisa Tower']),
('burj-khalifa', 'Burj Khalifa', [ME], 1, ['Kingdom Centre', 'Shanghai Tower', 'Taipei 101', 'Lotte World Tower', 'One World Trade Center', 'Burj Al Arab'], []),
('space-needle', 'Space Needle', [AM], 1, ['CN Tower', 'Stratosphere Tower', 'Tower of the Americas', 'Sky Tower', 'Reunion Tower', 'Calgary Tower'], []),
('sydney-opera', 'Sydney Opera House', [AS], 1, ['Esplanade Theatres', 'Elbphilharmonie', 'Walt Disney Concert Hall', 'Oslo Opera House', 'Auditorio de Tenerife', 'Lotus Temple'], ['Sydney Opera']),
('white-house', 'White House', [AM], 1, ['US Capitol', 'Lincoln Memorial', 'Monticello', 'Mount Vernon', 'Jefferson Memorial', 'Blair House'], ['The White House']),
('christ-redeemer', 'Christ the Redeemer', [AM], 1, ['Cristo Rei', 'Christ of the Abyss', 'Christ of the Ozarks', 'Cristo de la Concordia', 'Statue of Liberty', 'Christ the King'], ['Cristo Redentor', 'Christ the Redeemer statue']),
('golden-gate', 'Golden Gate Bridge', [AM], 1, ['Brooklyn Bridge', 'Bay Bridge', '25 de Abril Bridge', 'Verrazzano-Narrows Bridge', 'Mackinac Bridge', 'Tower Bridge'], ['Golden Gate']),
('grand-canyon', 'Grand Canyon', [AM], 1, ['Bryce Canyon', 'Zion Canyon', 'Antelope Canyon', 'Copper Canyon', 'Fish River Canyon', 'Canyonlands'], []),
('great-sphinx', 'Great Sphinx of Giza', [AF, ME], 1, ['Abu Simbel', 'Colossi of Memnon', 'Temple of Karnak', 'Avenue of Sphinxes', 'Mask of Tutankhamun', 'Temple of Luxor'], ['Sphinx', 'Great Sphinx', 'Sphinx of Giza']),
('great-wall', 'Great Wall of China', [AS], 1, ["Hadrian's Wall", 'Walls of Ston', 'Ming City Wall of Xi’an', 'Kumbhalgarh Fort wall', 'Walls of Constantinople', 'Forbidden City'], ['Great Wall', 'The Great Wall']),
('machu-picchu', 'Machu Picchu', [AM], 1, ['Choquequirao', 'Ollantaytambo', 'Sacsayhuamán', 'Ciudad Perdida', 'Kuélap', 'Tikal'], []),
('mount-rushmore', 'Mount Rushmore', [AM], 1, ['Crazy Horse Memorial', 'Stone Mountain', 'Lincoln Memorial', 'Mount Hood', 'Devils Tower', 'Pikes Peak'], ['Mount Rushmore National Memorial', 'Rushmore']),
('mt-fuji', 'Mount Fuji', [AS], 1, ['Mount Kilimanjaro', 'Mount Rainier', 'Mount Mayon', 'Mount Taranaki', 'Mount Etna', 'Mount Ararat'], ['Fuji', 'Fujisan', 'Mt Fuji', 'Mount Fujiyama']),
# --- difficulty 2: well known, a moment's thought -------------------------
('arc-triomphe', 'Arc de Triomphe', [E], 2, ['Brandenburg Gate', 'Arch of Constantine', 'Washington Square Arch', 'Marble Arch', 'Gateway of India', 'Wellington Arch'], ["Arc de Triomphe de l'Etoile", 'Arch of Triumph']),
('forbidden-city', 'Forbidden City', [AS], 2, ['Temple of Heaven', 'Summer Palace', 'Gyeongbokgung Palace', 'Potala Palace', 'Tokyo Imperial Palace', 'Imperial City of Hue'], ['Palace Museum']),
('parthenon', 'Parthenon', [E], 2, ['Pantheon', 'Temple of Hephaestus', 'Temple of Olympian Zeus', 'Erechtheion', 'Lincoln Memorial', 'Maison Carrée'], ['Acropolis']),
('us-capitol', 'US Capitol', [AM], 2, ['White House', 'Lincoln Memorial', 'Jefferson Memorial', "St. Peter's Basilica", 'Texas State Capitol', 'Library of Congress'], ['United States Capitol', 'Capitol Building', 'US Capitol Building', 'Capitol']),
('brooklyn-bridge', 'Brooklyn Bridge', [AM], 2, ['Manhattan Bridge', 'Williamsburg Bridge', 'Golden Gate Bridge', 'Tower Bridge', 'Clifton Suspension Bridge', 'Queensboro Bridge'], []),
('burj-alarab', 'Burj Al Arab', [ME], 2, ['Burj Khalifa', 'Atlantis The Palm', 'Kingdom Centre', 'Emirates Palace', 'Museum of the Future', 'Marina Bay Sands'], ['Burj al-Arab']),
('gateway-arch', 'Gateway Arch', [AM], 2, ['Arc de Triomphe', 'Washington Square Arch', 'Delicate Arch', 'Hoover Dam', 'Golden Gate Bridge', 'Space Needle'], ['St. Louis Arch', 'Saint Louis Arch', 'Gateway to the West']),
('marina-bay', 'Marina Bay Sands', [AS], 2, ['Petronas Towers', 'Burj Al Arab', 'Gardens by the Bay', 'Raffles Hotel', 'Atlantis The Palm', 'Taipei 101'], ['Marina Bay']),
('neuschwanstein-castle', 'Neuschwanstein Castle', [E], 2, ['Hohenzollern Castle', 'Bran Castle', 'Château de Chambord', 'Lichtenstein Castle', 'Eltz Castle', 'Pena Palace'], ['Neuschwanstein']),
('one-wtc', 'One World Trade Center', [AM], 2, ['Empire State Building', 'Willis Tower', 'Chrysler Building', 'Burj Khalifa', 'Shanghai Tower', 'Freedom Tower Miami'], ['Freedom Tower', 'One World Trade', 'One WTC', 'World Trade Center']),
('petronas-towers', 'Petronas Towers', [AS], 2, ['Taipei 101', 'Shanghai Tower', 'Burj Khalifa', 'Marina Bay Sands', 'Jin Mao Tower', 'Canton Tower'], ['Petronas Twin Towers']),
('taipei-101', 'Taipei 101', [AS], 2, ['Petronas Towers', 'Shanghai Tower', 'Jin Mao Tower', 'Canton Tower', 'Lotte World Tower', 'Burj Khalifa'], []),
('ayers-rock-uluru', 'Uluru', [AS], 2, ['Kata Tjuta', 'Mount Augustus', 'Wave Rock', 'Table Mountain', 'Monument Valley', 'Sugarloaf Mountain'], ['Ayers Rock']),
('blue-mosque', 'Blue Mosque', [E, ME], 2, ['Hagia Sophia', 'Süleymaniye Mosque', 'Sheikh Zayed Grand Mosque', 'Badshahi Mosque', 'Faisal Mosque', 'Hassan II Mosque'], ['Sultan Ahmed Mosque', 'Sultanahmet Mosque']),
('chichen-itza', 'Chichen Itza', [AM], 2, ['Teotihuacan', 'Tikal', 'Palenque', 'Uxmal', 'Great Pyramid of Giza', 'Coba'], ['Chichén Itzá', 'El Castillo', 'Temple of Kukulcan']),
('easter-island', 'Easter Island (Moai)', [AM], 2, ['Stonehenge', 'Mount Rushmore', 'Nan Madol', 'Göbekli Tepe', 'Carnac Stones', 'Tiwanaku'], ['Easter Island', 'Moai', 'Rapa Nui']),
('grand-canal', 'Grand Canal of Venice', [E], 2, ['Canals of Amsterdam', 'Nyhavn', 'Canal du Midi', 'Bruges canals', 'Burano', 'Regent’s Canal'], ['Grand Canal', 'Canal Grande', 'Venice']),
('hagia-sophia', 'Hagia Sophia', [E, ME], 2, ['Blue Mosque', 'Süleymaniye Mosque', 'Pantheon', "St. Basil's Cathedral", 'Dome of the Rock', 'Florence Cathedral'], ['Aya Sofya', 'Ayasofya', 'Hagia Sofia']),
('hoover-dam', 'Hoover Dam', [AM], 2, ['Glen Canyon Dam', 'Grand Coulee Dam', 'Three Gorges Dam', 'Itaipu Dam', 'Aswan High Dam', 'Shasta Dam'], ['Boulder Dam']),
('mont-stmichel', 'Mont-Saint-Michel', [E], 2, ["St Michael's Mount", 'Château de Chambord', 'Carcassonne', 'Neuschwanstein Castle', 'Skellig Michael', 'Bled Island'], ['Mont Saint Michel', 'Mont St Michel']),
('mt-kilimanjaro', 'Mount Kilimanjaro', [AF], 2, ['Mount Kenya', 'Mount Fuji', 'Mount Meru', 'Mount Stanley', 'Mount Elgon', 'Mount Cameroon'], ['Kilimanjaro', 'Mt Kilimanjaro']),
# --- difficulty 3: a good team gets it --------------------------------------
('angkor-wat', 'Angkor Wat', [AS], 3, ['Borobudur', 'Bagan', 'Wat Arun', 'Ayutthaya', 'Prambanan', 'Preah Vihear'], ['Angkor']),
('golden-pavilion', 'Golden Pavilion', [AS], 3, ['Silver Pavilion', 'Himeji Castle', 'Byōdō-in', 'Kiyomizu-dera', 'Tōdai-ji', 'Sensō-ji'], ['Kinkaku-ji', 'Kinkakuji', 'Temple of the Golden Pavilion']),
('versailles', 'Palace of Versailles', [E], 3, ['Louvre', 'Schönbrunn Palace', 'Buckingham Palace', 'Château de Chambord', 'Palace of Fontainebleau', 'Winter Palace'], ['Versailles', 'Chateau de Versailles']),
('atomium-brussels', 'Atomium', [E], 3, ['Unisphere', 'Spaceship Earth', 'Berlin TV Tower', 'Oriental Pearl Tower', 'Montreal Biosphere', 'Gasometer Vienna'], []),
('birds-nest', "Bird's Nest Stadium", [AS], 3, ['Allianz Arena', 'Water Cube', 'Wembley Stadium', 'Tokyo Olympic Stadium', 'Olympiastadion Munich', 'Canton Tower'], ["Bird's Nest", 'Beijing National Stadium', 'National Stadium Beijing']),
('cn-tower', 'CN Tower', [AM], 3, ['Space Needle', 'Stratosphere Tower', 'Sky Tower', 'Ostankino Tower', 'Calgary Tower', 'Tower of the Americas'], ['CN Tower Toronto']),
('falling-water', 'Fallingwater', [AM], 3, ['Taliesin West', 'Robie House', 'Glass House', 'Farnsworth House', 'Villa Savoye', 'Gamble House'], ['Falling Water']),
('guggenheim-bilbao', 'Guggenheim Museum Bilbao', [E], 3, ['Walt Disney Concert Hall', 'Dancing House', 'Louvre Abu Dhabi', 'Elbphilharmonie', 'City of Arts and Sciences', 'Centre Pompidou'], ['Guggenheim Bilbao', 'Bilbao Guggenheim']),
('guggenheim-ny', 'Guggenheim Museum, New York', [AM], 3, ['Museum of Modern Art', 'Whitney Museum', 'Metropolitan Museum of Art', 'Getty Center', 'Hirshhorn Museum', 'Lincoln Center'], ['Guggenheim', 'Guggenheim New York', 'Solomon R. Guggenheim Museum', 'Guggenheim Museum']),
('the-shard', 'The Shard', [E], 3, ['The Gherkin', 'One Canada Square', 'Walkie-Talkie', 'Heron Tower', 'Commerzbank Tower', 'Torre Glòries'], ['Shard', 'Shard London Bridge']),
('flatiron-building', 'Flatiron Building', [AM], 4, ['Chrysler Building', 'Woolworth Building', 'Empire State Building', 'Wrigley Building', 'Gooderham Building', 'Singer Building'], ['Flatiron', 'Fuller Building']),
('angel-falls', 'Angel Falls', [AM], 3, ['Iguazu Falls', 'Victoria Falls', 'Kaieteur Falls', 'Yosemite Falls', 'Niagara Falls', 'Tugela Falls'], ['Kerepakupai Merú', 'Salto Ángel']),
('canton-tower', 'Canton Tower', [AS], 4, ['Oriental Pearl Tower', 'Tokyo Skytree', 'Taipei 101', 'Macau Tower', 'Milad Tower', 'Ostankino Tower'], ['Guangzhou Tower']),
('fort-knox', 'Fort Knox', [AM], 4, ['Federal Reserve Bank of New York', 'Pentagon', 'West Point', 'Fort Sumter', 'Area 51', 'US Mint, Philadelphia'], ['United States Bullion Depository', 'US Bullion Depository', 'Bullion Depository']),
('halong-bay', 'Ha Long Bay', [AS], 3, ['Phang Nga Bay', 'Guilin', 'El Nido', 'Raja Ampat', 'Rock Islands of Palau', 'Krabi'], ['Halong Bay', 'Ha Long']),
('horseshoe-bend', 'Horseshoe Bend', [AM], 3, ['Grand Canyon', 'Antelope Canyon', 'Goosenecks State Park', 'Dead Horse Point', 'Glen Canyon', 'Monument Valley'], []),
('iguacu-falls', 'Iguazu Falls', [AM], 3, ['Victoria Falls', 'Niagara Falls', 'Angel Falls', 'Kaieteur Falls', 'Gullfoss', 'Detian Falls'], ['Iguacu Falls', 'Iguaçu Falls', 'Iguassu Falls', 'Iguazu']),
('lotus-temple', 'Lotus Temple', [AS], 3, ['Sydney Opera House', 'Akshardham', 'Golden Temple', 'Taj Mahal', 'ArtScience Museum', 'Sheikh Zayed Grand Mosque'], ['Bahai Lotus Temple', "Bahá'í House of Worship"]),
('mesa-verde', 'Mesa Verde', [AM], 4, ['Chaco Canyon', 'Taos Pueblo', 'Canyon de Chelly', 'Montezuma Castle', 'Petra', 'Bandelier'], ['Cliff Palace', 'Mesa Verde National Park']),
('monument-valley', 'Monument Valley', [AM], 3, ['Grand Canyon', 'Arches National Park', 'Bryce Canyon', 'Valley of Fire', 'Uluru', 'Garden of the Gods'], []),
('mt-everest', 'Mount Everest', [AS], 3, ['K2', 'Kangchenjunga', 'Annapurna', 'Matterhorn', 'Mount McKinley', 'Aconcagua'], ['Everest', 'Sagarmatha', 'Chomolungma', 'Mt Everest']),
('museum-future', 'Museum of the Future', [ME], 3, ['Louvre Abu Dhabi', 'Burj Al Arab', 'Atlantis The Palm', 'Dubai Frame', 'Jewel Changi', 'Heydar Aliyev Center'], []),
# --- difficulty 4: the expert's pick ----------------------------------------
('winter-palace', 'Winter Palace', [E], 4, ['Catherine Palace', 'Peterhof Palace', 'Kremlin', 'Schönbrunn Palace', 'Palace of Versailles', 'Buckingham Palace'], ['Hermitage', 'Hermitage Museum', 'State Hermitage Museum']),
('pantheon', 'Pantheon', [E], 4, ['Parthenon', 'Hagia Sophia', "St. Peter's Basilica", 'Florence Cathedral', 'Temple of Hephaestus', 'Jefferson Memorial'], ['Pantheon Rome', 'Roman Pantheon']),
('bosco-verticale', 'Bosco Verticale', [E], 4, ['One Central Park', 'Jewel Changi', 'Oasia Hotel', 'Tree House Singapore', 'Turning Torso', 'Torre Velasca'], ['Vertical Forest']),
('evolution-tower', 'Evolution Tower', [E], 4, ['Turning Torso', 'Cayan Tower', 'Federation Tower', 'Mercury City Tower', 'Absolute World', 'Shanghai Tower'], []),
('habitat-67', 'Habitat 67', [AM], 4, ['Nakagin Capsule Tower', 'The Interlace', 'Barbican Estate', 'Kubuswoningen', 'Unité d\'Habitation', 'Byker Wall'], ['Habitat']),
('turning-torso', 'Turning Torso', [E], 4, ['Cayan Tower', 'Evolution Tower', 'Absolute World', 'Infinity Tower', 'Shanghai Tower', 'The Shard'], ['HSB Turning Torso']),
('villa-savoye', 'Villa Savoye', [E], 4, ['Fallingwater', 'Farnsworth House', 'Glass House', 'Villa Tugendhat', 'Rietveld Schröder House', 'Barcelona Pavilion'], []),
('amber-palace', 'Amber Fort', [AS], 4, ['Mehrangarh Fort', 'City Palace, Udaipur', 'Red Fort', 'Hawa Mahal', 'Jaisalmer Fort', 'Chittorgarh Fort'], ['Amer Fort', 'Amber Palace', 'Amer Palace']),
('chand-baori', 'Chand Baori', [AS], 4, ['Rani ki Vav', 'Adalaj Stepwell', 'Agrasen ki Baoli', 'Hampi', 'Fatehpur Sikri', 'Toorji Ka Jhalra'], ['Chand Baori stepwell']),
('derawar-fort', 'Derawar Fort', [AS, ME], 4, ['Lahore Fort', 'Rohtas Fort', 'Jaisalmer Fort', 'Mehrangarh Fort', 'Ranikot Fort', 'Bala Hissar'], ['Derawar']),
('fort-mchenry', 'Fort McHenry', [AM], 4, ['Fort Sumter', 'Fort Ticonderoga', 'Fort Bourtange', 'Fort Monroe', 'Castillo de San Marcos', 'Fort Jefferson'], ['Fort McHenry National Monument']),
('kyoto-tower', 'Kyoto Tower', [AS], 4, ['Tokyo Tower', 'Tokyo Skytree', 'Nagoya TV Tower', 'Sapporo TV Tower', 'Space Needle', 'Canton Tower'], []),
('las-lajas', 'Las Lajas Sanctuary', [AM], 4, ['Basilica of Our Lady of Guadalupe', 'Cathedral of Salt', 'Notre-Dame de Paris', 'Mont-Saint-Michel', 'Sagrada Família', 'Basilica del Voto Nacional'], ['Las Lajas', 'Santuario de Las Lajas']),
# --- added with Randy's second batch (difficulty in each row) -------------
('statue-liberty', 'Statue of Liberty', [AM], 1, ['Christ the Redeemer', 'The Motherland Calls', 'Statue of Unity', 'Colossus of Rhodes', 'Lincoln Memorial', 'Mount Rushmore'], ['Liberty Enlightening the World', 'Lady Liberty']),
('tower-bridge', 'Tower Bridge', [E], 1, ['London Bridge', 'Big Ben', 'Brooklyn Bridge', 'Charles Bridge', 'Westminster Bridge', 'Forth Bridge'], []),
('stonehenge-stones', 'Stonehenge', [E], 1, ['Avebury', 'Carnac Stones', 'Callanish Stones', 'Ring of Brodgar', 'Easter Island (Moai)', 'Göbekli Tepe'], []),
('niagarafalls', 'Niagara Falls', [AM], 1, ['Iguazu Falls', 'Victoria Falls', 'Angel Falls', 'Horseshoe Falls of Iceland', 'Gullfoss', 'Yosemite Falls'], ['Horseshoe Falls', 'Niagara']),
('st-basils', "St. Basil's Cathedral", [E], 1, ['Kremlin', 'Church of the Savior on Spilled Blood', 'Hagia Sophia', 'Cathedral of Christ the Saviour', 'Winter Palace', 'Alexander Nevsky Cathedral'], ["Saint Basil's Cathedral", "St Basil's", 'Saint Basils']),
('the-louvre', 'The Louvre', [E], 1, ['Palace of Versailles', "Musée d'Orsay", 'Centre Pompidou', 'British Museum', 'Rijksmuseum', 'Grand Palais'], ['Louvre', 'Louvre Museum', 'Louvre Pyramid']),
('notre-dame', 'Notre-Dame de Paris', [E], 2, ['Reims Cathedral', 'Chartres Cathedral', 'Cologne Cathedral', 'Westminster Abbey', 'Sacré-Cœur', 'Milan Cathedral'], ['Notre Dame', 'Notre-Dame', 'Notre Dame Cathedral']),
('petra-landmark', 'Petra', [ME], 2, ['Persepolis', 'Palmyra', 'Abu Simbel', 'Mada’in Salih', 'Baalbek', 'Jerash'], ['Al-Deir', 'The Monastery, Petra']),
('the-alamo', 'The Alamo', [AM], 2, ['Mission San José', 'Fort Sumter', 'Mission Santa Barbara', 'Independence Hall', 'Fort McHenry', 'Mission Dolores'], ['Alamo', 'Alamo Mission']),
('tikal-temple', 'Tikal', [AM], 3, ['Chichen Itza', 'Palenque', 'Copán', 'Teotihuacan', 'Calakmul', 'Uxmal'], ['Temple of the Great Jaguar']),
('temple-sun', 'Pyramid of the Sun', [AM], 3, ['Chichen Itza', 'Pyramid of the Moon', 'Great Pyramid of Cholula', 'Tikal', 'Pyramid of Djoser', 'Great Pyramids of Giza'], ['Teotihuacan', 'Teotihuacán']),
('pont-dugard', 'Pont du Gard', [E], 3, ['Aqueduct of Segovia', 'Roman Bridge of Córdoba', 'Les Ferreres Aqueduct', 'Valens Aqueduct', 'Ponte Vecchio', 'Glenfinnan Viaduct'], ['Pont du Gard aqueduct']),
('rialto-bridge', 'Rialto Bridge', [E], 3, ['Ponte Vecchio', 'Bridge of Sighs', 'Charles Bridge', 'Pont Neuf', 'Stari Most', 'Accademia Bridge'], ['Ponte di Rialto', 'Rialto']),
('the-vessel', 'The Vessel', [AM], 3, ['The Spheres', 'Cloud Gate', 'Oculus', 'Little Island', 'Seattle Central Library', 'Elbphilharmonie'], ['Vessel', 'Hudson Yards Vessel']),
('todai-ji', 'Tōdai-ji', [AS], 3, ['Golden Pavilion', 'Kiyomizu-dera', 'Sensō-ji', 'Byōdō-in', 'Himeji Castle', 'Heian Shrine'], ['Todai-ji', 'Todaiji', 'Great Buddha Hall']),
('three-gorges', 'Three Gorges Dam', [AS], 4, ['Hoover Dam', 'Itaipu Dam', 'Aswan High Dam', 'Grand Coulee Dam', 'Xiluodu Dam', 'Tarbela Dam'], ['Three Gorges']),
('sigiriya-fortress', 'Sigiriya', [AS], 4, ['Ajanta Caves', 'Mount Popa', 'Meteora', 'Ellora Caves', 'Masada', 'Mount Kailash'], ['Lion Rock', 'Sigiriya Rock']),
# --- added with Randy's third batch: Africa and the Middle East -------------
('victoria-falls', 'Victoria Falls', [AF], 1, ['Iguazu Falls', 'Niagara Falls', 'Angel Falls', 'Murchison Falls', 'Tugela Falls', 'Blue Nile Falls'], ['Mosi-oa-Tunya', 'Victoria Falls Zambezi']),
('abu-simbel', 'Abu Simbel', [AF, ME], 2, ['Temple of Karnak', 'Valley of the Kings', 'Great Sphinx of Giza', 'Temple of Hatshepsut', 'Petra', 'Colossi of Memnon'], ['Abu Simbel temples', 'Temple of Ramesses II']),
('dome-rock', 'Dome of the Rock', [ME], 2, ['Al-Aqsa Mosque', 'Hagia Sophia', 'Blue Mosque', 'Sheikh Zayed Grand Mosque', 'Imam Reza Shrine', 'Church of the Holy Sepulchre'], ['Qubbat as-Sakhra', 'Dome of the Rock Jerusalem']),
('sayed-mosque', 'Sheikh Zayed Grand Mosque', [ME], 2, ['Taj Mahal', 'Blue Mosque', 'Hassan II Mosque', 'Faisal Mosque', 'Grand Mosque of Muscat', 'Al-Masjid an-Nabawi'], ['Sheikh Zayed Mosque', 'Grand Mosque Abu Dhabi', 'Abu Dhabi Grand Mosque']),
('table-mountain', 'Table Mountain', [AF], 2, ['Sugarloaf Mountain', 'Uluru', 'Mount Roraima', 'Kilimanjaro', 'Drakensberg', "Lion's Head"], ['Table Mountain Cape Town']),
('dejennes-mosque', 'Great Mosque of Djenné', [AF], 3, ['Djinguereber Mosque', 'Great Mosque of Kairouan', 'Larabanga Mosque', 'Sankore Mosque', 'Grand Mosque of Bobo-Dioulasso', 'Kasbah of Aït Benhaddou'], ['Djenne Mosque', 'Great Mosque of Djenne', 'Djenné Mosque']),
('hassan-ii-mosque', 'Hassan II Mosque', [AF], 3, ['Koutoubia Mosque', 'Sheikh Zayed Grand Mosque', 'Great Mosque of Kairouan', 'Blue Mosque', 'Faisal Mosque', 'Muhammad Ali Mosque'], ['Hassan 2 Mosque', 'Grande Mosquée Hassan II']),
('persepolis', 'Persepolis', [ME], 3, ['Pasargadae', 'Palmyra', 'Babylon', 'Petra', 'Baalbek', 'Nineveh'], ['Takht-e Jamshid', 'Gate of All Nations']),
('lalibela-church', 'Rock Churches of Lalibela', [AF], 4, ['Petra', 'Aksum Obelisks', 'Abu Simbel', 'Göreme Open Air Museum', 'Ellora Caves', 'Debre Damo'], ['Lalibela', 'Church of St. George Lalibela', 'Bete Giyorgis']),
# --- added with Randy's fourth batch (his picks from the suggestion list) ----
('brandenburg-gate', 'Brandenburg Gate', [E], 1, ['Arc de Triomphe', 'Victory Column', 'Siegestor', 'Propylaea', 'Wellington Arch', 'Holstentor'], ['Brandenburger Tor']),
('trevi-fountain', 'Trevi Fountain', [E], 1, ['Fountain of the Four Rivers', 'Fountain of Neptune', 'Spanish Steps', 'Bellagio Fountains', 'Buckingham Fountain', 'Pantheon'], ['Fontana di Trevi', 'Trevi']),
('the-matterhorn', 'Matterhorn', [E], 1, ['Mont Blanc', 'Eiger', 'Jungfrau', 'Mount Fuji', 'Mount Everest', 'K2'], ['The Matterhorn', 'Monte Cervino', 'Cervin']),
('sugarloaf-mountain', 'Sugarloaf Mountain', [AM], 2, ['Table Mountain', 'Corcovado', 'Mount Roraima', 'Diamond Head', 'Rock of Gibraltar', 'Uluru'], ['Pão de Açúcar', 'Sugar Loaf', 'Sugarloaf']),
('santorini-domes', 'Santorini', [E], 2, ['Mykonos', 'Capri', 'Positano', 'Crete', 'Rhodes', 'Amalfi'], ['Oia', 'Thira', 'Santorini Greece']),
('potala-palace', 'Potala Palace', [AS], 2, ['Forbidden City', 'Punakha Dzong', "Paro Taktsang (Tiger's Nest)", 'Jokhang Temple', 'Summer Palace', 'Leh Palace'], ['Potala']),
('panama-canal', 'Panama Canal', [AM], 2, ['Suez Canal', 'Erie Canal', 'Corinth Canal', 'Kiel Canal', 'Welland Canal', 'St. Lawrence Seaway'], ['Panama Canal locks', 'Miraflores Locks']),
('sky-tree', 'Tokyo Skytree', [AS], 2, ['Tokyo Tower', 'Canton Tower', 'Kyoto Tower', 'Oriental Pearl Tower', 'N Seoul Tower', 'CN Tower'], ['Skytree', 'Sky Tree']),
('cliffs-moher', 'Cliffs of Moher', [E], 2, ['White Cliffs of Dover', 'Slieve League', "Giant's Causeway", 'Étretat', 'Preikestolen', 'Old Man of Hoy'], ['Moher']),
('fairy-chimneys', 'Cappadocia', [E, ME], 2, ['Bryce Canyon', 'Meteora', 'Petra', 'Pamukkale', 'Zhangjiajie', 'Bandiagara Escarpment'], ['Fairy Chimneys', 'Goreme', 'Göreme']),
('salar-uyuni', 'Salar de Uyuni', [AM], 2, ['Bonneville Salt Flats', 'Atacama Desert', 'Lake Titicaca', 'Etosha Pan', 'Badwater Basin', 'Salinas Grandes'], ['Uyuni', 'Uyuni Salt Flat', 'Salt Flats of Uyuni']),
('golden-temple', 'Golden Temple', [AS], 2, ['Golden Pavilion', 'Lotus Temple', 'Akshardham', 'Taj Mahal', 'Shwedagon Pagoda', 'Meenakshi Temple'], ['Harmandir Sahib', 'Sri Harmandir Sahib', 'Darbar Sahib']),
('blue-city', 'Chefchaouen', [AF], 3, ['Jodhpur', 'Sidi Bou Said', 'Essaouira', 'Fez', 'Marrakesh', 'Mykonos'], ['Chaouen', 'Blue City']),
('pamukkale-terraces', 'Pamukkale', [E, ME], 3, ['Mammoth Hot Springs', 'Huanglong', 'Badab-e Surt', 'Hierve el Agua', 'Cappadocia', 'Plitvice Lakes'], ['Pamukkale terraces', 'Hierapolis']),
('hallgrimskirkja-church', 'Hallgrímskirkja', [E], 3, ['Harpa', "Grundtvig's Church", 'Akureyri Church', 'Oslo City Hall', 'Arctic Cathedral', 'Helsinki Cathedral'], ['Hallgrimskirkja', 'Hallgrims Church']),
('chateau-frontenac', 'Château Frontenac', [AM], 3, ['Fairmont Banff Springs', 'Parliament Hill', 'Neuschwanstein Castle', 'Casa Loma', 'Empress Hotel', 'Château Laurier'], ['Chateau Frontenac', 'Fairmont Le Chateau Frontenac', 'Frontenac']),
('karnak-temple', 'Karnak Temple', [AF, ME], 3, ['Abu Simbel', 'Luxor Temple', 'Temple of Hatshepsut', 'Valley of the Kings', 'Philae', 'Edfu Temple'], ['Karnak', 'Temple of Karnak', 'Karnak Temple Complex']),
('torres-paine', 'Torres del Paine', [AM], 3, ['Mount Fitz Roy', 'Yosemite Valley', 'Perito Moreno Glacier', 'Cerro Torre', 'Dolomites', 'Aconcagua'], ['Torres del Paine National Park', 'Towers of Paine']),
('avenue-baobabs', 'Avenue of the Baobabs', [AF], 3, ['Tsingy de Bemaraha', 'Masai Mara', 'Etosha National Park', 'Serengeti', 'Okavango Delta', 'Kruger National Park'], ['Baobab Avenue', 'Alley of the Baobabs']),
('masada-fortress', 'Masada', [ME], 3, ['Petra', 'Sigiriya', 'Herodium', 'Qumran', 'Mount Sinai', 'Wadi Rum'], ['Masada fortress']),
('mount-bromo', 'Mount Bromo', [AS], 3, ['Mount Fuji', 'Mount Mayon', 'Mount Rinjani', 'Mount Merapi', 'Krakatoa', 'Mount Pinatubo'], ['Bromo', 'Mt Bromo']),
('registan-square', 'Registan', [ME], 3, ['Naqsh-e Jahan Square', 'Bibi-Khanym Mosque', 'Kalyan Minaret', 'Shah-i-Zinda', 'Imam Mosque', 'Itchan Kala'], ['Registan Square', 'Samarkand Registan']),
('robben-island', 'Robben Island', [AF], 3, ['Alcatraz', "Devil's Island", "Château d'If", 'Constitution Hill', 'Gorée Island', 'Rottnest Island'], []),
('red-dunes', 'Sossusvlei', [AF], 3, ['Sahara Desert', 'Wadi Rum', 'Erg Chebbi', "Rub' al Khali", 'Simpson Desert', 'Kalahari Desert'], ['Sossusvlei dunes', 'Namib Desert', 'Dune 45', 'Deadvlei']),
('baalbek-temple', 'Baalbek', [ME], 4, ['Palmyra', 'Jerash', 'Persepolis', 'Temple of Olympian Zeus', 'Parthenon', 'Ephesus'], ['Temple of Bacchus', 'Baalbek temples']),
('fish-river-canyon', 'Fish River Canyon', [AF], 4, ['Blyde River Canyon', 'Grand Canyon', 'Copper Canyon', 'Colca Canyon', 'Tara River Canyon', 'Kings Canyon'], []),
('yamoussoukro-basilica', 'Basilica of Our Lady of Peace', [AF], 4, ["St. Peter's Basilica", 'US Capitol', 'Hassan II Mosque', 'Basilica of the Sacred Heart, Brussels', 'Les Invalides', 'Cathedral of Brasília'], ['Our Lady of Peace', 'Yamoussoukro Basilica', 'Basilique Notre-Dame de la Paix']),
('flame-towers', 'Flame Towers', [E, ME], 4, ['Burj Khalifa', 'Absolute World', 'Evolution Tower', 'Cayan Tower', 'Lakhta Center', 'Doha Tower'], ['Baku Flame Towers']),
('el-morro', 'El Morro', [AM], 4, ['Castillo de San Marcos', 'Fort Sumter', 'Morro Castle, Havana', 'Fort McHenry', 'Castillo San Felipe de Barajas', 'Fortaleza Ozama'], ['Castillo San Felipe del Morro', 'El Morro San Juan']),
('banue-terraces', 'Banaue Rice Terraces', [AS], 4, ['Longji Rice Terraces', 'Tegallalang Rice Terraces', 'Sa Pa terraces', 'Jatiluwih', 'Mu Cang Chai', 'Yuanyang Rice Terraces'], ['Banaue', 'Banaue Terraces', 'Rice Terraces of the Philippine Cordilleras']),
('kingdon-centre', 'Kingdom Centre', [ME], 4, ['Dubai Frame', 'Al Faisaliah Tower', 'Burj Khalifa', 'Burj Al Arab', 'Capital Gate', 'Doha Tower'], ['Kingdom Center', 'Kingdom Centre Tower']),
('azadi-tower', 'Azadi Tower', [ME], 4, ['Milad Tower', 'Gateway of India', 'Arc de Triomphe', 'Al Shaheed Monument', 'Kingdom Centre', 'Baghdad Gate'], ['Azadi Monument', 'Shahyad Tower', 'Freedom Tower Tehran']),
]


# Country for the Country Monkey Final Wager clue ("Country: Peru"), one per
# photo. Two countries where a landmark straddles a border.
COUNTRY = {
    'eiffel-tower': 'France', 'great-pyramids': 'Egypt', 'taj-mahal': 'India', 'big-ben': 'United Kingdom',
    'colosseum': 'Italy', 'leaning-tower-pisa': 'Italy', 'burj-khalifa': 'United Arab Emirates', 'space-needle': 'United States',
    'sydney-opera': 'Australia', 'white-house': 'United States', 'christ-redeemer': 'Brazil', 'golden-gate': 'United States',
    'grand-canyon': 'United States', 'great-sphinx': 'Egypt', 'great-wall': 'China', 'machu-picchu': 'Peru',
    'mount-rushmore': 'United States', 'mt-fuji': 'Japan', 'arc-triomphe': 'France', 'forbidden-city': 'China',
    'parthenon': 'Greece', 'us-capitol': 'United States', 'brooklyn-bridge': 'United States', 'burj-alarab': 'United Arab Emirates',
    'gateway-arch': 'United States', 'marina-bay': 'Singapore', 'neuschwanstein-castle': 'Germany', 'one-wtc': 'United States',
    'petronas-towers': 'Malaysia', 'taipei-101': 'Taiwan', 'ayers-rock-uluru': 'Australia', 'blue-mosque': 'Turkiye',
    'chichen-itza': 'Mexico', 'easter-island': 'Chile', 'grand-canal': 'Italy', 'hagia-sophia': 'Turkiye',
    'hoover-dam': 'United States', 'mont-stmichel': 'France', 'mt-kilimanjaro': 'Tanzania', 'angkor-wat': 'Cambodia',
    'golden-pavilion': 'Japan', 'versailles': 'France', 'atomium-brussels': 'Belgium', 'birds-nest': 'China',
    'cn-tower': 'Canada', 'falling-water': 'United States', 'guggenheim-bilbao': 'Spain', 'guggenheim-ny': 'United States',
    'the-shard': 'United Kingdom', 'flatiron-building': 'United States', 'angel-falls': 'Venezuela', 'canton-tower': 'China',
    'fort-knox': 'United States', 'halong-bay': 'Vietnam', 'horseshoe-bend': 'United States', 'iguacu-falls': 'Argentina and Brazil',
    'lotus-temple': 'India', 'mesa-verde': 'United States', 'monument-valley': 'United States', 'mt-everest': 'Nepal and China',
    'museum-future': 'United Arab Emirates', 'winter-palace': 'Russia', 'pantheon': 'Italy', 'bosco-verticale': 'Italy',
    'evolution-tower': 'Russia', 'habitat-67': 'Canada', 'turning-torso': 'Sweden', 'villa-savoye': 'France',
    'amber-palace': 'India', 'chand-baori': 'India', 'derawar-fort': 'Pakistan', 'fort-mchenry': 'United States',
    'kyoto-tower': 'Japan', 'las-lajas': 'Colombia', 'statue-liberty': 'United States', 'tower-bridge': 'United Kingdom',
    'stonehenge-stones': 'United Kingdom', 'niagarafalls': 'Canada and the United States', 'st-basils': 'Russia', 'the-louvre': 'France',
    'notre-dame': 'France', 'petra-landmark': 'Jordan', 'the-alamo': 'United States', 'tikal-temple': 'Guatemala',
    'temple-sun': 'Mexico', 'pont-dugard': 'France', 'rialto-bridge': 'Italy', 'the-vessel': 'United States',
    'todai-ji': 'Japan', 'three-gorges': 'China', 'sigiriya-fortress': 'Sri Lanka', 'victoria-falls': 'Zambia and Zimbabwe',
    'abu-simbel': 'Egypt', 'dome-rock': 'Jerusalem', 'sayed-mosque': 'United Arab Emirates', 'table-mountain': 'South Africa',
    'dejennes-mosque': 'Mali', 'hassan-ii-mosque': 'Morocco', 'persepolis': 'Iran', 'lalibela-church': 'Ethiopia',
    'brandenburg-gate': 'Germany', 'trevi-fountain': 'Italy', 'the-matterhorn': 'Switzerland and Italy', 'sugarloaf-mountain': 'Brazil',
    'santorini-domes': 'Greece', 'potala-palace': 'China (Tibet)', 'panama-canal': 'Panama', 'sky-tree': 'Japan',
    'cliffs-moher': 'Ireland', 'fairy-chimneys': 'Turkiye', 'salar-uyuni': 'Bolivia', 'golden-temple': 'India',
    'blue-city': 'Morocco', 'pamukkale-terraces': 'Turkiye', 'hallgrimskirkja-church': 'Iceland', 'chateau-frontenac': 'Canada',
    'karnak-temple': 'Egypt', 'torres-paine': 'Chile', 'avenue-baobabs': 'Madagascar', 'masada-fortress': 'Israel',
    'mount-bromo': 'Indonesia', 'registan-square': 'Uzbekistan', 'robben-island': 'South Africa', 'red-dunes': 'Namibia',
    'baalbek-temple': 'Lebanon', 'fish-river-canyon': 'Namibia', 'yamoussoukro-basilica': 'Ivory Coast', 'flame-towers': 'Azerbaijan',
    'el-morro': 'Puerto Rico', 'banue-terraces': 'Philippines', 'kingdon-centre': 'Saudi Arabia', 'azadi-tower': 'Iran',
}

CM_POINTS = {1: 100, 2: 150, 3: 200, 4: 250}


def sq(s):
    return "'" + s.replace("'", "''") + "'"


def arr(xs):
    return 'ARRAY[' + ', '.join(sq(x) for x in xs) + ']' if xs else 'NULL::text[]'


def country_monkey_sql():
    rows = [(region, r) for r in L for region in r[2]]
    rows.sort(key=lambda x: (x[1][3], x[0], x[1][1]))
    body = ',\n'.join(
        f"({sq(region) + ',':<21} {sq('/structures/' + f + '.webp') + ',':<46} {sq(ans) + ',':<36} {arr(wrong)}, {arr(acc)}, {sq(COUNTRY[f])}, {CM_POINTS[d]})"
        for region, (f, ans, regions, d, wrong, acc) in rows)
    return f"""-- ============================================================================
-- Country Monkey: LANDMARK questions ("What is this landmark?") -- GENERATED
-- by content/landmarks_source.py from Randy's {len(L)} photos in public/structures/.
-- To change a landmark, edit that file and re-run it; don't edit this by hand.
--
-- {len(rows)} rows: a landmark in a country that sits in two regions (Egypt,
-- Turkiye, Pakistan) is in both, like that country's map. Points 100-250 by
-- difficulty (100 = Eiffel Tower ... 250 = Turning Torso); the Final Wager
-- draws from the 150s.
--
-- Asks for the landmark, not its country: the country is nearly free points
-- (Eiffel Tower -> France) and would block that country's map and flag from
-- the same game. Wrong answers are real places of the same kind and look.
-- accepted_answers: other names a typed Final Wager answer may use.
-- hint: where it is -- the one clue a player can buy in the Final Wager
-- (for half their winnings).
--
-- Safe to re-run: deletes and re-inserts the landmark questions only
-- (subcategory 'LANDMARK'), in a transaction.
-- ============================================================================

BEGIN;

ALTER TABLE questions ADD COLUMN IF NOT EXISTS wrong_answers TEXT[];
ALTER TABLE questions ADD COLUMN IF NOT EXISTS accepted_answers TEXT[];
ALTER TABLE questions ADD COLUMN IF NOT EXISTS hint TEXT;

DELETE FROM questions WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'LANDMARK';

INSERT INTO questions (question_number, game_mode, category, subcategory, faction, question_text, visual_asset, correct_answer, wrong_answers, accepted_answers, hint, points)
SELECT (SELECT COALESCE(MAX(question_number), 0) FROM questions) + ROW_NUMBER() OVER (),
       'COUNTRY_MONKEY', v.region, 'LANDMARK', v.region, 'What is this landmark?', v.visual_asset, v.correct_answer, v.wrong_answers, v.accepted_answers, v.hint, v.points
FROM (VALUES
{body}
) AS v(region, visual_asset, correct_answer, wrong_answers, accepted_answers, hint, points);

COMMIT;

-- Check: should return {len(rows)}.
SELECT COUNT(*) FROM questions WHERE game_mode = 'COUNTRY_MONKEY' AND subcategory = 'LANDMARK';
"""


def thinking_pants_csv():
    """content/landmarks.csv keeps rows Randy has added, retired or noted:
    only rows for photos it doesn't have yet are appended."""
    path = os.path.join(ROOT, 'content', 'landmarks.csv')
    header = ['points', 'question', 'answer', 'wrong_1', 'wrong_2', 'wrong_3', 'wrong_4', 'wrong_5', 'wrong_6', 'image', 'source', 'added', 'retired', 'notes']
    rows = []
    if os.path.exists(path):
        with open(path, encoding='utf-8-sig', newline='') as fh:
            rows = list(csv.reader(fh))[1:]
    have = {r[9] for r in rows}
    for f, ans, regions, d, wrong, acc in L:
        img = '/structures/' + f + '.webp'
        if img in have:
            continue
        rows.append([d * 100, 'What is this landmark?', ans, *wrong, img, 'LANDMARKS_BATCH_1', '2026-10-18', '', ''])
    rows.sort(key=lambda r: (int(r[0]), r[2]))
    with open(path, 'w', encoding='utf-8-sig', newline='') as fh:
        w = csv.writer(fh, lineterminator='\r\n')
        w.writerow(header)
        w.writerows(rows)
    return len(rows)


if __name__ == '__main__':
    with open(os.path.join(ROOT, 'country_monkey_landmarks.sql'), 'w') as fh:
        fh.write(country_monkey_sql())
    n = thinking_pants_csv()
    print(f'{len(L)} landmarks -> country_monkey_landmarks.sql, content/landmarks.csv ({n} rows)')
