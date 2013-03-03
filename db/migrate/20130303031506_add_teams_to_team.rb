class AddTeamsToTeam < ActiveRecord::Migration
  def up
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
	Team.create :name => 'North Dakota State', :image => '/assets/ndstate_logo.jpg', :id => 12
	Team.create :name => 'Boston College', :image => '/assets/bostoncollege_logo.jpg', :id => 13
	Team.create :name => 'USC', :image => '/assets/USC_logo.jpg', :id => 14
	Team.create :name => 'Michigan State', :image => '/assets/michiganstate_logo.jpg', :id => 15
	Team.create :name => 'Robert Morris', :image => '/assets/robertmorris_logo.jpg', :id => 16
	Team.create :name => 'Connecticut', :image => '/assets/connecticut_logo.jpg', :id => 17
	Team.create :name => 'Chattanooga', :image => '/assets/chattanooga_logo.jpg', :id => 18
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
	Team.create :name => 'Cal State Northridge', :image => '/assets/calstnorthridge_logo.jpg', :id => 32
	Team.create :name => 'Pittsburgh', :image => '/assets/pittsburgh_logo.jpg', :id => 33
	Team.create :name => 'East Tennessee State', :image => '/assets/easttenneseest_logo.jpg', :id => 34
	Team.create :name => 'Oklahoma State', :image => '/assets/oklahomast_logo.jpg', :id => 35
	Team.create :name => 'Tennessee', :image => '/assets/tennessee_logo.jpg', :id => 36
	Team.create :name => 'Florida State', :image => '/assets/floridast_logo.jpg', :id => 37
	Team.create :name => 'Wisconsin', :image => '/assets/winsconsin_logo.jpg', :id => 38
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
	Team.create :name => 'Radford', :image => '/assets/radford_logo.jpg', :id => 50
	Team.create :name => 'LSU', :image => '/assets/LSU_logo.jpg', :id => 51
	Team.create :name => 'Butler', :image => '/assets/butler_logo.jpg', :id => 52
	Team.create :name => 'Illinois', :image => '/assets/illinois_logo.jpg', :id => 53
	Team.create :name => 'West Kentucky', :image => '/assets/westkentucky_logo.jpg', :id => 54
	Team.create :name => 'Gonzaga', :image => '/assets/gonzaga_logo.jpg', :id => 55
	Team.create :name => 'Akron', :image => '/assets/akron_logo.jpg', :id => 56
	Team.create :name => 'Arizona State', :image => '/assets/arizonastate_logo.jpg', :id => 57
	Team.create :name => 'Temple', :image => '/assets/temple_logo.jpg', :id => 58
	Team.create :name => 'Syracuse', :image => '/assets/syracuse_logo.jpg', :id => 59
	Team.create :name => 'Stephen Faustin', :image => '/assets/stephenfaustin_logo.jpg', :id => 60
	Team.create :name => 'Clemson', :image => '/assets/clemson_logo.jpg', :id => 61
	Team.create :name => 'Michigan', :image => '/assets/michigan_logo.jpg', :id => 62
	Team.create :name => 'Oklahoma', :image => '/assets/oklahoma_logo.jpg', :id => 63
	Team.create :name => 'Morgan State', :image => '/assets/morganst_logo.jpg', :id => 64
  end

  def down
  	Team.destroy_all
  end
end
