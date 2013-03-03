class AddTeamsToTeam < ActiveRecord::Migration
  def up
  	Team.create :name => 'Louisville', :image => '/images/louisville_logo.jpg', :id => 1
	Team.create :name => 'Alabama State', :image => '/images/alabamastate_logo.jpg', :id => 2
	Team.create :name => 'Ohio State', :image => '/images/ohiostate_logo.jpg', :id => 3
	Team.create :name => 'Siena', :image => '/images/siena_logo.jpg', :id => 4
	Team.create :name => 'Utah', :image => '/images/utah_logo.jpg', :id => 5
	Team.create :name => 'Arizona', :image => '/images/arizona_logo.jpg', :id => 6
	Team.create :name => 'Wake Forest', :image => '/images/wakeforest_logo.jpg', :id => 7
	Team.create :name => 'Cleveland State', :image => '/images/clevelandstate_logo.jpg', :id => 8
	Team.create :name => 'West Virginia', :image => '/images/westvirginia_logo.jpg', :id => 9
	Team.create :name => 'Dayton', :image => '/images/dayton_logo.jpg', :id => 10
	Team.create :name => 'Kansas', :image => '/images/kansas_logo.jpg', :id => 11
	Team.create :name => 'North Dakota State', :image => '/images/ndstate_logo.jpg', :id => 12
	Team.create :name => 'Boston College', :image => '/images/bostoncollege_logo.jpg', :id => 13
	Team.create :name => 'USC', :image => '/images/USC_logo.jpg', :id => 14
	Team.create :name => 'Michigan State', :image => '/images/michiganstate_logo.jpg', :id => 15
	Team.create :name => 'Robert Morris', :image => '/images/robertmorris_logo.jpg', :id => 16
	Team.create :name => 'Connecticut', :image => '/images/connecticut_logo.jpg', :id => 17
	Team.create :name => 'Chattanooga', :image => '/images/chattanooga_logo.jpg', :id => 18
	Team.create :name => 'BYU', :image => '/images/BYU_logo.jpg', :id => 19
	Team.create :name => 'Texas A&M', :image => '/images/texasAM_logo.jpg', :id => 20
	Team.create :name => 'Purdue', :image => '/images/purdue_logo.jpg', :id => 21
	Team.create :name => 'Northern Iowa', :image => '/images/northerniowa_logo.png', :id => 22
	Team.create :name => 'Washington', :image => '/images/washington_logo.jpg', :id => 23
	Team.create :name => 'Mississippi State', :image => '/images/mississippistate_logo.jpg', :id => 24
	Team.create :name => 'Marquette', :image => '/images/marquette_logo.jpg', :id => 25
	Team.create :name => 'Utah State', :image => '/images/utahstate_logo.jpg', :id => 26
	Team.create :name => 'Missouri', :image => '/images/missouri_logo.jpg', :id => 27
	Team.create :name => 'Cornell', :image => '/images/cornell_logo.jpg', :id => 28
	Team.create :name => 'California', :image => '/images/california_logo.jpg', :id => 29
	Team.create :name => 'Maryland', :image => '/images/maryland_logo.jpg', :id => 30
	Team.create :name => 'Memphis', :image => '/images/memphis_logo.jpg', :id => 31
	Team.create :name => 'Cal State Northridge', :image => '/images/calstnorthridge_logo.jpg', :id => 32
	Team.create :name => 'Pittsburgh', :image => '/images/pittsburgh_logo.jpg', :id => 33
	Team.create :name => 'East Tennessee State', :image => '/images/easttenneseest_logo.jpg', :id => 34
	Team.create :name => 'Oklahoma State', :image => '/images/oklahomast_logo.jpg', :id => 35
	Team.create :name => 'Tennessee', :image => '/images/tennessee_logo.jpg', :id => 36
	Team.create :name => 'Florida State', :image => '/images/floridast_logo.jpg', :id => 37
	Team.create :name => 'Wisconsin', :image => '/images/winsconsin_logo.jpg', :id => 38
	Team.create :name => 'Xavier', :image => '/images/xavier_logo.jpg'
	Team.create :name => 'Portland State', :image => '/images/portlandst_logo.jpg'
	Team.create :name => 'UCLA', :image => '/images/UCLA_logo.jpg'
	Team.create :name => 'VCU', :image => '/images/VCU_logo.jpg   '
	Team.create :name => 'Villanova', :image => '/images/villanova_logo.jpg'
	Team.create :name => 'American', :image => '/images/american_logo.jpg'
	Team.create :name => 'Texas', :image => '/images/texas_logo.jpg'
	Team.create :name => 'Minnesota', :image => '/images/minnesota_logo.jpg'
	Team.create :name => 'Duke', :image => '/images/duke_logo.jpg'
	Team.create :name => 'Binghamton', :image => '/images/binghamton_logo.jpg'
	Team.create :name => 'North Carolina', :image => '/images/northcarolina_logo.jpg'
	Team.create :name => 'Radford', :image => '/images/radford_logo.jpg'
	Team.create :name => 'LSU', :image => '/images/LSU_logo.jpg'
	Team.create :name => 'Butler', :image => '/images/butler_logo.jpg'
	Team.create :name => 'Illinois', :image => '/images/illinois_logo.jpg'
	Team.create :name => 'West Kentucky', :image => '/images/westkentucky_logo.jpg'
	Team.create :name => 'Gonzaga', :image => '/images/gonzaga_logo.jpg'
	Team.create :name => 'Akron', :image => '/images/akron_logo.jpg'
	Team.create :name => 'Arizona State', :image => '/images/arizonastate_logo.jpg'
	Team.create :name => 'Temple', :image => '/images/temple_logo.jpg'
	Team.create :name => 'Syracuse', :image => '/images/syracuse_logo.jpg'
	Team.create :name => 'Stephen Faustin', :image => '/images/stephenfaustin_logo.jpg'
	Team.create :name => 'Clemson', :image => '/images/clemson_logo.jpg'
	Team.create :name => 'Michigan', :image => '/images/michigan_logo.jpg'
	Team.create :name => 'Oklahoma', :image => '/images/oklahoma_logo.jpg'
	Team.create :name => 'Morgan State', :image => '/images/morganst_logo.jpg'
  end

  def down
  	Team.destroy_all
  end
end
