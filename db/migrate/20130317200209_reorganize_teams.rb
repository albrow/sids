class ReorganizeTeams < ActiveRecord::Migration
	# we need to reorganize teams to reflect the 2013 tournament
	
  def up
  	Team.destroy_all
  	Team.create :name => 'Louisville', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/louisville.png', :id => 1, :seed => 1
		Team.create :name => 'NCAT/LIB', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/ncat-lib.png', :id => 2, :seed => 16
		Team.create :name => 'Colorodo State', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/colorado_st.png', :id => 3, :seed => 8
		Team.create :name => 'Missouri', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/mizz.png', :id => 4, :seed => 9
		Team.create :name => 'Oklahoma State', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/oklahoma_st.png', :id => 5, :seed => 5
		Team.create :name => 'Oregon', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/oregon.png', :id => 6, :seed => 12
		Team.create :name => 'Saint Louis', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/saint_louis.png', :id => 7, :seed => 4
		Team.create :name => 'New Mexico State', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/new_mexico_st.png', :id => 8, :seed => 13
		Team.create :name => 'Memphis', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/memphis.png', :id => 9, :seed => 6
		Team.create :name => 'MTU/SMC', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/mtu-smc.png', :id => 10, :seed => 11
		Team.create :name => 'Michigan State', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/michigan_st.png', :id => 11, :seed => 3
		Team.create :name => 'Valparaiso', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/valparaiso.png', :id => 12, :seed => 14
		Team.create :name => 'Creighton', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/creighton.png', :id => 13, :seed =>7
		Team.create :name => 'Cincinnati', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/cincinnati.png', :id => 14, :seed => 10
		Team.create :name => 'Duke', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/thebest.png', :id => 15, :seed =>2
		Team.create :name => 'Albany', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/albany.png', :id => 16, :seed =>15
		Team.create :name => 'Gonzaga', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/gonzaga.png', :id => 17, :seed => 1
		Team.create :name => 'Southern', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/southern.png', :id => 18, :seed => 16
		Team.create :name => 'Pitt', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/pittsburgh.png', :id => 19, :seed => 8
		Team.create :name => 'Wichita State', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/wichita_st.png', :id => 20, :seed => 9
		Team.create :name => 'Wisconsin', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/wisconsin.png', :id => 21, :seed => 5
		Team.create :name => 'Mississippi', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/ole_miss.png', :id => 22, :seed =>12
		Team.create :name => 'KSU', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/kansas_st.png', :id => 23, :seed => 4
		Team.create :name => 'BSU/LAS', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/bsu-las.png', :id => 24, :seed => 13
		Team.create :name => 'Arizona', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/arizona.png', :id => 25, :seed => 6
		Team.create :name => 'Belmont', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/belmont.png', :id => 26, :seed => 11
		Team.create :name => 'UNM', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/new_mexico.png', :id => 27, :seed => 3
		Team.create :name => 'Harvard', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/harvard.png', :id => 28, :seed => 14
		Team.create :name => 'Notre Dame', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/notre_dame.png', :id => 29, :seed => 7
		Team.create :name => 'Iowa State', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/iowa_st.png', :id => 30, :seed =>10
		Team.create :name => 'Ohio State', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/ohio_st.png', :id => 31, :seed => 2
		Team.create :name => 'Iona', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/iona.png', :id => 32, :seed => 15
		Team.create :name => 'Kansas', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/kansas.png', :id => 33, :seed => 1
		Team.create :name => 'West Kentucky University', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/w_kentucky.png', :id => 34, :seed => 16
		Team.create :name => 'UNC', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/north_carolina.png', :id => 35, :seed => 8
		Team.create :name => 'Villanova', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/villanova.png', :id => 36, :seed => 9
		Team.create :name => 'Virginia Commonwealth', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/vcu.png', :id => 37, :seed => 5
		Team.create :name => 'Akron', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/akron.png', :id => 38, :seed => 12
		Team.create :name => 'Michigan', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/michigan.png', :id => 39, :seed => 4
		Team.create :name => 'South Dakota', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/sdsu.png', :id => 40, :seed => 13
		Team.create :name => 'UCLA', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/ucla.png', :id => 41, :seed => 6
		Team.create :name => 'Minnesota', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/minnesota.png', :id => 42, :seed => 11
		Team.create :name => 'Florida', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/florida.png', :id => 43, :seed => 3
		Team.create :name => 'Northwestern State', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/nw_st.png', :id => 44, :seed => 14
		Team.create :name => 'San Diego State', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/san_diego_st.png', :id => 45, :seed => 7
		Team.create :name => 'Oklahoma', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/oklahoma.png', :id => 46, :seed => 10
		Team.create :name => 'Georgetown', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/georgetown.png', :id => 47, :seed => 2
		Team.create :name => 'Florida Gulf Coast', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/fgcu.png', :id => 48, :seed => 15
		Team.create :name => 'Indiana', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/indiana.png', :id => 49, :seed => 1
		Team.create :name => 'LIU/JMU', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/liu-jmu.png', :id => 50, :seed => 16
		Team.create :name => 'NC State', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/nc_state.png', :id => 51, :seed => 8
		Team.create :name => 'Temple', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/temple.png', :id => 52, :seed => 9
		Team.create :name => 'UNLV', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/unlv.png', :id => 53, :seed => 5
		Team.create :name => 'California', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/california.png', :id => 54, :seed => 12
		Team.create :name => 'Syracuse', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/syracuse.png', :id => 55, :seed => 4
		Team.create :name => 'Montana', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/montana.png', :id => 56, :seed => 13
		Team.create :name => 'Butler', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/butler.png', :id => 57, :seed => 6
		Team.create :name => 'Bucknell', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/bucknell.png', :id => 58, :seed => 11
		Team.create :name => 'Marquette', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/marquette.png', :id => 59, :seed => 3
		Team.create :name => 'Davidson', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/davidson.png', :id => 60, :seed => 14
		Team.create :name => 'Illinois', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/illinois.png', :id => 61, :seed => 7
		Team.create :name => 'Colorado', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/colorado.png', :id => 62, :seed => 10
		Team.create :name => 'Miami', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/miami.png', :id => 63, :seed => 2
		Team.create :name => 'PAC', :image => 'http://d21zi4m0jgpff8.cloudfront.net/teams/pacific.png', :id => 64, :seed => 15


  end

  def down
  	  	Team.destroy_all
  	 Team.create :name => 'Louisville', :image => '/assets/louisville_logo.jpg', :id => 1
		Team.create :name => 'Alabama State', :image => '/assets/alabamastate_logo.jpg', :id => 2
		Team.create :name => 'Ohio State', :image => '/assets/ohiostate_logo.jpg', :id => 3
		Team.create :name => 'Siena', :image => '/assets/siena_logo.jpg', :id => 4
		Team.create :name => 'Utah', :image => '/assets/utah_logo.jpg', :id => 5
		Team.create :name => 'Arizona', :image => '/assets/arizona_logo.jpg', :id => 6
		Team.create :name => 'Wake Forest', :image => '/assets/wakeforest_logo.jpg', :id => 7
		Team.create :name => 'Cleveland State', :image => '/assets/clevelandstate_logo.jpg', :id => 8
		Team.create :name => 'West Virginia', :image => '/assets/westvirginia_logo.jpg', :id => 9
		Team.create :name => 'Dayton', :image => '/assets/dayton_logo.jpg', :id => 10
		Team.create :name => 'Kansas', :image => '/assets/kansas_logo.jpg', :id => 11
		Team.create :name => 'North Dakota State', :image => '/assets/northdakota_logo.jpg', :id => 12
		Team.create :name => 'Boston College', :image => '/assets/bostoncollege_logo.jpg', :id => 13
		Team.create :name => 'USC', :image => '/assets/USC_logo.jpg', :id => 14
		Team.create :name => 'Michigan State', :image => '/assets/michiganstate_logo.jpg', :id => 15
		Team.create :name => 'Robert Morris', :image => '/assets/robertmorris_logo.jpg', :id => 16
		Team.create :name => 'Connecticut', :image => '/assets/connecticut_logo.jpg', :id => 17
		Team.create :name => 'Chattanooga', :image => '/assets/chatanooga_logo.jpg', :id => 18
		Team.create :name => 'BYU', :image => '/assets/BYU_logo.jpg', :id => 19
		Team.create :name => 'Texas A&M', :image => '/assets/texasAM_logo.jpg', :id => 20
		Team.create :name => 'Purdue', :image => '/assets/purdue_logo.jpg', :id => 21
		Team.create :name => 'Northern Iowa', :image => '/assets/northerniowa_logo.png', :id => 22
		Team.create :name => 'Washington', :image => '/assets/washington_logo.jpg', :id => 23
		Team.create :name => 'Mississippi State', :image => '/assets/mississippistate_logo.jpg', :id => 24
		Team.create :name => 'Marquette', :image => '/assets/marquette_logo.jpg', :id => 25
		Team.create :name => 'Utah State', :image => '/assets/utahstate_logo.jpg', :id => 26
		Team.create :name => 'Missouri', :image => '/assets/missouri_logo.jpg', :id => 27
		Team.create :name => 'Cornell', :image => '/assets/cornell_logo.jpg', :id => 28
		Team.create :name => 'California', :image => '/assets/california_logo.jpg', :id => 29
		Team.create :name => 'Maryland', :image => '/assets/maryland_logo.jpg', :id => 30
		Team.create :name => 'Memphis', :image => '/assets/memphis_logo.jpg', :id => 31
		Team.create :name => 'Cal State Northridge', :image => '/assets/calsttnorthridge_logo.png', :id => 32
		Team.create :name => 'Pittsburgh', :image => '/assets/pittsburgh_logo.jpg', :id => 33
		Team.create :name => 'East Tennessee State', :image => '/assets/easttennesseest_logo.jpg', :id => 34
		Team.create :name => 'Oklahoma State', :image => '/assets/oklahomast_logo.jpg', :id => 35
		Team.create :name => 'Tennessee', :image => '/assets/tennessee_logo.jpg', :id => 36
		Team.create :name => 'Florida State', :image => '/assets/floridast_logo.jpg', :id => 37
		Team.create :name => 'Wisconsin', :image => '/assets/wisconsin_logo.jpg', :id => 38
		Team.create :name => 'Xavier', :image => '/assets/xavier_logo.jpg', :id => 39
		Team.create :name => 'Portland State', :image => '/assets/portlandst_logo.jpg', :id => 40
		Team.create :name => 'UCLA', :image => '/assets/UCLA_logo.jpg', :id => 41
		Team.create :name => 'VCU', :image => '/assets/VCU_logo.jpg', :id => 42
		Team.create :name => 'Villanova', :image => '/assets/villanova_logo.jpg', :id => 43
		Team.create :name => 'American', :image => '/assets/american_logo.jpg', :id => 44
		Team.create :name => 'Texas', :image => '/assets/texas_logo.jpg', :id => 45
		Team.create :name => 'Minnesota', :image => '/assets/minnesota_logo.jpg', :id => 46
		Team.create :name => 'Duke', :image => '/assets/duke_logo.jpg', :id => 47
		Team.create :name => 'Binghamton', :image => '/assets/binghamton_logo.jpg', :id => 48
		Team.create :name => 'North Carolina', :image => '/assets/northcarolina_logo.jpg', :id => 49
		Team.create :name => 'Radford', :image => '/assets/radford_logo.png', :id => 50
		Team.create :name => 'LSU', :image => '/assets/LSU_logo.jpg', :id => 51
		Team.create :name => 'Butler', :image => '/assets/butler_logo.jpg', :id => 52
		Team.create :name => 'Illinois', :image => '/assets/illinois_logo.jpg', :id => 53
		Team.create :name => 'West Kentucky', :image => '/assets/westkentucky_logo.jpg', :id => 54
		Team.create :name => 'Gonzaga', :image => '/assets/gonzaga_logo.jpg', :id => 55
		Team.create :name => 'Akron', :image => '/assets/akron_logo.jpg', :id => 56
		Team.create :name => 'Arizona State', :image => '/assets/arizonastate_logo.jpg', :id => 57
		Team.create :name => 'Temple', :image => '/assets/temple_logo.jpg', :id => 58
		Team.create :name => 'Syracuse', :image => '/assets/syracuse_logo.png', :id => 59
		Team.create :name => 'Stephen Faustin', :image => '/assets/stephenfaustin_logo.jpg', :id => 60
		Team.create :name => 'Clemson', :image => '/assets/clemson_logo.jpg', :id => 61
		Team.create :name => 'Michigan', :image => '/assets/michigan_logo.jpg', :id => 62
		Team.create :name => 'Oklahoma', :image => '/assets/oklahoma_logo.jpg', :id => 63
		Team.create :name => 'Morgan State', :image => '/assets/morganst_logo.jpg', :id => 64
  	
  end
end
