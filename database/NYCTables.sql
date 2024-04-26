DROP TABLE IF EXISTS Restaurants;
DROP TABLE IF EXISTS ny_Events;
DROP TABLE IF EXISTS ThingsToDo;
DROP TABLE IF EXISTS PlacesToStay;

CREATE TABLE Restaurants (
    RestaurantID INT PRIMARY KEY,
    r_Name VARCHAR(100),
    Address VARCHAR(255),
    CuisineType VARCHAR(100),
    Borough VARCHAR(50),
    Region VARCHAR(50),
    Rating DECIMAL(3, 2),
    Link VARCHAR(100)
);

CREATE TABLE ny_Events (
    EventID INT PRIMARY KEY,
    e_Name VARCHAR(100),
    Address VARCHAR(255),
    Borough VARCHAR(50),
    Region VARCHAR(50),
    Start_Date VARCHAR(10),
    End_Date VARCHAR(10),
    Link VARCHAR(100)
);
CREATE TABLE ThingsToDo (
    ActivityID INT PRIMARY KEY,
    t_Name VARCHAR(100),
    Address VARCHAR(255),
    Borough VARCHAR(50),
    Region VARCHAR(50),
    t_Type VARCHAR(100), -- Such as 'Museum', 'Park', 'Theatre'
    Link VARCHAR(100)
);
CREATE TABLE PlacesToStay (
    PlaceID INT PRIMARY KEY,
    p_Name VARCHAR(100),
	Address VARCHAR(255),
    Borough VARCHAR(50),
    Region VARCHAR(50),
    p_Type VARCHAR(100), -- Such as 'Hotel', 'Motel', 'B&B', 'Hostel'
    PricePerNight DECIMAL(10, 2),
    Rating DECIMAL(3, 2)
);

-- Manhattan

-- Inwood and Washington Heights
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(1, 'Inwood Bar & Grill', '4892 Broadway', 'Hip American sports pub and beer garden', 'Manhattan', 'Inwood and Washington Heights', 4.9, 'https://inwoodbarandgrill.com/'),
	(2, 'The Uptown Garrison', '821 W 181st St', 'Cozy bar for cocktails, pizza & burgers', 'Manhattan', 'Inwood and Washington Heights', 4.5, 'https://www.theuptowngarrison.com/'),
	(3, 'Inwood Farm', '600 W 218th St', 'Casual American eatery & coffee bar', 'Manhattan', 'Inwood and Washington Heights', 4.4, 'https://www.yelp.com/biz/inwood-farm-new-york'),
	(4, 'Napa in the Heights Seafood & Wine Bar', '4927 Broadway', 'Seafood', 'Manhattan', 'Inwood and Washington Heights', 4.8, 'https://www.napaintheheights.com/'),
	(5, 'Malecon', '4141 Broadway', 'Dominican', 'Manhattan', 'Inwood and Washington Heights', 4.4, 'https://maleconnyc.com/'),
	(6, 'Le Chéile', '839 W 181st St', 'Quaint, Irish pub & restaurant', 'Manhattan', 'Inwood and Washington Heights', 4.4, 'https://www.yelp.com/biz/le-ch%C3%A9ile-new-york-2'),
	(7, 'Saggio', '827 W 181st St', 'Southern Italian ', 'Manhattan', 'Inwood and Washington Heights', 4.4, 'https://www.saggionyc.com/'),
	(8, 'Patacon Pisao Truck', '431 W 202nd St', 'Food truck Venezuelan sandwiches', 'Manhattan', 'Inwood and Washington Heights', 4.7, 'https://www.pataconpisaonyc.com/'),
	(9, 'Tampopo Ramen', '1 Bennett Ave', 'Tokyo-style noodles', 'Manhattan', 'Inwood and Washington Heights', 4.5, 'https://www.tampoporamennyc.com/'),
	(10, 'Bocaditos Bistro', '4863 Broadway', 'Bistro', 'Manhattan', 'Inwood and Washington Heights', 4.2, 'https://www.yelp.com/biz/bocaditos-bistro-new-york'),
	(11, 'Tampopo Kitchen', '805 W 187th St', 'Japanese', 'Manhattan', 'Inwood and Washington Heights', 4.4, 'https://www.tampopokitchen.com/'),
	(12, 'El Tanque Trattoria Bar', '101 Sherman Ave', 'Pizza', 'Manhattan', 'Inwood and Washington Heights', 4.9, 'https://eltanquetrattoria.com/');

	-- West Harlem
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(13, 'Enoteca Harlem', '2220 Frederick Douglass Blvd', 'Spanish', 'Manhattan', 'Central Harlem', 4.8, 'https://www.enotecaharlem.com/'),
	(14, 'The Edge Harlem', '101 Edgecombe Ave', 'Caribbean', 'Manhattan', 'Central Harlem', 4.5, 'https://www.theedgeharlem.com/'),
	(15, 'Corner Social', '321 Malcolm X Blvd', 'American', 'Manhattan', 'Central Harlem', 4.2, 'https://cornersocialnyc.com/'),
	(16, 'Archer & Goat', '187 Malcolm X Blvd', 'American', 'Manhattan', 'Central Harlem', 4.5, 'https://www.archerandgoat.com/'),
	(17, 'Jacob Soul Food Restaurant', '373 Malcolm X Blvd', 'Soul', 'Manhattan', 'Central Harlem', 4.4, 'https://www.jacobsoulfoodrestaurant.com/'),
	(18, 'Ponty Bistro', '2375 Adam Clayton Powell Jr Blvd', 'West African', 'Manhattan', 'Central Harlem', 4.4, 'https://www.pontybistro.com/'),
	(19, 'Vinatería', '2211 Frederick Douglass Blvd', 'Restaurant', 'Manhattan', 'Central Harlem', 4.5, 'https://www.vinateria.com/'),
	(20, 'Red Rooster Harlem', '310 Lenox Ave', 'Restaurant', 'Manhattan', 'Central Harlem', 4.4, 'https://www.redroosterharlem.com/'),
	(21, 'Amy Ruths', '113 W 116th St', 'Soul', 'Manhattan', 'Central Harlem', 4.3, 'https://www.amyruths.com/'),
	(22, 'Renaissance Harlem', '2245 Adam Clayton Powell Jr Blvd', 'New American', 'Manhattan', 'Central Harlem', 4.3, 'https://www.renaissanceharlem.com/');

	-- East Harlem 
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(23, 'Alison', '1651 Lexington Ave', 'Warm New American eatery with craft beer', 'Manhattan', 'East Harlem', 4.5, 'https://www.alisonrestaurant.com/'),
	(24, 'Contento', '88 E 111th St', 'Peruvian kitchen & a robust wine list', 'Manhattan', 'East Harlem', 4.6, 'https://www.contentorestaurant.com/'),
	(25, 'Amor Cubano', '2018 3rd Ave', 'Cuban food', 'Manhattan', 'East Harlem', 4.4, 'https://www.amorcubanonyc.com/'),
	(26, 'Amuse Bouche Bistro', '1590 Park Ave', 'Bistro', 'Manhattan', 'East Harlem', 4.9, 'https://www.amusebouchebistro.com/'),
	(27, 'Ricardo Steakhouse', '2145 2nd Ave', 'Lively surf and turf place with DJs', 'Manhattan', 'East Harlem', 4.5, 'https://www.ricardosteakhouse.com/'),
	(28, 'El Kallejon', '209 E 117th St', 'Snug haunt for Mexican tapas & cocktails', 'Manhattan', 'East Harlem', 4.6, 'https://www.elkallejon.com/'),
	(29, 'La Chula', '137 E 116th St', 'Street-style Mexican tacos & ceviche', 'Manhattan', 'East Harlem', 4.4, 'https://www.lachulanyc.com/');

	-- Upper West Side 
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(30, 'Jacobs Pickles', '509 Amsterdam Ave', 'Southern dishes, house pickles, and beer', 'Manhattan', 'Upper West Side', 4.6, 'https://www.jacobspickles.com/'),
	(31, 'Osteria Cotta', '513 Columbus Ave', 'Italian spot for small plates & pizza', 'Manhattan', 'Upper West Side', 4.4, 'https://www.osteriacotta.com/'),
	(32, 'The Milling Room', '446 Columbus Ave', 'Modern American fare in a big space', 'Manhattan', 'Upper West Side', 4.5, 'https://www.themillingroom.com/'),
	(33, 'Miriam', '300 Amsterdam Ave', 'Roomy Mediterranean spot with a terrace', 'Manhattan', 'Upper West Side', 4.4, 'https://www.miriamnyc.com/'),
	(34, 'Tasca NYC', '505 Columbus Ave', 'Posh tavern with a Latin-inspired menu', 'Manhattan', 'Upper West Side', 4.6, 'https://www.tascanyc.com/'),
	(35, 'Chama Mama UWS', '373 Amsterdam Ave', 'Trendy Georgian eatery with organic wine', 'Manhattan', 'Upper West Side', 4.6, 'https://www.chamamama.com/'),
	(36, 'Carmines Italian Restaurant - Upper West Side', '2450 Broadway', 'Family-friendly Italian option', 'Manhattan', 'Upper West Side', 4.4, 'https://www.carminesnyc.com/'),
	(37, 'Maison Pickle', '2315 Broadway', 'Cafe for French dip sandwiches and steaks', 'Manhattan', 'Upper West Side', 4.5, 'https://www.maisonpickle.com/'),
	(38, 'The Consulate UWS', '519 Columbus Ave', 'Global fare & cocktails in a warm venue', 'Manhattan', 'Upper West Side', 4.5, 'https://www.theconsulate.nyc/');

	-- Upper East Side 
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(39, 'Boqueria UES', '1460 2nd Ave', 'Modern Barcelona-style tapas', 'Manhattan', 'Upper East Side', 4.5, 'https://www.boquerianyc.com/'),
	(40, 'Uva', '1486 2nd Ave', 'Buzzy Italian wine bar with small plates', 'Manhattan', 'Upper East Side', 4.4, 'https://www.uvanyc.com/'),
	(41, 'BLUE MEZZE BAR', '1480 2nd Ave', 'Mediterranean', 'Manhattan', 'Upper East Side', 4.7, 'https://www.bluemezzebar.com/'),
	(42, 'Flex Mussels', '1431 3rd Ave', 'Bustling spot serving mussels & fries', 'Manhattan', 'Upper East Side', 4.5, 'https://www.flexmussels.com/'),
	(43, 'L Osteria', '1219 Lexington Ave', 'Italian', 'Manhattan', 'Upper East Side', 4.7, 'https://www.losterianyc.com/'),
	(44, 'Tonys Di Napoli', '1081 3rd Ave', 'Family-style red-sauce Italian fare', 'Manhattan', 'Upper East Side', 4.5, 'https://www.tonysdinapoli.com/'),
	(45, 'Water & Wheat', '1379 3rd Ave', 'Italian', 'Manhattan', 'Upper East Side', 4.8, 'https://www.waterandwheat.com/'),
	(46, 'Botte UES', '1606 1st Ave', 'Italian', 'Manhattan', 'Upper East Side', 4.4, 'https://www.botteues.com/');

	-- Chelsea and Clinton 
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(47, 'Sixty Three Clinton', '63 Clinton St', 'New American', 'Manhattan', 'Chelsea and Clinton', 4.8, 'https://www.sixtythreeclinton.com/'),
	(48, 'Jacks Wife Freda', '116 8th Ave', 'Relaxed spot for Mediterranean eats', 'Manhattan', 'Chelsea and Clinton', 4.4, 'https://www.jackswifefreda.com/'),
	(49, 'Cull & Pistol', '75 9th Ave', 'Seafood option from lobster specialists', 'Manhattan', 'Chelsea and Clinton', 4.6, 'https://www.cullandpistol.com/'),
	(50, 'Miznon', '435 W 15th St', 'Modern Mediterranean pita spot', 'Manhattan', 'Chelsea and Clinton', 4.5, 'https://www.miznonnyc.com/'),
	(51, 'Pepe Giallo', '195 10th Ave', 'Budget-priced Italian fare', 'Manhattan', 'Chelsea and Clinton', 4.5, 'https://www.pepegiallo.com/'),
	(52, 'Ci Siamo', '440 W 33rd St Suite #100', 'Upscale fare in a chic Italian eatery', 'Manhattan', 'Chelsea and Clinton', 4.6, 'https://www.cisiamonyc.com/'),
	(53, 'Bocca di Bacco', '169 9th Ave', 'Upscale Italian fare in stylish digs', 'Manhattan', 'Chelsea and Clinton', 4.2, 'https://www.boccadibacconyc.com/');

	-- Gramercy Park and Murray 
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(54, 'Isabelles Osteria', '245 Park Ave S', 'Vibrant spot for Italian fare and drinks', 'Manhattan', 'Gramercy Park and Murray Hill', 4.3, 'https://www.isabellesosteria.com/'),
	(55, 'Norma', '438 3rd Ave', 'Cozy place for pizza, pasta, and antipasti', 'Manhattan', 'Gramercy Park and Murray Hill', 4.7, 'https://www.normanyc.com/'),
	(56, 'The Flatiron Room Murray Hill', '9 E 37th St', 'Hangout for American food, spirits, and jazz', 'Manhattan', 'Gramercy Park and Murray Hill', 4.5, 'https://www.theflatironroom.com/'),
	(57, 'Malii Gramercy', '391 2nd Ave', 'Thai', 'Manhattan', 'Gramercy Park and Murray Hill', 4.9, NULL),
	(58, 'Gramercy Tavern', '42 E 20th St', 'My favorite restaurant in NYC. Consistently and for a very long time.', 'Manhattan', 'Gramercy Park and Murray Hill', 4.6, 'https://www.gramercytavern.com/'),
	(59, 'Boucherie Union Square', '225 Park Ave S', 'Definitely on my list of favorite restaurants in NYC!', 'Manhattan', 'Gramercy Park and Murray Hill', 4.6, 'https://www.boucherie.nyc/'),
	(60, 'Momosan Ramen & Sake', '342 Lexington Ave', 'Japanese noodles and plates by Morimoto', 'Manhattan', 'Gramercy Park and Murray Hill', 4.5, 'https://www.momosanramen.com/');

	-- Greenwich Village and Soho
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(61, 'Osteria Carlina West Village', '455 Hudson St', 'Intimate eatery for Italian provisions', 'Manhattan', 'Greenwich Village and Soho', 4.8, 'https://www.osteriacarlinawestvillage.com/'),
	(62, 'Shuka', '38 MacDougal St', 'Mediterranean food, wine, and cocktails', 'Manhattan', 'Greenwich Village and Soho', 4.5, 'https://www.shukanewyork.com/'),
	(63, 'Montes Trattoria', '97 MacDougal St', 'Old-school Italian eatery', 'Manhattan', 'Greenwich Village and Soho', 4.4, 'https://www.montestrattorianyc.com/'),
	(64, 'Tartine', '253 W 11th St', 'Pocket-size French bistro', 'Manhattan', 'Greenwich Village and Soho', 4.4, 'https://www.tartine.nyc/'),
	(65, 'Little Owl', '90 Bedford St', 'Cozy corner spot with Mediterranean fare', 'Manhattan', 'Greenwich Village and Soho', 4.5, 'https://www.thelittleowlnyc.com/'),
	(66, 'Minetta Tavern', '113 MacDougal St', 'Reinvented old-school tavern', 'Manhattan', 'Greenwich Village and Soho', 4.5, 'https://www.minettatavernny.com/'),
	(67, 'Boucherie West Village', '99 7th Ave S', 'Bistro focused on steaks and cocktails', 'Manhattan', 'Greenwich Village and Soho', 4.6, 'https://www.boucherie.nyc/west-village'),
	(68, 'OLIO E PIÙ', '3 Greenwich Ave', 'Neapolitan pizza & pasta', 'Manhattan', 'Greenwich Village and Soho', 4.6, 'https://www.olioepiu.com/'),
	(69, 'Carbone New York', '181 Thompson St', 'Glam Italian eatery with retro feel', 'Manhattan', 'Greenwich Village and Soho', 4.3, 'https://carbonenewyork.com/');

	-- Union Square and Lower East Side
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(70, 'Sixty Three Clinton', '63 Clinton St', 'Dine-in, no takeout, no delivery', 'Manhattan', 'Union Square and Lower East Side', 4.8, 'https://www.sixtythreeclinton.com/'),
	(71, 'Essex', '124 Rivington St', 'New American brunch & happy hour spot', 'Manhattan', 'Union Square and Lower East Side', 4.8, 'https://www.essexnyc.com/'),
	(72, 'Mictlan México', '17 Orchard St', 'Bright eatery serving Mexican fare', 'Manhattan', 'Union Square and Lower East Side', 4.5, 'https://www.mictlanmexico.com/'),
	(73, 'Pig and Khao', '68 Clinton St', 'Trendy spot for Southeast Asian fare', 'Manhattan', 'Union Square and Lower East Side', 4.3, 'https://www.pigandkhao.com/'),
	(74, 'Set L.E.S.', '127 Ludlow St', 'Gastropub', 'Manhattan', 'Union Square and Lower East Side', 4.5, NULL),
	(75, 'La Contenta', '102 Norfolk St', 'Chill place for Mexican food & mezcals', 'Manhattan', 'Union Square and Lower East Side', 4.7, 'https://www.lacontentanyc.com/');

	-- Lower Manhattan
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(76, '1803 NYC', '82 Reade St', 'Elegant New Orleans-style eatery', 'Manhattan', 'Lower Manhattan', 4.5, 'https://www.1803nyc.com/'),
	(77, 'Russ & Daughters Cafe', '127 Orchard St', 'Retro-style spot for Jewish comfort food', 'Manhattan', 'Lower Manhattan', 4.6, 'https://www.russanddaughterscafe.com/'),
	(78, 'Manhatta', '28 Liberty St 60th floor', 'High-end New American meals on 60th floor', 'Manhattan', 'Lower Manhattan', 4.7, 'https://www.manhattarestaurantnyc.com/'),
	(79, 'Mezze on the River', '375 S End Ave', 'Mediterranean eatery with river views', 'Manhattan', 'Lower Manhattan', 4.3, 'https://www.mezzeontheriver.com/'),
	(80, 'Schilling Restaurant & Bar', '109 Washington St', 'Austrian fare with a Mediterranean touch', 'Manhattan', 'Lower Manhattan', 4.4, 'https://www.schillingnyc.com/');

-- Staten Island

	-- Port Richmond
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(81, 'Byrnes Tavern', '3301 Richmond St', 'Convivial bar with wings & seafood', 'Staten Island', 'Port Richmond', 4.6, 'https://www.byrnestavern.com/'),
	(82, 'La Roma', '2620 E Allegheny Ave', 'Grill', 'Staten Island', 'Port Richmond', 4.8, 'https://www.laroma.com/'),
	(83, 'Gaul & Co. Malt House Port Richmond', '2619 E Indiana Ave', 'Funky site for pub grub & craft beer', 'Staten Island', 'Port Richmond', 4.6, 'https://www.gaulcomalthouseportrichmond.com/'),
	(84, 'Nemi', '2636 Ann St', 'Classic bistro with modern Mexican fare', 'Staten Island', 'Port Richmond', 4.7, 'https://www.nemi.com/'),
	(85, 'The Dinner House', '2706 E Allegheny Ave', 'Polish', 'Staten Island', 'Port Richmond', 4.7, 'https://www.thedinnerhouse.com/');

	-- South Beach and Tottenville
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(86, 'South Fin Grill', '300 Father Capodanno Blvd', 'Grill', 'Staten Island', 'South Beach and Tottenville', 3.8, 'https://www.southfingrill.com/'),
	(87, 'Chinar On The Island', '283 Sand Ln', 'Fancy Russian & Mediterranean restaurant', 'Staten Island', 'South Beach and Tottenville', 4.3, 'https://www.chinarontheisland.com/'),
	(88, 'Metropolis Steak & Seafood', '100 Lincoln Ave', 'Restaurant', 'Staten Island', 'South Beach and Tottenville', 4.7, 'https://www.metropolissteakandseafood.com/'),
	(89, 'Fava Restaurant', 'Staten Island, NY', 'Restaurant', 'Staten Island', 'South Beach and Tottenville', 4.8, 'https://www.favarestaurant.com/'),
	(90, 'Baci - Staten Island', '1657 Richmond Rd', 'Italian', 'Staten Island', 'South Beach and Tottenville', 4.2, 'https://www.bacistatenisland.com/');

	-- Stapleton and St. George
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(91, 'Shaw-nae’s House', '379 Van Duzer St', 'Soul', 'Staten Island', 'Stapleton and St. George', 4.8, 'https://www.shawnaeshouse.com/'),
	(92, 'Seppe Pizza Bar', 'Staten Island, NY', 'Pizza', 'Staten Island', 'Stapleton and St. George', 4.5, 'https://www.seppepizzabar.com/'),
	(93, 'Lakruwana Restaurant', '668 Bay St', 'Sri Lankan', 'Staten Island', 'Stapleton and St. George', 4.6, 'https://www.lakruwanarestaurant.com/'),
	(94, 'Romeos Pizza', 'Staten Island, NY', 'Pizza', 'Staten Island', 'Stapleton and St. George', 4.3, 'https://www.romeospizza.com/');

	-- Mid-Island (Willowbrook)
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(95, 'Osteria Santina', '502 Jewett Ave', 'Italian', 'Staten Island', 'Mid-Island (Willowbrook)', 4.6, 'https://www.osteriasantina.com/'),
	(96, 'The Manor', '917 Manor Rd', 'American & Italian grub in casual digs', 'Staten Island', 'Mid-Island (Willowbrook)', 4.5, 'https://www.themanorrestaurant.com/'),
	(97, 'Fava Restaurant', '2009 Victory Blvd', 'Restaurant', 'Staten Island', 'Mid-Island (Willowbrook)', 4.8, 'https://www.favarestaurant.com/'),
	(98, 'Angels Tavern', '432 Manor Rd', 'Restaurant', 'Staten Island', 'Mid-Island (Willowbrook)', 4.7, 'https://www.angelstavern.com/'),
	(99, 'Cypress Hall', '1674 Richmond Rd', 'Cocktails & American eats in funky digs', 'Staten Island', 'Mid-Island (Willowbrook)', 4.4, 'https://www.cypresshall.com/'),
	(100, 'La Bottiglia Italian Restaurant', '293 Port Richmond Ave', 'Italian', 'Staten Island', 'Mid-Island (Willowbrook)', 4.7, 'https://www.labottigliarestaurant.com/');

-- Bronx

	-- Kingsbridge and Riverdale
    INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(101, 'Kingsbridge Social Club', '3625 Kingsbridge Ave', 'Pizza & cocktails in a graffitied space', 'Bronx', 'Kingsbridge and Riverdale', 4.7, 'https://www.kingsbridgesocialclub.com/'),
	(102, 'Baby Crab', '5740 Broadway Unit C', 'Seafood', 'Bronx', 'Kingsbridge and Riverdale', 4.9, 'https://www.babycrab.com/'),
	(103, 'El Tina Riverdale Restaurant', '308 W 231st St', 'Dominican', 'Bronx', 'Kingsbridge and Riverdale', 4.7, 'https://www.eltinariverdalerestaurant.com/'),
	(104, 'Home BX Steakhouse', '224 W 238th St', 'American', 'Bronx', 'Kingsbridge and Riverdale', 4.3, 'https://www.homebxsteakhouse.com/'),
	(105, 'Caridad Kingsbridge', '135 W Kingsbridge Rd', 'Down-home Latin fare in a simple space', 'Bronx', 'Kingsbridge and Riverdale', 4.2, 'https://www.caridadkingsbridge.com/');

	-- Northeast Bronx
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(106, 'Misto Restaurant and Bar', '2314 Eastchester Rd', 'Restaurant', 'Bronx', 'Northeast Bronx', 4.7, 'https://www.mistorestaurantandbar.com/'),
	(107, 'Pine Restaurant', '1913 Bronxdale Ave', 'Italian', 'Bronx', 'Northeast Bronx', 4.5, 'https://www.pinerestaurant.com/'),
	(108, 'Charlies Bar & Kitchen', '112 Lincoln Ave', 'New American', 'Bronx', 'Northeast Bronx', 4.3, 'https://www.charliesbarandkitchen.com/'),
	(109, 'Antonios Trattoria', '2370 Belmont Ave', 'Italian', 'Bronx', 'Northeast Bronx', 4.6, 'https://www.antoniostrattoria.com/'),
	(110, 'Maisonetta', '141 Lincoln Ave', 'Mexican', 'Bronx', 'Northeast Bronx', 4.6, 'https://www.maisonetta.com/'),
	(111, 'Lena Trattoria', '3470 E Tremont Ave', 'Italian', 'Bronx', 'Northeast Bronx', 4.7, 'https://www.lenatrattoria.com/');

	-- Crotona and Tremont
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(112, 'Lena Trattoria', '3470 E Tremont Ave', 'Italian', 'Bronx', 'Crotona and Tremont', 4.7, 'https://www.lenatrattoria.com/'),
	(113, 'Fiorentina Steakhouse', '3617 E Tremont Ave', 'Steak', 'Bronx', 'Crotona and Tremont', 4.9, NULL),
	(114, 'Fogon Restaurant', 'Bronx, NY', 'Restaurant', 'Bronx', 'Crotona and Tremont', 4.5, NULL),
	(115, 'Legendary Bar & Grill', '3513 E Tremont Ave #1', 'Grill', 'Bronx', 'Crotona and Tremont', 4.6, NULL),
	(116, 'BarrioBX', '3764 E Tremont Ave', 'Puerto Rican', 'Bronx', 'Crotona and Tremont', 4.3, 'https://www.barriobx.com/');

    -- Bronx Park and Fordham
    INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(117, 'Bobos Crab Shack (Fordham)', '2450 Grand Concourse', 'Cajun', 'Bronx', 'Bronx Park and Fordham', 4.4, 'https://www.boboscrabshack.com/'),
	(118, 'Dallas BBQ Fordham Road', '281 W Fordham Rd', 'Barbecue', 'Bronx', 'Bronx Park and Fordham', 4.1, 'https://www.dallasbbq.com/location/fordham'),
	(119, 'Fordham Cachapas Deli', '332 E Fordham Rd', 'Deli', 'Bronx', 'Bronx Park and Fordham', 4.5, NULL),
	(120, 'Hook & Catch Cajun Seafood', '12 W Fordham Rd', 'Seafood', 'Bronx', 'Bronx Park and Fordham', 4.0, NULL),
	(121, 'Birria Landia', '2501 Grand Concourse', 'Mexican', 'Bronx', 'Bronx Park and Fordham', 4.4, 'https://www.birrialandianyc.com/');

	-- Pelham and Throgs Neck
    INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(122, 'Lena Trattoria', '3470 E Tremont Ave', 'Italian', 'Bronx', 'Pelham and Throgs Neck', 4.7, 'https://www.lenatrattoria.com/'),
	(123, 'Fiorentina Steakhouse', '3617 E Tremont Ave', 'Steak', 'Bronx', 'Pelham and Throgs Neck', 4.9, NULL),
	(124, 'Wicked Wolf Bronx', '4029 E Tremont Ave', 'American', 'Bronx', 'Pelham and Throgs Neck', 4.5, 'https://www.wickedwolfbronx.com/'),
	(125, 'Made in Puerto Rico Latin Cuisine Bronx NY', '3363 E Tremont Ave', 'Puerto Rican', 'Bronx', 'Pelham and Throgs Neck', 4.3, 'https://www.madeinpuertoricony.com/'),
	(126, 'La Masa Restaurant', '3399 E Tremont Ave', 'Restaurant', 'Bronx', 'Pelham and Throgs Neck', 4.5, 'https://www.lamasarestaurant.com/');

	-- HighBridge and Morrisania
    INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(127, 'Antonios Trattoria', '2370 Belmont Ave', 'Italian', 'Bronx', 'HighBridge and Morrisania', 4.6, 'https://www.antoniostrattoria.com/'),
	(128, 'DMorena', '899 E 169th St', 'Latin American', 'Bronx', 'HighBridge and Morrisania', 4.3, 'https://www.dmorena.com/'),
	(129, 'Maisonetta', '141 Lincoln Ave', 'Mexican', 'Bronx', 'HighBridge and Morrisania', 4.6, 'https://www.maisonetta.com/'),
	(130, 'Hibachi Grill & Supreme Buffet', '200 E 161 St', 'American', 'Bronx', 'HighBridge and Morrisania', 4.3, 'https://www.hibachigrillbuffet.com/'),
	(131, 'Antonios', '211 E 167th St', 'Diner', 'Bronx', 'HighBridge and Morrisania', 4.3, 'https://www.antoniosdiner.com/');

	-- Hunts Point and Mott Haven
    INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(132, 'Randall Restaurant', '1328 Randall Ave', 'Restaurant', 'Bronx', 'Hunts Point and Mott Haven', 4.3, NULL),
	(133, 'Maisonetta', '141 Lincoln Ave', 'Mexican', 'Bronx', 'Hunts Point and Mott Haven', 4.6, 'https://www.maisonetta.com/'),
	(134, 'La Morada', '308 Willis Ave', 'Oaxacan restaurant', 'Bronx', 'Hunts Point and Mott Haven', 4.6, 'https://www.lamoradanyc.com/'),
	(135, 'Market Place Restaurant Cocktail', '355 Food Center Dr', 'American', 'Bronx', 'Hunts Point and Mott Haven', 4.3, NULL);

-- Queens
    INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(136, 'Casa Enrique', '5-48 49th Ave', 'Mexican', 'Queens', 'Long Island City and Astoria', 4.8, 'https://www.casaenrique.com/'),
	(137, 'Mu Ramen', '12-09 Jackson Ave', 'Japanese', 'Queens', 'Long Island City and Astoria', 4.5, 'https://www.muramennyc.com/'),
	(138, 'Takumen', '5-50 50th Ave', 'Japanese', 'Queens', 'Long Island City and Astoria', 4.6, 'https://www.takumenlic.com/'),

	(139, 'Neirs Tavern', '87-48 78th St', 'American', 'Queens', 'West Queens', 4.7, 'https://www.neirstavern.com/'),
	(140, 'Usha Foods', '255-03 Hillside Avenue', 'Indian', 'Queens', 'West Queens', 4.5, 'https://www.ushafoods.com/'),
	(141, 'Comfortland', '40-09 30th Ave', 'American', 'Queens', 'West Queens', 4.6, 'https://www.comfortlandny.com/'),

	(142, 'Kung Fu Xiao Long Bao', '59-16 Main St', 'Chinese', 'Queens', 'North Queens', 4.5, 'https://www.kungfuxiaolongbao.com/'),
	(143, 'White Bear', '135-02 Roosevelt Ave', 'Chinese', 'Queens', 'North Queens', 4.4, 'https://www.yelp.com/biz/white-bear-flushing'),
	(144, 'Hupo', '10-07 50th Ave', 'Chinese', 'Queens', 'North Queens', 4.5, 'https://www.huponyc.com/'),

	(145, 'Lhasa Fast Food', '37-50 74th St', 'Tibetan', 'Queens', 'Northeast Queens', 4.7, 'https://www.lhasafastfood.com/'),
	(146, 'Mars', '34-21 34th Ave', 'Mediterranean', 'Queens', 'Northeast Queens', 4.6, 'https://www.lifeatmars.com/'),
	(147, 'Vite Vinosteria', '31-05 34th St', 'Italian', 'Queens', 'Northeast Queens', 4.7, 'https://www.vitevinosteria.com/'),

	(148, 'Il Bambino', '34-08 31st Ave', 'Italian', 'Queens', 'West Central Queens', 4.6, 'https://www.ilbambinonyc.com/'),
	(149, 'Cannelle Patisserie', '75-59 31st Ave', 'Bakery', 'Queens', 'West Central Queens', 4.7, 'https://www.cannellepatisserie.com/'),
	(150, 'Rincon Melania', '90-12 37th Ave', 'Ecuadorian', 'Queens', 'West Central Queens', 4.7, 'https://www.yelp.com/biz/rinc%C3%B3n-melania-queens'),

	(151, 'London Lennies', '63-88 Woodhaven Blvd', 'Seafood', 'Queens', 'Central Queens', 4.7, 'https://www.londonlennies.com/'),
	(152, 'Eddies Sweet Shop', '105-29 Metropolitan Ave', 'Ice Cream', 'Queens', 'Central Queens', 4.8, 'https://www.zomato.com/new-york-city/eddies-sweet-shop-forest-hills'),
	(153, 'Nicks Bistro', '104-20 Metropolitan Ave', 'Greek', 'Queens', 'Central Queens', 4.6, 'https://www.nicksbistro.com/'),

	(154, 'Manducatis Rustica', '46-35 Vernon Blvd', 'Italian', 'Queens', 'Southwest Queens', 4.5, 'https://www.manducatisrustica.com/'),
	(155, 'Taco Veloz', '64-05 108th St', 'Mexican', 'Queens', 'Southwest Queens', 4.4, 'https://www.yelp.com/biz/taco-veloz-queens'),
	(156, 'Birria-Landia', '78-14 Roosevelt Ave', 'Mexican', 'Queens', 'Southwest Queens', 4.5, 'https://www.birrialandiany.com/'),

	(157, 'The Door', '163-07 Baisley Blvd', 'Jamaican', 'Queens', 'Jamaica', 4.7, 'https://www.thedoorrestaurant.com/'),
	(158, 'Sybils', '132-17 Liberty Ave', 'Caribbean', 'Queens', 'Jamaica', 4.6, 'https://www.sybilsbakery.com/'),
	(159, 'Fish & Ting', '4063 Boston Rd', 'Caribbean', 'Queens', 'Jamaica', 4.5, 'https://www.fishandting.com/'),

	(160, 'Adda', '31-31 Thomson Ave', 'Indian', 'Queens', 'Long Island City and Astoria', 4.7, 'https://www.addanyc.com/'),
	(161, 'John Brown Smokehouse', '10-43 44th Dr', 'Barbecue', 'Queens', 'Long Island City and Astoria', 4.5, 'https://www.johnbrownseriousbbq.com/'),
	(162, 'M. Wells Steakhouse', '43-15 Crescent St', 'Steakhouse', 'Queens', 'Long Island City and Astoria', 4.6, 'https://www.magasinwells.com/'),

	(163, 'Chela & Garnacha', '33-09 36th Ave', 'Mexican', 'Queens', 'West Queens', 4.7, 'https://www.chelaandgarnacha.com/'),
	(164, 'The Greek Kitchen', '25-01 34th Ave', 'Greek', 'Queens', 'West Queens', 4.6, 'https://www.thegreekkitchen.net/'),
	(165, 'Arepa Lady', '77-02 Roosevelt Ave', 'Colombian', 'Queens', 'West Queens', 4.6, 'https://www.arepalady.com/'),

	(166, 'Haveli Banjara', '113-21 Jamaica Ave', 'Indian', 'Queens', 'Central Queens', 4.5, 'https://www.havelibanjara.com/'),
	(167, 'De Mole', '4502 48th Ave', 'Mexican', 'Queens', 'Central Queens', 4.7, 'https://www.demolehopest.com/'),
	(168, 'Moonstone Chinese Restaurant', '32-72 Steinway St', 'Chinese', 'Queens', 'Central Queens', 4.5, 'https://www.moonstoneny.com/'),

	(169, 'Rockaway Fish House', '141-22 Rockaway Blvd', 'Seafood', 'Queens', 'Southeast Queens', 4.6, 'https://www.rockawayfishhouse.com/'),
	(170, 'The Fish Trap', '130-37 Merrick Blvd', 'Seafood', 'Queens', 'Southeast Queens', 4.5, 'https://www.thefishtrap.com/'),
	(171, 'Southern Girls Soul Food', '218-34 Merrick Blvd', 'Soul Food', 'Queens', 'Southeast Queens', 4.6, 'https://www.southerngirlssoulfood.com/'),

	(172, 'Bungalow Bar', '377 Beach 92nd St', 'American', 'Queens', 'Rockaways', 4.5, 'https://www.bungalowbarny.com/'),
	(173, 'Umas', '92-07 Rockaway Beach Blvd', 'Uzbek', 'Queens', 'Rockaways', 4.6, 'https://www.umasrestaurant.com/'),
	(174, 'Thai Rock', '375 Beach 92nd St', 'Thai', 'Queens', 'Rockaways', 4.7, 'https://www.thairock.us/');

-- Brooklyn

	-- Greenpoint
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(175, 'Paulie Gee’s', '60 Greenpoint Ave', 'Pizza', 'Brooklyn', 'Greenpoint', 4.7, 'https://www.pauliegee.com/'),
	(176, 'Di An Di', '68 Greenpoint Ave', 'Vietnamese', 'Brooklyn', 'Greenpoint', 4.5, 'https://www.diandi.nyc/'),
	(177, 'Oxomoco', '128 Greenpoint Ave', 'Mexican', 'Brooklyn', 'Greenpoint', 4.6, 'https://www.oxomoconyc.com/');

	-- Northwest Brooklyn
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(178, 'Lilia', '567 Union Ave', 'Italian', 'Brooklyn', 'Northwest Brooklyn', 4.7, 'https://www.lilianewyork.com/'),
	(179, 'Chez Ma Tante', '90 Calyer St', 'European', 'Brooklyn', 'Northwest Brooklyn', 4.6, 'https://www.chezmatantebk.com/'),
	(180, 'Al Di La Trattoria', '248 5th Ave', 'Italian', 'Brooklyn', 'Northwest Brooklyn', 4.6, 'https://www.aldilatrattoria.com/');

	-- Central Brooklyn (Bedford Stuyvesant – Crown Heights)
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(181, 'Barboncino', '781 Franklin Ave', 'Pizza', 'Brooklyn', 'Central Brooklyn', 4.7, 'https://www.barboncinopizza.com/'),
	(182, 'Saraghina', '435 Halsey St', 'Italian', 'Brooklyn', 'Central Brooklyn', 4.6, 'https://www.saraghinabakery.com/'),
	(183, 'The Finch', '212 Greene Ave', 'American', 'Brooklyn', 'Central Brooklyn', 4.5, 'https://www.thefinchnyc.com/');

	-- East New York and New Lots
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(184, 'Halsey Street Grill', '444 Ralph Ave', 'American', 'Brooklyn', 'East New York and New Lots', 4.5, 'https://www.halseystreetgrill.com/'),
	(185, 'Lindenwood Diner', '2870 Linden Blvd', 'Diner', 'Brooklyn', 'East New York and New Lots', 4.4, 'https://www.lindenwooddiner.com/'),
	(186, 'New Lots Cafe', '630 New Lots Ave', 'Caribbean', 'Brooklyn', 'East New York and New Lots', 4.3, 'https://www.yelp.com/biz/new-lots-cafe-brooklyn');

	-- Sunset Park
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(187, 'Tacos El Bronco', '4324 4th Ave', 'Mexican', 'Brooklyn', 'Sunset Park', 4.6, 'https://www.tacoselbronco.com/'),
	(188, 'Ba Xuyên', '4222 8th Ave', 'Vietnamese', 'Brooklyn', 'Sunset Park', 4.7, 'https://www.yelp.com/biz/ba-xuyên-brooklyn'),
	(189, 'Pho Vietnam', '1243 Ave U', 'Vietnamese', 'Brooklyn', 'Sunset Park', 4.5, 'https://www.phovietnam.com/');

	-- Southwest Brooklyn
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(190, 'Gino’s Restaurant', '7414 5th Ave', 'Italian', 'Brooklyn', 'Southwest Brooklyn', 4.6, 'https://www.ginosny.com/'),
	(191, 'Totonno’s Pizzeria Napolitano', '1524 Neptune Ave', 'Pizza', 'Brooklyn', 'Southwest Brooklyn', 4.7, 'https://www.totonnosconeyisland.com/'),
	(192, 'Randazzo’s Clam Bar', '2017 Emmons Ave', 'Seafood', 'Brooklyn', 'Southwest Brooklyn', 4.7, 'https://www.randazzosclambar.com/');

	-- Borough Park
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(193, 'Kaff’s Bakery', '2944 Avenue M', 'Bakery', 'Brooklyn', 'Borough Park', 4.7, 'https://www.kaffsbakery.com/'),
	(194, 'Amnon’s Pizza', '4814 13th Ave', 'Pizza', 'Brooklyn', 'Borough Park', 4.6, 'https://www.amnonkosherpizza.com/'),
	(195, 'Shang Chai', '6202 11th Ave', 'Chinese', 'Brooklyn', 'Borough Park', 4.5, 'https://www.shangchai.com/');

	-- Canarsie and Flatlands
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(196, 'Brennan & Carr', '3432 Nostrand Ave', 'American', 'Brooklyn', 'Canarsie and Flatlands', 4.7, 'https://www.brennanandcarr.com/'),
	(197, 'Footprints Cafe', '5814 Clarendon Rd', 'Caribbean', 'Brooklyn', 'Canarsie and Flatlands', 4.6, 'https://www.footprintscafeny.com/'),
	(198, 'Nick’s Lobster House', '2777 Flatbush Ave', 'Seafood', 'Brooklyn', 'Canarsie and Flatlands', 4.5, 'https://www.nickslobsterhouse.com/');

	-- Southern Brooklyn
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(199, 'Tatiana Restaurant', '3152 Brighton 6th St', 'Russian', 'Brooklyn', 'Southern Brooklyn', 4.6, 'https://www.tatianarestaurant.com/'),
	(200, 'Randazzos Clam Bar', '2017 Emmons Ave', 'Seafood', 'Brooklyn', 'Southern Brooklyn', 4.7, 'https://www.randazzosclambar.com/'),
	(201, 'Roll-N-Roaster', '2901 Emmons Ave', 'American', 'Brooklyn', 'Southern Brooklyn', 4.5, 'https://www.rollnroaster.com/');

	-- Flatbush
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(202, 'The Farm on Adderley', '1108 Cortelyou Rd', 'American', 'Brooklyn', 'Flatbush', 4.7, 'https://www.thefarmonadderley.com/'),
	(203, 'Erasmus Hall', '123 Erasmus St', 'American', 'Brooklyn', 'Flatbush', 4.6, 'https://www.yelp.com/biz/erasmus-hall-brooklyn'),
	(204, 'Peppa’s Jerk Chicken', '738 Flatbush Ave', 'Caribbean', 'Brooklyn', 'Flatbush', 4.6, 'https://www.peppasjerkchicken.nyc/');

	-- Bushwick and Williamsburg
	INSERT INTO Restaurants (RestaurantID, r_Name, Address, CuisineType, Borough, Region, Rating, Link) VALUES
	(205, 'Roberta’s', '261 Moore St', 'Pizza', 'Brooklyn', 'Bushwick and Williamsburg', 4.7, 'https://www.robertaspizza.com/'),
	(206, 'Lilia', '567 Union Ave', 'Italian', 'Brooklyn', 'Bushwick and Williamsburg', 4.7, 'https://www.lilianewyork.com/'),
	(207, 'Peter Luger Steak House', '178 Broadway', 'Steakhouse', 'Brooklyn', 'Bushwick and Williamsburg', 4.6, 'https://www.peterluger.com/');
    
    
-- PLACES TO STAY --

-- Long Island City and Astoria
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(1, 'Astoria Comfort Inn', '25 Astoria Blvd', 'Manhattan', 'Long Island City and Astoria', 'Hotel', 120.00, 4.3),
(2, 'Astoria Boutique', '48 27th Ave', 'Manhattan', 'Long Island City and Astoria', 'B&B', 90.00, 4.5),
(3, 'Queens View Hostel', '77 Shore Blvd', 'Manhattan', 'Long Island City and Astoria', 'Hostel', 60.00, 3.8);

-- Central Harlem
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(4, 'Harlem Hideaway', '233 W 135th St', 'Manhattan', 'Central Harlem', 'B&B', 85.00, 4.4),
(5, 'Harlem Luxury Suites', '140 Lenox Ave', 'Manhattan', 'Central Harlem', 'Hotel', 150.00, 4.6),
(6, 'Harlem Guest House', '18 W 129th St', 'Manhattan', 'Central Harlem', 'Guest House', 75.00, 4.1);

-- East Harlem
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(7, 'East Harlem Suites', '311 E 100th St', 'Manhattan', 'East Harlem', 'Hotel', 110.00, 4.0),
(8, 'El Barrio B&B', '225 E 104th St', 'Manhattan', 'East Harlem', 'B&B', 95.00, 4.2),
(9, 'Comfort East Harlem', '410 E 115th St', 'Manhattan', 'East Harlem', 'Motel', 80.00, 3.9);

-- Upper West Side
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(10, 'Riverside Terrace', '319 W 94th St', 'Manhattan', 'Upper West Side', 'Hotel', 180.00, 4.7),
(11, 'West Side Inn', '237 W 107th St', 'Manhattan', 'Upper West Side', 'Inn', 130.00, 4.4),
(12, 'Uptown Hostel', '572 Amsterdam Ave', 'Manhattan', 'Upper West Side', 'Hostel', 65.00, 4.0);

-- Chelsea and Clinton
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(13, 'Chelsea Loft', '455 W 26th St', 'Manhattan', 'Chelsea and Clinton', 'Boutique Hotel', 210.00, 4.8),
(14, 'Clinton Suites', '795 10th Ave', 'Manhattan', 'Chelsea and Clinton', 'Hotel', 160.00, 4.5),
(15, 'Historic Chelsea Inn', '318 W 22nd St', 'Manhattan', 'Chelsea and Clinton', 'Inn', 140.00, 4.2);

-- Upper East Side
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(16, 'East Side Luxury', '1050 3rd Ave', 'Manhattan', 'Upper East Side', 'Hotel', 300.00, 4.9),
(17, 'East Side Inn', '215 E 64th St', 'Manhattan', 'Upper East Side', 'Inn', 220.00, 4.5),
(18, 'East Side Hostel', '401 E 74th St', 'Manhattan', 'Upper East Side', 'Hostel', 90.00, 3.8);

-- Gramercy Park and Murray Hill
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(19, 'Gramercy Suites', '2 Lexington Ave', 'Manhattan', 'Gramercy Park and Murray Hill', 'Hotel', 250.00, 4.6),
(20, 'Murray Hill Hotel', '149 E 39th St', 'Manhattan', 'Gramercy Park and Murray Hill', 'Hotel', 200.00, 4.3),
(21, 'Park B&B', '60 Gramercy Park N', 'Manhattan', 'Gramercy Park and Murray Hill', 'B&B', 180.00, 4.1);

-- Greenwich Village and Soho
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(22, 'Village Luxury Suites', '55 W 11th St', 'Manhattan', 'Greenwich Village and Soho', 'Hotel', 270.00, 4.8),
(23, 'Soho Boutique Hotel', '310 W Broadway', 'Manhattan', 'Greenwich Village and Soho', 'Boutique Hotel', 290.00, 4.7),
(24, 'Greenwich Hostel', '16 Bank St', 'Manhattan', 'Greenwich Village and Soho', 'Hostel', 85.00, 3.9);

-- Union Square and Lower East Side
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(25, 'Union Square Inn', '209 E 14th St', 'Manhattan', 'Union Square and Lower East Side', 'Inn', 150.00, 4.4),
(26, 'LES Charm Hotel', '120 Allen St', 'Manhattan', 'Union Square and Lower East Side', 'Hotel', 170.00, 4.5),
(27, 'Union Guest House', '103 1st Ave', 'Manhattan', 'Union Square and Lower East Side', 'Guest House', 130.00, 4.2);

-- Lower Manhattan
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(28, 'Financial District Luxury', '85 West St', 'Manhattan', 'Lower Manhattan', 'Hotel', 320.00, 4.9),
(29, 'Historic NY Inn', '15 Gold St', 'Manhattan', 'Lower Manhattan', 'Inn', 240.00, 4.6),
(30, 'Manhattan Downtown Hostel', '11 Rivington St', 'Manhattan', 'Lower Manhattan', 'Hostel', 100.00, 3.7);


-- Staten Island 

-- Port Richmond
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(31, 'Richmond Retreat', '100 Port Richmond Ave', 'Staten Island', 'Port Richmond', 'B&B', 95.00, 4.2),
(32, 'Port Comfort Inn', '250 Richmond Terrace', 'Staten Island', 'Port Richmond', 'Inn', 105.00, 4.0),
(33, 'Richmond Lodge', '302 Morningstar Rd', 'Staten Island', 'Port Richmond', 'Lodge', 110.00, 4.3);

-- South Beach and Tottenville
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(34, 'Beachfront Bed & Breakfast', '402 Midland Ave', 'Staten Island', 'South Beach and Tottenville', 'B&B', 120.00, 4.5),
(35, 'Tottenville Inn', '708 Sharrotts Rd', 'Staten Island', 'South Beach and Tottenville', 'Inn', 130.00, 4.6),
(36, 'Seaside Stay', '85 Page Ave', 'Staten Island', 'South Beach and Tottenville', 'Hotel', 150.00, 4.7);

-- Stapleton and St. George
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(37, 'St. George Hotel', '75 Richmond Terrace', 'Staten Island', 'Stapleton and St. George', 'Hotel', 140.00, 4.8),
(38, 'Stapleton Studios', '100 Canal St', 'Staten Island', 'Stapleton and St. George', 'Studio', 90.00, 4.1),
(39, 'Harbor View Inn', '150 Bay St', 'Staten Island', 'Stapleton and St. George', 'Inn', 115.00, 4.4);

-- Mid-Island (Willowbrook)
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(40, 'Willowbrook B&B', '85 Richmond Hill Rd', 'Staten Island', 'Mid-Island (Willowbrook)', 'B&B', 100.00, 4.5),
(41, 'Mid-Island Inn', '2550 Victory Blvd', 'Staten Island', 'Mid-Island (Willowbrook)', 'Inn', 110.00, 4.6),
(42, 'Comfort Stay Willowbrook', '322 Bradley Ave', 'Staten Island', 'Mid-Island (Willowbrook)', 'Hotel', 130.00, 4.3);

-- Bronx --

-- Kingsbridge and Riverdale
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(43, 'Riverdale Inn', '5911 Riverdale Ave', 'Bronx', 'Kingsbridge and Riverdale', 'Inn', 130.00, 4.2),
(44, 'Kingsbridge Hotel', '3225 Kingsbridge Ave', 'Bronx', 'Kingsbridge and Riverdale', 'Hotel', 150.00, 4.5),
(45, 'The Riverdale B&B', '445 W 250th St', 'Bronx', 'Kingsbridge and Riverdale', 'B&B', 120.00, 4.3);

-- Northeast Bronx
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(46, 'Northeast Suites', '4131 Boston Rd', 'Bronx', 'Northeast Bronx', 'Suites', 140.00, 4.1),
(47, 'Bronx Guesthouse', '3677 White Plains Rd', 'Bronx', 'Northeast Bronx', 'Guest House', 85.00, 3.9),
(48, 'Eastchester Stay', '3026 Eastchester Rd', 'Bronx', 'Northeast Bronx', 'Hotel', 110.00, 4.0);

-- Crotona and Tremont
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(49, 'Crotona Park Hotel', '1701 Crotona Ave', 'Bronx', 'Crotona and Tremont', 'Hotel', 100.00, 3.8),
(50, 'Tremont Lodge', '456 E Tremont Ave', 'Bronx', 'Crotona and Tremont', 'Lodge', 95.00, 4.2),
(51, 'The Tremont Inn', '789 E 181st St', 'Bronx', 'Crotona and Tremont', 'Inn', 90.00, 4.0);

-- Bronx Park and Fordham
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(52, 'Fordham Suites', '2743 Webster Ave', 'Bronx', 'Bronx Park and Fordham', 'Suites', 130.00, 4.3),
(53, 'Parkview B&B', '2855 Bainbridge Ave', 'Bronx', 'Bronx Park and Fordham', 'B&B', 105.00, 4.1),
(54, 'Bronx Park Inn', '319 E 198th St', 'Bronx', 'Bronx Park and Fordham', 'Inn', 120.00, 4.4);

-- Pelham and Throgs Neck
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(55, 'Pelham Bay Lodge', '3285 Westchester Ave', 'Bronx', 'Pelham and Throgs Neck', 'Lodge', 125.00, 4.5),
(56, 'Throgs Neck Stay', '1450 Throgs Neck Expy', 'Bronx', 'Pelham and Throgs Neck', 'Hotel', 140.00, 4.6),
(57, 'Pelham Manor Inn', '600 Clarence Ave', 'Bronx', 'Pelham and Throgs Neck', 'Inn', 115.00, 4.0);

-- HighBridge and Morrisania
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(58, 'HighBridge Hotel', '1264 Woodycrest Ave', 'Bronx', 'HighBridge and Morrisania', 'Hotel', 135.00, 4.4),
(59, 'Morrisania Suites', '3800 Third Ave', 'Bronx', 'HighBridge and Morrisania', 'Suites', 120.00, 4.2),
(60, 'The HighBridge Guesthouse', '1225 Gerard Ave', 'Bronx', 'HighBridge and Morrisania', 'Guest House', 110.00, 4.0);

-- Hunts Point and Mott Haven
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(61, 'Hunts Point Haven', '895 Faile St', 'Bronx', 'Hunts Point and Mott Haven', 'Inn', 100.00, 4.3),
(62, 'Mott Haven Boutique', '349 E 140th St', 'Bronx', 'Hunts Point and Mott Haven', 'Boutique Hotel', 135.00, 4.7),
(63, 'Point Comfort B&B', '500 Hunts Point Ave', 'Bronx', 'Hunts Point and Mott Haven', 'B&B', 95.00, 4.1);

-- Queens -

-- Long Island City and Astoria
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(64, 'Astoria Grand Hotel', '25-20 Astoria Blvd', 'Queens', 'Long Island City and Astoria', 'Hotel', 180.00, 4.5),
(65, 'LIC Luxury Suites', '10-01 50th Ave', 'Queens', 'Long Island City and Astoria', 'Suites', 220.00, 4.7),
(66, 'Astoria Comfort Inn', '35-11 36th St', 'Queens', 'Long Island City and Astoria', 'Inn', 160.00, 4.3);

-- West Queens
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(67, 'Corona Lodge', '102-05 Ditmars Blvd', 'Queens', 'West Queens', 'Lodge', 140.00, 4.2),
(68, 'Jackson Heights Inn', '78-14 37th Ave', 'Queens', 'West Queens', 'Inn', 120.00, 4.1),
(69, 'Elmhurst Hotel', '86-25 Queens Blvd', 'Queens', 'West Queens', 'Hotel', 130.00, 4.4);

-- North Queens
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(70, 'Flushing Meadows Hotel', '131-02 40th Rd', 'Queens', 'North Queens', 'Hotel', 175.00, 4.6),
(71, 'Bayside Luxury', '214-07 Northern Blvd', 'Queens', 'North Queens', 'Luxury', 190.00, 4.8),
(72, 'College Point Motel', '14-29 College Point Blvd', 'Queens', 'North Queens', 'Motel', 85.00, 3.9);

-- Northeast Queens
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(73, 'Little Neck Stay', '252-02 Northern Blvd', 'Queens', 'Northeast Queens', 'B&B', 110.00, 4.3),
(74, 'Douglaston Manor', '6325 Douglaston Pkwy', 'Queens', 'Northeast Queens', 'Manor', 210.00, 4.9),
(75, 'Whitestone Inn', '149-45 6th Ave', 'Queens', 'Northeast Queens', 'Inn', 130.00, 4.5);

-- West Central Queens
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(76, 'Forest Hills Retreat', '68-60 Austin St', 'Queens', 'West Central Queens', 'Retreat', 145.00, 4.4),
(77, 'Regal Park Hotel', '92-77 Queens Blvd', 'Queens', 'West Central Queens', 'Hotel', 160.00, 4.6),
(78, 'Ridgewood Residences', '1678 Madison St', 'Queens', 'West Central Queens', 'Residence', 130.00, 4.1);

-- Central Queens
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(79, 'Fresh Meadows Inn', '188-15 Union Tpke', 'Queens', 'Central Queens', 'Inn', 100.00, 4.0),
(80, 'Hillcrest Suites', '80-20 164th St', 'Queens', 'Central Queens', 'Suites', 135.00, 4.5),
(81, 'Pomonok Hotel', '67-44 Parsons Blvd', 'Queens', 'Central Queens', 'Hotel', 115.00, 4.2);

-- Southwest Queens
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(82, 'Howard Beach Hotel', '157-02 Cross Bay Blvd', 'Queens', 'Southwest Queens', 'Hotel', 150.00, 4.6),
(83, 'Ozone Park Inn', '103-02 Rockaway Blvd', 'Queens', 'Southwest Queens', 'Inn', 95.00, 4.3),
(84, 'Woodhaven Hostel', '85-10 Jamaica Ave', 'Queens', 'Southwest Queens', 'Hostel', 65.00, 3.8);

-- Jamaica
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(85, 'Jamaica Gateway Inn', '153-95 Rockaway Blvd', 'Queens', 'Jamaica', 'Inn', 140.00, 4.5),
(86, 'Queens County B&B', '165-01 Archer Ave', 'Queens', 'Jamaica', 'B&B', 120.00, 4.7),
(87, 'Jamaica Luxury Suites', '139-09 Archer Ave', 'Queens', 'Jamaica', 'Suites', 190.00, 4.9);

-- Southeast Queens
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(88, 'Rosedale Retreat', '243-24 130th Rd', 'Queens', 'Southeast Queens', 'Retreat', 110.00, 4.3),
(89, 'Springfield Gardens Hotel', '184-10 Jamaica Ave', 'Queens', 'Southeast Queens', 'Hotel', 130.00, 4.4),
(90, 'Laurelton Lodge', '228-11 Merrick Blvd', 'Queens', 'Southeast Queens', 'Lodge', 85.00, 4.0);

-- Rockaways
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(91, 'Rockaway Beachfront Hotel', '108-10 Rockaway Beach Dr', 'Queens', 'Rockaways', 'Hotel', 175.00, 4.7),
(92, 'Seaside Inn', '167 Beach 59th St', 'Queens', 'Rockaways', 'Inn', 95.00, 4.2),
(93, 'Belle Harbor B&B', '420 Beach 129th St', 'Queens', 'Rockaways', 'B&B', 150.00, 4.5);


-- Brooklyn --

-- Greenpoint
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(94, 'Greenpoint Lodge', '220 Franklin St', 'Brooklyn', 'Greenpoint', 'Lodge', 120.00, 4.2),
(95, 'The Greenpoint Inn', '176 Java St', 'Brooklyn', 'Greenpoint', 'Inn', 130.00, 4.5),
(96, 'Greenpoint Hostel', '99 Kent St', 'Brooklyn', 'Greenpoint', 'Hostel', 80.00, 3.9);

-- Northwest Brooklyn
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(97, 'Brooklyn Heights Hotel', '121 Hicks St', 'Brooklyn', 'Northwest Brooklyn', 'Hotel', 150.00, 4.6),
(98, 'DUMBO Luxury Suites', '85 Front St', 'Brooklyn', 'Northwest Brooklyn', 'Suites', 220.00, 4.8),
(99, 'Park Slope Bed & Breakfast', '333 4th St', 'Brooklyn', 'Northwest Brooklyn', 'B&B', 110.00, 4.3);

-- Central Brooklyn (Bedford Stuyvesant – Crown Heights)
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(100, 'Stuy Inn', '45 Lewis Ave', 'Brooklyn', 'Central Brooklyn', 'Inn', 105.00, 4.1),
(101, 'Crown Heights Hotel', '1234 St Johns Pl', 'Brooklyn', 'Central Brooklyn', 'Hotel', 140.00, 4.4),
(102, 'Bedford Lodge', '789 Gates Ave', 'Brooklyn', 'Central Brooklyn', 'Lodge', 90.00, 3.8);

-- East New York and New Lots
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(103, 'East New York Suites', '200 Linden Blvd', 'Brooklyn', 'East New York and New Lots', 'Suites', 85.00, 4.0),
(104, 'New Lots Inn', '450 New Lots Ave', 'Brooklyn', 'East New York and New Lots', 'Inn', 70.00, 3.7),
(105, 'Broadway Guesthouse', '367 Broadway', 'Brooklyn', 'East New York and New Lots', 'Guest House', 75.00, 4.2);

-- Sunset Park
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(106, 'Sunset Park Hotel', '702 44th St', 'Brooklyn', 'Sunset Park', 'Hotel', 100.00, 4.3),
(107, 'Park View Retreat', '881 5th Ave', 'Brooklyn', 'Sunset Park', 'Retreat', 120.00, 4.5),
(108, 'Sunset Hostel', '184 42nd St', 'Brooklyn', 'Sunset Park', 'Hostel', 65.00, 3.8);

-- Southwest Brooklyn
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(109, 'Bay Ridge Inn', '301 86th St', 'Brooklyn', 'Southwest Brooklyn', 'Inn', 140.00, 4.4),
(110, 'Dyker Heights Suites', '850 13th Ave', 'Brooklyn', 'Southwest Brooklyn', 'Suites', 160.00, 4.6),
(111, 'Shore Parkway Hotel', '1901 Shore Pkwy', 'Brooklyn', 'Southwest Brooklyn', 'Hotel', 120.00, 4.2);

-- Borough Park
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(112, 'Borough Park B&B', '1441 44th St', 'Brooklyn', 'Borough Park', 'B&B', 95.00, 4.0),
(113, 'Parkway Guesthouse', '6201 Fort Hamilton Pkwy', 'Brooklyn', 'Borough Park', 'Guest House', 100.00, 4.3),
(114, 'Maple Court Inn', '3813 14th Ave', 'Brooklyn', 'Borough Park', 'Inn', 110.00, 4.5);

-- Canarsie and Flatlands
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(115, 'Canarsie Comfort Inn', '9412 Ave L', 'Brooklyn', 'Canarsie and Flatlands', 'Inn', 90.00, 4.1),
(116, 'Flatlands Hotel', '7603 Flatlands Ave', 'Brooklyn', 'Canarsie and Flatlands', 'Hotel', 130.00, 4.4),
(117, 'Brooklyn Marina Suites', '12720 Flatlands Ave', 'Brooklyn', 'Canarsie and Flatlands', 'Suites', 150.00, 4.6);

-- Southern Brooklyn
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(118, 'Brighton Beach Resort', '318 Brighton Beach Ave', 'Brooklyn', 'Southern Brooklyn', 'Resort', 200.00, 4.7),
(119, 'Coney Island Getaway', '501 Surf Ave', 'Brooklyn', 'Southern Brooklyn', 'Getaway', 175.00, 4.5),
(120, 'Sheepshead Bay Inn', '2670 E 19th St', 'Brooklyn', 'Southern Brooklyn', 'Inn', 145.00, 4.3);

-- Flatbush
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(121, 'Flatbush Lodgings', '25 Martense St', 'Brooklyn', 'Flatbush', 'Lodgings', 90.00, 4.2),
(122, 'The Flatbush Suite', '1590 Nostrand Ave', 'Brooklyn', 'Flatbush', 'Suite', 150.00, 4.6),
(123, 'Victorian B&B', '751 Ocean Ave', 'Brooklyn', 'Flatbush', 'B&B', 130.00, 4.8);

-- Bushwick and Williamsburg
INSERT INTO PlacesToStay (PlaceID, p_Name, Address, Borough, Region, p_Type, PricePerNight, Rating) VALUES
(124, 'Williamsburg Boutique', '190 N 5th St', 'Brooklyn', 'Bushwick and Williamsburg', 'Boutique Hotel', 210.00, 4.9),
(125, 'Bushwick Cozy Inn', '330 Starr St', 'Brooklyn', 'Bushwick and Williamsburg', 'Inn', 100.00, 4.3),
(126, 'Williamsburg Loft', '422 Wythe Ave', 'Brooklyn', 'Bushwick and Williamsburg', 'Loft', 185.00, 4.7);


-- Manhattan --

-- Inwood and Washington Heights
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(1, 'Cloisters Museum', '99 Margaret Corbin Dr', 'Manhattan', 'Inwood and Washington Heights', 'Museum', 'http://metmuseum.org/visit/visit-the-cloisters'),
(2, 'Fort Tryon Park', 'Riverside Dr to Broadway', 'Manhattan', 'Inwood and Washington Heights', 'Park', 'https://www.nycgovparks.org/parks/fort-tryon-park'),
(3, 'United Palace Theatre', '4140 Broadway', 'Manhattan', 'Inwood and Washington Heights', 'Theatre', 'https://www.unitedpalace.org/');

-- Central Harlem
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(4, 'Apollo Theater', '253 W 125th St', 'Manhattan', 'Central Harlem', 'Theatre', 'https://www.apollotheater.org/'),
(5, 'Marcus Garvey Park', '18 Mount Morris Park W', 'Manhattan', 'Central Harlem', 'Park', 'https://www.nycgovparks.org/parks/marcus-garvey-park'),
(6, 'Studio Museum Harlem', '144 W 125th St', 'Manhattan', 'Central Harlem', 'Museum', 'https://studiomuseum.org/');

-- East Harlem
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(7, 'El Museo del Barrio', '1230 5th Ave', 'Manhattan', 'East Harlem', 'Museum', 'https://www.elmuseo.org/'),
(8, 'Thomas Jefferson Park', '2180 1st Ave', 'Manhattan', 'East Harlem', 'Park', 'https://www.nycgovparks.org/parks/thomas-jefferson-park'),
(9, 'Graffiti Hall of Fame', '106th St & Park Ave', 'Manhattan', 'East Harlem', 'Cultural Site', 'https://www.atlasobscura.com/places/graffiti-hall-of-fame');

-- Upper West Side
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(10, 'American Museum of Natural History', '200 Central Park W', 'Manhattan', 'Upper West Side', 'Museum', 'https://www.amnh.org/'),
(11, 'Lincoln Center', '10 Lincoln Center Plaza', 'Manhattan', 'Upper West Side', 'Cultural Center', 'https://www.lincolncenter.org/'),
(12, 'Central Park', '59th to 110th St', 'Manhattan', 'Upper West Side', 'Park', 'https://www.centralparknyc.org/');

-- Upper East Side
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(13, 'The Metropolitan Museum of Art', '1000 5th Ave', 'Manhattan', 'Upper East Side', 'Museum', 'https://www.metmuseum.org/'),
(14, 'Central Park Zoo', 'E 64th St', 'Manhattan', 'Upper East Side', 'Zoo', 'https://centralparkzoo.com/'),
(15, 'Frick Collection', '1 E 70th St', 'Manhattan', 'Upper East Side', 'Museum', 'https://www.frick.org/');

-- Chelsea and Clinton
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(16, 'High Line', 'Gansevoort St to 34th St', 'Manhattan', 'Chelsea and Clinton', 'Park', 'https://www.thehighline.org/'),
(17, 'Chelsea Market', '75 9th Ave', 'Manhattan', 'Chelsea and Clinton', 'Market', 'https://www.chelseamarket.com/'),
(18, 'Rubin Museum of Art', '150 W 17th St', 'Manhattan', 'Chelsea and Clinton', 'Museum', 'https://www.rubinmuseum.org/');

-- Gramercy Park and Murray Hill
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(19, 'Gramercy Park', '2 Lexington Ave', 'Manhattan', 'Gramercy Park and Murray Hill', 'Park', 'https://www.nycgovparks.org/parks/gramercy-park'),
(20, 'Morgan Library & Museum', '225 Madison Ave', 'Manhattan', 'Gramercy Park and Murray Hill', 'Museum', 'https://www.themorgan.org/'),
(21, 'Sniffen Court Historic District', '150 E 36th St', 'Manhattan', 'Gramercy Park and Murray Hill', 'Historic Site', 'https://www.nycgo.com/venues/sniffen-court');

-- Greenwich Village and Soho
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(22, 'Washington Square Park', '5 Ave, Waverly Pl., W. 4 St. and Macdougal St.', 'Manhattan', 'Greenwich Village and Soho', 'Park', 'https://www.nycgovparks.org/parks/washington-square-park'),
(23, 'New York University', '70 Washington Sq S', 'Manhattan', 'Greenwich Village and Soho', 'University Campus', 'https://www.nyu.edu/'),
(24, 'Whitney Museum of American Art', '99 Gansevoort St', 'Manhattan', 'Greenwich Village and Soho', 'Museum', 'https://whitney.org/');

-- Union Square and Lower East Side
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(25, 'Union Square Park', 'Broadway to 4 Ave, E 14 St. to E 17 St.', 'Manhattan', 'Union Square and Lower East Side', 'Park', 'https://www.nycgovparks.org/parks/union-square-park'),
(26, 'The New Museum', '235 Bowery', 'Manhattan', 'Union Square and Lower East Side', 'Museum', 'https://www.newmuseum.org/'),
(27, 'Tenement Museum', '103 Orchard St', 'Manhattan', 'Union Square and Lower East Side', 'Museum', 'https://www.tenement.org/');

-- Lower Manhattan
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(28, 'Statue of Liberty', 'Liberty Island', 'Manhattan', 'Lower Manhattan', 'Monument', 'https://www.nps.gov/stli/index.htm'),
(29, 'One World Observatory', '117 West St', 'Manhattan', 'Lower Manhattan', 'Observatory', 'https://www.oneworldobservatory.com/'),
(30, '9/11 Memorial & Museum', '180 Greenwich St', 'Manhattan', 'Lower Manhattan', 'Museum', 'https://www.911memorial.org/');


-- Staten Island --
-- Port Richmond
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(31, 'Snug Harbor Cultural Center', '1000 Richmond Terrace', 'Staten Island', 'Port Richmond', 'Cultural Center', 'http://snug-harbor.org/'),
(32, 'Staten Island Zoo', '614 Broadway', 'Staten Island', 'Port Richmond', 'Zoo', 'http://www.statenislandzoo.org/'),
(33, 'Port Richmond Park', 'Park Ave & Bennett St', 'Staten Island', 'Port Richmond', 'Park', 'https://www.nycgovparks.org/parks/port-richmond-park');

-- South Beach and Tottenville
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(34, 'South Beach', 'Father Capodanno Blvd', 'Staten Island', 'South Beach and Tottenville', 'Beach', 'https://www.nycgovparks.org/parks/south-beach'),
(35, 'Conference House Park', '298 Satterlee St', 'Staten Island', 'South Beach and Tottenville', 'Historic Site', 'https://www.nycgovparks.org/parks/conference-house-park'),
(36, 'Tottenville Swimming Pool', 'Hylan Blvd & Joline Ave', 'Staten Island', 'South Beach and Tottenville', 'Public Pool', 'https://www.nycgovparks.org/facilities/outdoor-pools');

-- Stapleton and St. George
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(37, 'St. George Theatre', '35 Hyatt St', 'Staten Island', 'Stapleton and St. George', 'Theatre', 'https://www.stgeorgetheatre.com/'),
(38, 'Empire Outlets', '55 Richmond Terrace', 'Staten Island', 'Stapleton and St. George', 'Shopping', 'http://www.empireoutlets.nyc/'),
(39, 'Staten Island Museum', '1000 Richmond Terrace', 'Staten Island', 'Stapleton and St. George', 'Museum', 'https://www.statenislandmuseum.org/');

-- Mid-Island (Willowbrook)
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(40, 'Willowbrook Park', '1 Eton Pl', 'Staten Island', 'Mid-Island (Willowbrook)', 'Park', 'https://www.nycgovparks.org/parks/willowbrook-park'),
(41, 'Staten Island Greenbelt', '700 Rockland Ave', 'Staten Island', 'Mid-Island (Willowbrook)', 'Nature Reserve', 'https://www.sigreenbelt.org/'),
(42, 'Historic Richmond Town', '441 Clarke Ave', 'Staten Island', 'Mid-Island (Willowbrook)', 'Historic Site', 'https://www.historicrichmondtown.org/');

-- Bronx --

-- Kingsbridge and Riverdale
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(43, 'Wave Hill', '4900 Independence Ave', 'Bronx', 'Kingsbridge and Riverdale', 'Public Garden', 'https://www.wavehill.org/'),
(44, 'Van Cortlandt Park', 'Broadway and Van Cortlandt Park S', 'Bronx', 'Kingsbridge and Riverdale', 'Park', 'https://www.nycgovparks.org/parks/Van-Cortlandt-Park'),
(45, 'Riverdale Stables', '6394 Broadway', 'Bronx', 'Kingsbridge and Riverdale', 'Stables', 'https://riverdalestables.com/');

-- Northeast Bronx
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(46, 'Baychester Youth Athletic Association', '1220 E 222nd St', 'Bronx', 'Northeast Bronx', 'Sports Complex', 'http://www.byaa.org/'),
(47, 'Pelham Bay Park', 'Bruckner Blvd & Wilkinson Ave', 'Bronx', 'Northeast Bronx', 'Park', 'https://www.nycgovparks.org/parks/pelham-bay-park'),
(48, 'Bartow-Pell Mansion Museum', '895 Shore Road', 'Bronx', 'Northeast Bronx', 'Museum', 'https://www.bartowpellmansionmuseum.org/');

-- Crotona and Tremont
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(49, 'Crotona Park', '1700 Crotona Ave', 'Bronx', 'Crotona and Tremont', 'Park', 'https://www.nycgovparks.org/parks/crotona-park'),
(50, 'Bronx Museum of the Arts', '1040 Grand Concourse', 'Bronx', 'Crotona and Tremont', 'Museum', 'https://www.bronxmuseum.org/'),
(51, 'Tremont Park', 'Tremont Ave & 3rd Ave', 'Bronx', 'Crotona and Tremont', 'Park', 'https://www.nycgovparks.org/parks/tremont-park');

-- Bronx Park and Fordham
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(52, 'Bronx Zoo', '2300 Southern Blvd', 'Bronx', 'Bronx Park and Fordham', 'Zoo', 'https://bronxzoo.com/'),
(53, 'New York Botanical Garden', '2900 Southern Blvd', 'Bronx', 'Bronx Park and Fordham', 'Botanical Garden', 'https://www.nybg.org/'),
(54, 'Edgar Allan Poe Cottage', '2640 Grand Concourse', 'Bronx', 'Bronx Park and Fordham', 'Historic Site', 'https://www.bronxhistoricalsociety.org/poe-cottage');

-- Pelham and Throgs Neck
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(55, 'Orchard Beach', 'Orchard Beach Rd', 'Bronx', 'Pelham and Throgs Neck', 'Beach', 'https://www.nycgovparks.org/parks/orchard-beach'),
(56, 'City Island Nautical Museum', '190 Fordham St', 'Bronx', 'Pelham and Throgs Neck', 'Museum', 'https://www.cityislandmuseum.org/'),
(57, 'Fort Schuyler', '1 Pennyfield Ave', 'Bronx', 'Pelham and Throgs Neck', 'Historic Site', 'https://www.sunymaritime.edu/about/visit-campus/fort-schuyler');

-- HighBridge and Morrisania
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(58, 'Joyce Kilmer Park', '955 Walton Ave', 'Bronx', 'HighBridge and Morrisania', 'Park', 'https://www.nycgovparks.org/parks/joyce-kilmer-park'),
(59, 'Yankee Stadium', '1 E 161st St', 'Bronx', 'HighBridge and Morrisania', 'Stadium', 'https://www.mlb.com/yankees/ballpark'),
(60, 'Bronx Documentary Center', '614 Courtlandt Ave', 'Bronx', 'HighBridge and Morrisania', 'Cultural Center', 'https://www.bronxdoc.org/');

-- Hunts Point and Mott Haven
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(61, 'The Point CDC', '940 Garrison Ave', 'Bronx', 'Hunts Point and Mott Haven', 'Community Center', 'https://thepoint.org/'),
(62, 'Randalls Island Park', '20 Randalls Island Park', 'Bronx', 'Hunts Point and Mott Haven', 'Park', 'https://randallsisland.org/'),
(63, 'Bronx River Art Center', '1087 E Tremont Ave', 'Bronx', 'Hunts Point and Mott Haven', 'Art Center', 'https://www.bronxriverart.org/');

-- Queens --

-- Long Island City and Astoria
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(64, 'MoMA PS1', '22-25 Jackson Ave', 'Queens', 'Long Island City and Astoria', 'Museum', 'https://www.moma.org/ps1'),
(65, 'Socrates Sculpture Park', '32-01 Vernon Blvd', 'Queens', 'Long Island City and Astoria', 'Park', 'http://socratessculpturepark.org/'),
(66, 'Noguchi Museum', '9-01 33rd Rd', 'Queens', 'Long Island City and Astoria', 'Museum', 'https://www.noguchi.org/');

-- West Queens
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(67, 'Flushing Meadows Corona Park', 'Grand Central Pkwy', 'Queens', 'West Queens', 'Park', 'https://www.nycgovparks.org/parks/flushing-meadows-corona-park'),
(68, 'Queens Museum', 'New York City Building', 'Queens', 'West Queens', 'Museum', 'https://www.queensmuseum.org/'),
(69, 'Queens Night Market', '47-01 111th St', 'Queens', 'West Queens', 'Market', 'https://queensnightmarket.com/');

-- North Queens
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(70, 'Fort Totten Park', 'Cross Island Pkwy', 'Queens', 'North Queens', 'Park', 'https://www.nycgovparks.org/parks/fort-totten'),
(71, 'Queens Botanical Garden', '43-50 Main St', 'Queens', 'North Queens', 'Botanical Garden', 'https://queensbotanical.org/'),
(72, 'Bowne House Historical Society', '37-01 Bowne St', 'Queens', 'North Queens', 'Historic House', 'https://www.bownehouse.org/');

-- Northeast Queens
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(73, 'Alley Pond Environmental Center', '228-06 Northern Blvd', 'Queens', 'Northeast Queens', 'Nature Center', 'https://www.alleypond.com/'),
(74, 'Douglas Manor Environmental Association', '233-02 38th Dr', 'Queens', 'Northeast Queens', 'Nature Reserve', 'https://douglastonlocal.com/'),
(75, 'Joe Michaels Mile', 'Northern Blvd', 'Queens', 'Northeast Queens', 'Recreational Trail', 'https://www.nycgovparks.org/parks/joe-michaels-mile');

-- West Central Queens
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(76, 'Forest Park', 'Myrtle Ave', 'Queens', 'West Central Queens', 'Park', 'https://www.nycgovparks.org/parks/forest-park'),
(77, 'Ridgewood Reservoir', '58-2 Vermont Pl', 'Queens', 'West Central Queens', 'Nature Reserve', 'https://www.nycgovparks.org/parks/highland-park'),
(78, 'Metropolitan Expeditionary Learning School', '91-30 Metropolitan Ave', 'Queens', 'West Central Queens', 'Educational Site', 'https://metropolitanels.com/');

-- Central Queens
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(79, 'Cunningham Park', '196-10 Union Tpke', 'Queens', 'Central Queens', 'Park', 'https://www.nycgovparks.org/parks/cunningham-park'),
(80, 'Queens County Farm Museum', '73-50 Little Neck Pkwy', 'Queens', 'Central Queens', 'Museum', 'https://www.queensfarm.org/'),
(81, 'St. Johns University', '8000 Utopia Pkwy', 'Queens', 'Central Queens', 'University', 'https://www.stjohns.edu/');

-- Southwest Queens
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(82, 'Jamaica Bay Wildlife Refuge', 'Cross Bay Blvd', 'Queens', 'Southwest Queens', 'Nature Reserve', 'https://www.nps.gov/gate/planyourvisit/jamaicabay.htm'),
(83, 'Charles Memorial Park', '149th Ave and 1st St', 'Queens', 'Southwest Queens', 'Park', 'https://www.nycgovparks.org/parks/charles-memorial-park'),
(84, 'Aqueduct Racetrack', '110-00 Rockaway Blvd', 'Queens', 'Southwest Queens', 'Racetrack', 'https://www.nyra.com/aqueduct/');

-- Jamaica
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(85, 'King Manor Museum', '150-03 Jamaica Ave', 'Queens', 'Jamaica', 'Museum', 'http://www.kingmanor.org/'),
(86, 'Rufus King Park', '150-29 Jamaica Ave', 'Queens', 'Jamaica', 'Park', 'https://www.nycgovparks.org/parks/rufus-king-park'),
(87, 'Jamaica Center for Arts and Learning', '161-04 Jamaica Ave', 'Queens', 'Jamaica', 'Arts Center', 'https://www.jcal.org/');

-- Southeast Queens
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(88, 'Roy Wilkins Park', '177th St & Baisley Blvd', 'Queens', 'Southeast Queens', 'Park', 'https://www.nycgovparks.org/parks/roy-wilkins-recreation-center'),
(89, 'Queens Public Library - Rosedale', '144-20 243rd St', 'Queens', 'Southeast Queens', 'Library', 'https://www.queenslibrary.org/branch/Rosedale'),
(90, 'Laurelton Lanes', '231-18 Merrick Blvd', 'Queens', 'Southeast Queens', 'Bowling Alley', 'http://www.laureltonlanes.com/');

-- Rockaways
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(91, 'Rockaway Beach', 'Beach 3rd St', 'Queens', 'Rockaways', 'Beach', 'https://www.nycgovparks.org/parks/rockaway-beach'),
(92, 'Jamaica Bay Riding Academy', '7000 Shore Front Pkwy', 'Queens', 'Rockaways', 'Equestrian Center', 'https://www.horsebackride.com/'),
(93, 'Rockaway Freeway Dog Park', '84-01 Beach Channel Dr', 'Queens', 'Rockaways', 'Dog Park', 'https://www.nycgovparks.org/parks/rockaway-freeway');

-- Brooklyn --

-- Greenpoint
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(94, 'McCarren Park', '776 Lorimer St', 'Brooklyn', 'Greenpoint', 'Park', 'https://www.nycgovparks.org/parks/mccarren-park'),
(95, 'Brooklyn Bazaar', '150 Greenpoint Ave', 'Brooklyn', 'Greenpoint', 'Event Space', 'http://bkbazaar.com/'),
(96, 'Greenpoint Terminal Market', '2 Noble St', 'Brooklyn', 'Greenpoint', 'Market', 'https://www.greenpointterminalmarket.com/');

-- Northwest Brooklyn
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(97, 'Brooklyn Bridge Park', '334 Furman St', 'Brooklyn', 'Northwest Brooklyn', 'Park', 'https://www.brooklynbridgepark.org/'),
(98, 'Brooklyn Historical Society', '128 Pierrepont St', 'Brooklyn', 'Northwest Brooklyn', 'Museum', 'https://www.brooklynhistory.org/'),
(99, 'Jane’s Carousel', 'Old Dock St', 'Brooklyn', 'Northwest Brooklyn', 'Attraction', 'https://janescarousel.com/');

-- Central Brooklyn (Bedford Stuyvesant – Crown Heights)
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(100, 'Brooklyn Childrens Museum', '145 Brooklyn Ave', 'Brooklyn', 'Central Brooklyn', 'Museum', 'https://www.brooklynkids.org/'),
(101, 'Weeksville Heritage Center', '158 Buffalo Ave', 'Brooklyn', 'Central Brooklyn', 'Historic Site', 'https://www.weeksvillesociety.org/'),
(102, 'Crown Heights North Historic District', 'Crown Heights', 'Brooklyn', 'Central Brooklyn', 'Historic District', 'https://www.nycgovparks.org/parks/crown-heights-north-historic-district');

-- East New York and New Lots
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(103, 'Shirley Chisholm State Park', '1750 Pennsylvania Ave', 'Brooklyn', 'East New York and New Lots', 'State Park', 'https://parks.ny.gov/parks/shirleychisholm/details.aspx'),
(104, 'Gateway Center', '501 Gateway Dr', 'Brooklyn', 'East New York and New Lots', 'Shopping Center', 'https://www.shopgatewaycenterbrooklyn.com/'),
(105, 'Linden Park', 'Linden Blvd & Vermont St', 'Brooklyn', 'East New York and New Lots', 'Park', 'https://www.nycgovparks.org/parks/linden-park');

-- Sunset Park
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(106, 'Sunset Park', '7th Ave & 41st St', 'Brooklyn', 'Sunset Park', 'Park', 'https://www.nycgovparks.org/parks/sunset-park'),
(107, 'Industry City', '220 36th St', 'Brooklyn', 'Sunset Park', 'Shopping & Dining Complex', 'https://industrycity.com/'),
(108, 'Bush Terminal Piers Park', 'Marginal St W', 'Brooklyn', 'Sunset Park', 'Park', 'https://www.nycgovparks.org/parks/bush-terminal-piers-park');

-- Southwest Brooklyn
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(109, 'Dyker Beach Golf Course', '1030 86th St', 'Brooklyn', 'Southwest Brooklyn', 'Golf Course', 'https://www.dykerbeachgc.com/'),
(110, 'Owl’s Head Park', 'Colonial Rd & 68th St', 'Brooklyn', 'Southwest Brooklyn', 'Park', 'https://www.nycgovparks.org/parks/owls-head-park'),
(111, 'Verrazzano-Narrows Bridge', 'Verrazzano Bridge', 'Brooklyn', 'Southwest Brooklyn', 'Landmark', 'https://www.nycgo.com/attractions/verrazzano-narrows-bridge');

-- Borough Park
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(112, 'Kaiser Park', 'Neptune Ave & Bayview Ave', 'Brooklyn', 'Borough Park', 'Park', 'https://www.nycgovparks.org/parks/kaiser-park'),
(113, 'Borough Park Library', '1265 43rd St', 'Brooklyn', 'Borough Park', 'Library', 'https://www.bklynlibrary.org/locations/borough-park'),
(114, 'Maimonides Park', '1904 Surf Ave', 'Brooklyn', 'Borough Park', 'Sports Complex', 'https://www.brooklyncyclones.com');

-- Canarsie and Flatlands
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(115, 'Canarsie Pier', 'Canarsie Pier', 'Brooklyn', 'Canarsie and Flatlands', 'Recreational Area', 'https://www.nps.gov/gate/learn/historyculture/canarsie-pier.htm'),
(116, 'Brooklyn Terminal Market', '21 Brooklyn Ave', 'Brooklyn', 'Canarsie and Flatlands', 'Market', 'https://www.nycgo.com/shopping/brooklyn-terminal-market'),
(117, 'Paerdegat Park', 'East 40th St & Foster Ave', 'Brooklyn', 'Canarsie and Flatlands', 'Park', 'https://www.nycgovparks.org/parks/paerdegat-park');

-- Southern Brooklyn
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(118, 'Coney Island Boardwalk', 'Riegelmann Boardwalk', 'Brooklyn', 'Southern Brooklyn', 'Beach/Boardwalk', 'https://www.nycgovparks.org/parks/coney-island-beach-boardwalk'),
(119, 'New York Aquarium', '602 Surf Ave', 'Brooklyn', 'Southern Brooklyn', 'Aquarium', 'https://nyaquarium.com/'),
(120, 'Brighton Beach', 'Brighton Beach Ave', 'Brooklyn', 'Southern Brooklyn', 'Beach', 'https://www.nycgovparks.org/parks/brighton-beach');

-- Flatbush
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(121, 'Brooklyn Botanic Garden', '990 Washington Ave', 'Brooklyn', 'Flatbush', 'Botanical Garden', 'https://www.bbg.org/'),
(122, 'Prospect Park', '95 Prospect Park W', 'Brooklyn', 'Flatbush', 'Park', 'https://www.prospectpark.org/'),
(123, 'Kings Theatre', '1027 Flatbush Ave', 'Brooklyn', 'Flatbush', 'Theatre', 'https://www.kingstheatre.com/');

-- Bushwick and Williamsburg
INSERT INTO ThingsToDo (ActivityID, t_Name, Address, Borough, Region, t_Type, Link) VALUES
(124, 'Domino Park', '15 River St', 'Brooklyn', 'Bushwick and Williamsburg', 'Park', 'https://www.dominopark.com/'),
(125, 'Bushwick Collective Street Art', 'Troutman St at St Nicholas Ave', 'Brooklyn', 'Bushwick and Williamsburg', 'Public Art', 'https://www.facebook.com/TheBushwickCollective/'),
(126, 'Williamsburg Bridge', 'Williamsburg Bridge', 'Brooklyn', 'Bushwick and Williamsburg', 'Bridge', 'https://www.nyc.gov/html/dot/html/infrastructure/bridges-williamsburg.shtml');

-- Manhattan --

-- Inwood and Washington Heights
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(1, 'Inwood Art Works Film Festival', '5030 Broadway', 'Manhattan', 'Inwood and Washington Heights', '06-01', '06-05', 'https://inwoodartworks.nyc/film-festival'),
(2, 'Washington Heights Music Fest', 'Fort Washington Ave', 'Manhattan', 'Inwood and Washington Heights', '07-12', '07-14', 'https://www.heightsmusicfest.com/'),
(3, 'Inwood Green Market', 'Isham St & Cooper St', 'Manhattan', 'Inwood and Washington Heights', '05-05', '05-05', 'https://www.grownyc.org/greenmarket/manhattan/inwood');

-- Central Harlem
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(4, 'Harlem Book Fair', 'West 135th St', 'Manhattan', 'Central Harlem', '07-23', '07-23', 'https://www.harlembookfair.com/'),
(5, 'Harlem Jazz Series', 'Lenox Ave', 'Manhattan', 'Central Harlem', '09-01', '09-30', 'https://harlemjazzseries.com/'),
(6, 'Soul Food Festival', 'Malcolm X Blvd & 116th St', 'Manhattan', 'Central Harlem', '08-15', '08-15', 'https://soulfoodfestharlem.com/');

-- East Harlem
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(7, 'El Barrio Latin Jazz Festival', '105 E 106th St', 'Manhattan', 'East Harlem', '05-20', '05-27', 'https://www.elbarriojazzfest.com/'),
(8, 'East Harlem Cultural Festival', 'E 104th St', 'Manhattan', 'East Harlem', '08-01', '08-03', 'https://www.eastharlemfest.com/'),
(9, 'Poetry Slam East Harlem', '2031 2nd Ave', 'Manhattan', 'East Harlem', '10-05', '10-05', 'https://eastharlempoetry.com/');

-- Upper West Side
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(10, 'Upper West Side Food Festival', 'Central Park West', 'Manhattan', 'Upper West Side', '09-10', '09-12', 'https://uwsfoodfest.com/'),
(11, 'New York Philharmonic in the Park', 'Central Park', 'Manhattan', 'Upper West Side', '06-21', '06-21', 'https://nyphil.org/park'),
(12, 'Shakespeare in the Park', 'Delacorte Theater', 'Manhattan', 'Upper West Side', '05-15', '08-30', 'https://publictheater.org/shakespeare-in-the-park');

-- Upper East Side
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(13, 'Museum Mile Festival', 'Fifth Ave from 82nd to 105th', 'Manhattan', 'Upper East Side', '06-08', '06-08', 'https://museummilefestival.org/'),
(14, 'UES Art Walk', 'Madison Ave', 'Manhattan', 'Upper East Side', '10-22', '10-22', 'https://uesartwalk.com/'),
(15, 'Carl Schurz Park Conservancy Events', 'East End Ave & 86th St', 'Manhattan', 'Upper East Side', '04-01', '11-30', 'https://carlschurzparknyc.org/events');

-- Chelsea and Clinton
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(16, 'Chelsea Music Festival', '410 W 23rd St', 'Manhattan', 'Chelsea and Clinton', '06-06', '06-14', 'https://chelseamusicfestival.org/'),
(17, 'High Line Art Walk', 'The High Line', 'Manhattan', 'Chelsea and Clinton', '05-20', '05-20', 'https://art.thehighline.org/'),
(18, 'Chelsea Film Festival', '260 W 23rd St', 'Manhattan', 'Chelsea and Clinton', '10-15', '10-18', 'https://chelseafilm.org/');

-- Gramercy Park and Murray Hill
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(19, 'Gramercy Park Block Party', 'Gramercy Park', 'Manhattan', 'Gramercy Park and Murray Hill', '07-04', '07-04', 'https://gramercyparkblockparty.org/'),
(20, 'Kips Bay Decorator Show House', '125 E 65th St', 'Manhattan', 'Gramercy Park and Murray Hill', '05-02', '06-01', 'https://kipsbaydecoratorshowhouse.org/'),
(21, 'Murray Hill Neighborhood Festival', 'Park Ave & 34th St', 'Manhattan', 'Gramercy Park and Murray Hill', '09-05', '09-05', 'https://murrayhillnyc.org/festival');

-- Greenwich Village and Soho
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(22, 'Washington Square Outdoor Art Exhibit', 'Washington Square Park', 'Manhattan', 'Greenwich Village and Soho', '05-28', '09-06', 'https://wsoae.org/'),
(23, 'Soho International Film Festival', '154 Spring St', 'Manhattan', 'Greenwich Village and Soho', '10-15', '10-22', 'https://sohofilmfest.com/'),
(24, 'Village Halloween Parade', '6th Ave from Spring St to 16th St', 'Manhattan', 'Greenwich Village and Soho', '10-31', '10-31', 'https://www.halloween-nyc.com/');

-- Union Square and Lower East Side
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(25, 'Union Square Greenmarket', 'Union Square West', 'Manhattan', 'Union Square and Lower East Side', '01-01', '12-31', 'https://www.grownyc.org/greenmarket/manhattan-union-square-m'),
(26, 'Lower East Side Film Festival', '155 E 3rd St', 'Manhattan', 'Union Square and Lower East Side', '06-10', '06-20', 'https://www.lesfilmfestival.com/'),
(27, 'Taste of the Lower East Side', 'Delancey St & Chrystie St', 'Manhattan', 'Union Square and Lower East Side', '04-25', '04-25', 'https://www.tasteofles.com/');

-- Lower Manhattan
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(28, 'Tribeca Film Festival', 'Various locations', 'Manhattan', 'Lower Manhattan', '06-09', '06-20', 'https://www.tribecafilm.com/'),
(29, 'Battery Park Music Festival', 'Battery Pl', 'Manhattan', 'Lower Manhattan', '08-14', '08-16', 'https://www.batteryparkcity.org/events/'),
(30, 'SeaGlass Carousel', 'State St & Water St', 'Manhattan', 'Lower Manhattan', '05-01', '04-30', 'https://www.seaglasscarousel.nyc/');

-- Port Richmond
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(31, 'Port Richmond Heritage Day', 'Richmond Terrace', 'Staten Island', 'Port Richmond', '07-04', '07-04', 'https://www.statenislandusa.com/events/port-richmond-heritage-day'),
(32, 'Port Richmond Street Fair', 'Port Richmond Ave', 'Staten Island', 'Port Richmond', '09-15', '09-15', 'https://www.statenislandstreetfairs.com/'),
(33, 'Port Richmond Crafts Festival', 'Bennett St', 'Staten Island', 'Port Richmond', '05-20', '05-20', 'https://www.craftsfestival.com/');

-- South Beach and Tottenville
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(34, 'Tottenville Historical Society Walk', 'Main St', 'Staten Island', 'South Beach and Tottenville', '06-01', '06-01', 'https://tottenvillehistory.org/'),
(35, 'South Beach Kite Festival', 'Father Capodanno Blvd', 'Staten Island', 'South Beach and Tottenville', '08-22', '08-22', 'https://www.nycgovparks.org/parks/south-beach/events/kite-festival'),
(36, 'Tottenville Fair', 'Amboy Rd', 'Staten Island', 'South Beach and Tottenville', '10-05', '10-05', 'https://www.tottenvillefair.com/');

-- Stapleton and St. George
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(37, 'St. George Day Festival', 'Hyatt St', 'Staten Island', 'Stapleton and St. George', '04-23', '04-23', 'https://www.stgeorgedaysi.com/'),
(38, 'Stapleton Saturdays', 'Bay St', 'Staten Island', 'Stapleton and St. George', '07-01', '07-29', 'https://www.stapletonsi.com/saturdays'),
(39, 'Staten Island Jazz Festival', 'Stuyvesant Pl', 'Staten Island', 'Stapleton and St. George', '10-20', '10-20', 'https://www.sijazzfest.com/');

-- Mid-Island (Willowbrook)
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(40, 'Willowbrook Park Concert Series', 'Eton Place', 'Staten Island', 'Mid-Island (Willowbrook)', '06-15', '08-15', 'https://www.nycgovparks.org/parks/willowbrook-park/events/concert-series'),
(41, 'Greenbelt Trail Festival', 'Rockland Ave', 'Staten Island', 'Mid-Island (Willowbrook)', '09-05', '09-05', 'https://sigreenbelt.org/trail-festival'),
(42, 'Willowbrook Arts & Crafts Fair', 'Victory Blvd', 'Staten Island', 'Mid-Island (Willowbrook)', '12-05', '12-05', 'https://www.willowbrookarts.org/fair');

-- Kingsbridge and Riverdale
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(43, 'Riverdale Music Festival', 'W 246th St', 'Bronx', 'Kingsbridge and Riverdale', '07-15', '07-15', 'https://riverdalemusicfest.org/'),
(44, 'Kingsbridge Historical Society Walking Tour', 'Kingsbridge Ave', 'Bronx', 'Kingsbridge and Riverdale', '10-22', '10-22', 'https://kingsbridgehistoricalsociety.org/walking-tours'),
(45, 'Riverdale Art Walk', 'Riverdale Ave', 'Bronx', 'Kingsbridge and Riverdale', '05-10', '05-10', 'https://riverdaleartwalk.com/');

-- Northeast Bronx
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(46, 'Bronx Green-Up Garden Festival', 'Baychester Ave', 'Bronx', 'Northeast Bronx', '06-03', '06-03', 'https://www.nybg.org/green-up/'),
(47, 'Northeast Bronx Jazz Fest', 'Eastchester Rd', 'Bronx', 'Northeast Bronx', '09-12', '09-12', 'https://nebronxjazzfest.com/'),
(48, 'Co-op City Family Fun Day', 'Co-op City Blvd', 'Bronx', 'Northeast Bronx', '08-18', '08-18', 'https://coopcityfamilyfun.org/');

-- Crotona and Tremont
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(49, 'Crotona Park Summer Film Series', 'Crotona Park East', 'Bronx', 'Crotona and Tremont', '07-05', '08-30', 'https://www.nycgovparks.org/parks/crotona-park/events/film-series'),
(50, 'Tremont Arts and Culture Festival', 'E Tremont Ave', 'Bronx', 'Crotona and Tremont', '10-05', '10-05', 'https://tremontartfest.com/'),
(51, 'Bronx Poetry Slam', 'Crotona Ave', 'Bronx', 'Crotona and Tremont', '04-20', '04-20', 'https://bronxpoetryslam.com/');

-- Bronx Park and Fordham
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(52, 'Bronx Zoo Run for the Wild', '2300 Southern Blvd', 'Bronx', 'Bronx Park and Fordham', '04-28', '04-28', 'https://bronxzoo.com/run-wild'),
(53, 'Fordham Road Food Festival', 'Fordham Rd & Grand Concourse', 'Bronx', 'Bronx Park and Fordham', '06-22', '06-22', 'https://fordhamfoodfest.com/'),
(54, 'Botanical Gardens Flower Show', '2900 Southern Blvd', 'Bronx', 'Bronx Park and Fordham', '05-15', '05-30', 'https://www.nybg.org/event/flower-show/');

-- Pelham and Throgs Neck
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(55, 'Pelham Bay Park Earth Day', 'Pelham Bay Park', 'Bronx', 'Pelham and Throgs Neck', '04-22', '04-22', 'https://www.nycgovparks.org/parks/pelham-bay-park/events/earth-day'),
(56, 'Throgs Neck Classic Car Show', 'E Tremont Ave', 'Bronx', 'Pelham and Throgs Neck', '09-14', '09-14', 'https://throgsneckclassiccarshow.com/'),
(57, 'Pelham Parkway Arts Festival', 'Pelham Pkwy', 'Bronx', 'Pelham and Throgs Neck', '10-06', '10-06', 'https://pelhamparkwayarts.org/');

-- HighBridge and Morrisania
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(58, 'Highbridge Park Music Nights', 'University Ave', 'Bronx', 'HighBridge and Morrisania', '07-01', '08-31', 'https://highbridgeparkmusic.org/'),
(59, 'Morrisania Jazz Festival', 'Franklin Ave', 'Bronx', 'HighBridge and Morrisania', '08-15', '08-15', 'https://morrisaniajazzfest.com/'),
(60, 'Bronx Cultural Parade', 'Grand Concourse', 'Bronx', 'HighBridge and Morrisania', '06-30', '06-30', 'https://bronxcultureparade.com/');

-- Hunts Point and Mott Haven
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(61, 'Hunts Point Fish Parade', 'Hunts Point Ave', 'Bronx', 'Hunts Point and Mott Haven', '06-25', '06-25', 'https://huntspointfishparade.org/'),
(62, 'Mott Haven Art Walk', '138th St', 'Bronx', 'Hunts Point and Mott Haven', '09-20', '09-20', 'https://motthavenartwalk.com/'),
(63, 'Hunts Point Summer Festival', 'Spofford Ave', 'Bronx', 'Hunts Point and Mott Haven', '07-12', '07-12', 'https://huntspointsummerfest.org/');

-- Long Island City and Astoria
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(64, 'LIC Arts Open', '11th Street', 'Queens', 'Long Island City and Astoria', '05-11', '05-15', 'https://licartsopen.com/'),
(65, 'Astoria Music Festival', 'Shore Blvd', 'Queens', 'Long Island City and Astoria', '08-12', '08-12', 'https://astoriamusicfestival.org/'),
(66, 'LIC Flea & Food', '5-25 46th Ave', 'Queens', 'Long Island City and Astoria', '06-01', '09-30', 'https://licflea.com/');

-- West Queens
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(67, 'Corona Park Flower Festival', 'Flushing Meadows Corona Park', 'Queens', 'West Queens', '04-05', '04-20', 'https://flushingmeadowspark.com/'),
(68, 'Jackson Heights Food Crawl', '37th Avenue', 'Queens', 'West Queens', '10-05', '10-05', 'https://jacksonheightsfoodcrawl.com/'),
(69, 'Ecuadorian Parade', 'Northern Blvd', 'Queens', 'West Queens', '08-06', '08-06', 'https://ecuadorianparade.org/');

-- North Queens
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(70, 'Flushing Lunar New Year Parade', 'Main St', 'Queens', 'North Queens', '02-01', '02-01', 'https://flushingnewyear.com/'),
(71, 'Bowne House Historical Fair', '37-01 Bowne St', 'Queens', 'North Queens', '05-30', '05-30', 'https://bownehouse.org/events'),
(72, 'Whitestone Summer Fest', 'Francis Lewis Blvd', 'Queens', 'North Queens', '07-15', '07-15', 'https://whitestonesummerfest.com/');

-- Northeast Queens
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(73, 'Fort Totten Independence Day Celebration', 'Fort Totten', 'Queens', 'Northeast Queens', '07-04', '07-04', 'https://forttotten.org/july4th'),
(74, 'Little Neck-Douglaston Memorial Day Parade', 'Northern Blvd', 'Queens', 'Northeast Queens', '05-29', '05-29', 'https://lndmemorialday.org/'),
(75, 'Northeast Queens Jazz Night', 'Bell Blvd', 'Queens', 'Northeast Queens', '09-20', '09-20', 'https://nequeensjazz.org/');

-- West Central Queens
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(76, 'Forest Hills Greenmarket', 'Queens Blvd & 70th Ave', 'Queens', 'West Central Queens', '03-01', '11-30', 'https://www.grownyc.org/greenmarket/queens/forest-hills'),
(77, 'Ridgewood Artisan Market', 'Catalpa Ave', 'Queens', 'West Central Queens', '06-12', '12-15', 'https://ridgewoodmarket.com/'),
(78, 'Rego Park Food Festival', '63rd Drive', 'Queens', 'West Central Queens', '08-23', '08-23', 'https://regoparkfest.org/');

-- Central Queens
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(79, 'Fresh Meadows Music Festival', '64th Ave & 173rd St', 'Queens', 'Central Queens', '09-15', '09-15', 'https://freshmeadowsmusicfest.com/'),
(80, 'Hillcrest Jewish Center Carnival', 'Union Tpke', 'Queens', 'Central Queens', '05-10', '05-14', 'https://hillcrestjc.org/carnival'),
(81, 'Kew Gardens Community ArtsDay', 'Metropolitan Ave', 'Queens', 'Central Queens', '09-03', '09-03', 'https://kewgardensfestival.com/');

-- Southwest Queens
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(82, 'Woodhaven Cultural & Historical Society Parade', 'Jamaica Ave', 'Queens', 'Southwest Queens', '10-31', '10-31', 'https://woodhavenhistory.org/'),
(83, 'Ozone Park Block Party', '101st Ave', 'Queens', 'Southwest Queens', '07-04', '07-04', 'https://ozoneparkparty.org/'),
(84, 'Richmond Hill Street Fair', 'Liberty Ave', 'Queens', 'Southwest Queens', '05-20', '05-20', 'https://richmondhillfair.org/');

-- Jamaica
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(85, 'Jamaica Arts & Music Summer (JAMS)', 'Jamaica Ave', 'Queens', 'Jamaica', '08-05', '08-06', 'https://jamsfestival.org/'),
(86, 'Jamaica Bay Wildlife Festival', 'Jamaica Bay', 'Queens', 'Jamaica', '06-10', '06-10', 'https://jamaicabayfestival.com/'),
(87, 'King Manor Museum Historical Reenactment', 'King Park', 'Queens', 'Jamaica', '09-17', '09-17', 'https://kingmanor.org/events');

-- Southeast Queens
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(88, 'Springfield Park Jazz Festival', 'Springfield Blvd', 'Queens', 'Southeast Queens', '07-19', '07-19', 'https://springfieldjazzfest.com/'),
(89, 'Rosedale Civic Association Parade', 'Francis Lewis Blvd', 'Queens', 'Southeast Queens', '04-30', '04-30', 'https://rosedalecivic.org/parade'),
(90, 'Queens Village Historical Society Exhibition', 'Hillside Ave', 'Queens', 'Southeast Queens', '10-12', '10-12', 'https://queensvillagehistory.org/');

-- Rockaways
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(91, 'Rockaway Beach Surf Competition', 'Beach 90th St', 'Queens', 'Rockaways', '08-20', '08-20', 'https://rockawaysurf.com/'),
(92, 'Rockaway Food Truck Festival', 'Rockaway Beach Blvd', 'Queens', 'Rockaways', '05-05', '09-05', 'https://rockawayfoodtruckfest.org/'),
(93, 'Fort Tilden Art Walk', 'Fort Tilden', 'Queens', 'Rockaways', '06-01', '06-01', 'https://forttildenartwalk.org/');

-- Greenpoint
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(94, 'Greenpoint Film Festival', 'Greenpoint Ave', 'Brooklyn', 'Greenpoint', '05-08', '05-11', 'https://greenpointfilmfestival.org/'),
(95, 'Greenpoint Open Studios', 'Franklin St', 'Brooklyn', 'Greenpoint', '10-03', '10-04', 'https://greenpointopenstudios.com/'),
(96, 'Greenpoint Ave Block Party', 'Greenpoint Ave', 'Brooklyn', 'Greenpoint', '07-14', '07-14', 'https://greenpointblockparty.com/');

-- Northwest Brooklyn
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(97, 'Brooklyn Heights Art Walk', 'Montague St', 'Brooklyn', 'Northwest Brooklyn', '06-15', '06-15', 'https://brooklynheightsartwalk.com/'),
(98, 'DUMBO Arts Festival', 'Main St', 'Brooklyn', 'Northwest Brooklyn', '09-21', '09-23', 'https://dumboartsfestival.com/'),
(99, 'Brooklyn Bridge Celebration', 'Brooklyn Bridge Park', 'Brooklyn', 'Northwest Brooklyn', '05-24', '05-24', 'https://brooklynbridgepark.org/events/celebration');

-- Central Brooklyn (Bedford Stuyvesant – Crown Heights)
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(100, 'Bed-Stuy Arts Stroll', 'Fulton St', 'Brooklyn', 'Central Brooklyn', '07-19', '07-19', 'https://bedstuyartsstroll.com/'),
(101, 'Crown Heights Jazz Festival', 'Nostrand Ave', 'Brooklyn', 'Central Brooklyn', '08-08', '08-08', 'https://crownheightsjazzfest.com/'),
(102, 'Bedford-Stuyvesant Museum Day', 'Lewis Ave', 'Brooklyn', 'Central Brooklyn', '10-05', '10-05', 'https://bedfordstuyvesantmuseumday.com/');

-- East New York and New Lots
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(103, 'East New York Farm Fair', 'New Lots Ave', 'Brooklyn', 'East New York and New Lots', '06-22', '06-22', 'https://eastnewyorkfarmfair.com/'),
(104, 'New Lots Music Festival', 'Livonia Ave', 'Brooklyn', 'East New York and New Lots', '09-15', '09-15', 'https://newlotsmusicfest.com/'),
(105, 'East New York Heritage Day', 'Schneck Ave', 'Brooklyn', 'East New York and New Lots', '08-11', '08-11', 'https://eastnewyorkheritageday.com/');

-- Sunset Park
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(106, 'Sunset Park Latino Festival', '5th Ave', 'Brooklyn', 'Sunset Park', '07-27', '07-27', 'https://sunsetparklatinofestival.com/'),
(107, 'Sunset Park Waterfront Arts Festival', '44th St', 'Brooklyn', 'Sunset Park', '05-15', '05-15', 'https://sunsetwaterfrontarts.com/'),
(108, 'Sunset Park Street Fair', '60th St', 'Brooklyn', 'Sunset Park', '09-05', '09-05', 'https://sunsetparkstreetfair.com/');

-- Southwest Brooklyn
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(109, 'Bay Ridge Festival of the Arts', '3rd Ave', 'Brooklyn', 'Southwest Brooklyn', '06-10', '06-10', 'https://bayridgefestival.org/'),
(110, 'Southwest Brooklyn Fall Festival', 'Ridge Blvd', 'Brooklyn', 'Southwest Brooklyn', '10-01', '10-01', 'https://swbrooklynfallfest.com/'),
(111, 'Bensonhurst Food & Family Day', '18th Ave', 'Brooklyn', 'Southwest Brooklyn', '09-15', '09-15', 'https://bensonhurstfestival.com/');

-- Borough Park
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(112, 'Borough Park Historical Tour', '14th Ave', 'Brooklyn', 'Borough Park', '10-06', '10-06', 'https://boroughparkhistory.org/'),
(113, 'Borough Park Community Carnival', '50th St', 'Brooklyn', 'Borough Park', '06-12', '06-12', 'https://bpcommunitycarnival.com/'),
(114, 'Borough Park Autumn Fair', 'New Utrecht Ave', 'Brooklyn', 'Borough Park', '09-23', '09-23', 'https://bpautumnfair.com/');

-- Canarsie and Flatlands
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(115, 'Canarsie Cultural Parade', 'Flatlands Ave', 'Brooklyn', 'Canarsie and Flatlands', '08-13', '08-13', 'https://canarsieculturalparade.com/'),
(116, 'Flatlands Food Fest', 'Ave L', 'Brooklyn', 'Canarsie and Flatlands', '07-20', '07-20', 'https://flatlandsfoodfest.com/'),
(117, 'Canarsie Art Trail', 'Rockaway Pkwy', 'Brooklyn', 'Canarsie and Flatlands', '05-28', '05-28', 'https://canarsiearttrail.com/');

-- Southern Brooklyn
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(118, 'Coney Island Film Festival', 'Surf Ave', 'Brooklyn', 'Southern Brooklyn', '09-13', '09-15', 'https://coneyislandfilmfestival.com/'),
(119, 'Brighton Beach Cultural Festival', 'Brighton Beach Ave', 'Brooklyn', 'Southern Brooklyn', '08-07', '08-07', 'https://brightonbeachfest.com/'),
(120, 'Sheepshead Bay Boat Show', 'Emmons Ave', 'Brooklyn', 'Southern Brooklyn', '06-19', '06-19', 'https://sheepsheadbayboatshow.com/');

-- Flatbush
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(121, 'Flatbush Avenue Street Fair', 'Flatbush Ave', 'Brooklyn', 'Flatbush', '07-04', '07-04', 'https://flatbushstreetfair.com/'),
(122, 'Prospect Park Summer Bash', 'Prospect Park West', 'Brooklyn', 'Flatbush', '06-22', '06-22', 'https://prospectparksummerbash.com/'),
(123, 'Flatbush Art and Jazz Festival', 'Ocean Ave', 'Brooklyn', 'Flatbush', '09-25', '09-25', 'https://flatbushjazzfest.com/');

-- Bushwick and Williamsburg
INSERT INTO ny_Events (EventID, e_Name, Address, Borough, Region, Start_Date, End_Date, Link) VALUES
(124, 'Williamsburg Indie Film Fest', 'Wythe Ave', 'Brooklyn', 'Bushwick and Williamsburg', '10-15', '10-20', 'https://williamsburgindiefilmfest.com/'),
(125, 'Bushwick Collective Block Party', 'Troutman St', 'Brooklyn', 'Bushwick and Williamsburg', '06-01', '06-01', 'https://bushwickcollectiveblockparty.com/'),
(126, 'Williamsburg Waterfront Performances', 'N 12th St', 'Brooklyn', 'Bushwick and Williamsburg', '08-10', '08-10', 'https://williamsburgwaterfrontperf.com/');



-- Queries --
SELECT * FROM Restaurants WHERE Borough = ? AND Region = ? LIMIT 3;
SELECT * FROM ny_Events WHERE Borough = ? AND Region = ? AND Start_Date >= ? AND End_Date <= ? LIMIT 3;
SELECT * FROM ThingsToDo WHERE Borough = ? AND Region = ? LIMIT 3;
SELECT * FROM PlacesToStay WHERE Borough = ? AND Region = ? LIMIT 3;
