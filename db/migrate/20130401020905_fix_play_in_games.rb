class FixPlayInGames < ActiveRecord::Migration
	def up
		Team.find(2).update_attributes :name => 'NCAT', :image => 'https://d21zi4m0jgpff8.cloudfront.net/teams/n_carolina_at.png'
		Team.find(10).update_attributes :name => "Saint Mary's", :image => 'https://d21zi4m0jgpff8.cloudfront.net/teams/saint_marys.png'
		Team.find(24).update_attributes :name => 'La Salle', :image => 'https://d21zi4m0jgpff8.cloudfront.net/teams/la_salle.png'
		Team.find(50).update_attributes :name => 'James Madison', :image => 'https://d21zi4m0jgpff8.cloudfront.net/teams/james_madison.png'
	end

	def down
		Team.find(2).update_attributes :name => 'NCAT/LIB', :image => 'https://d21zi4m0jgpff8.cloudfront.net/teams/ncat-lib.png'
		Team.find(10).update_attributes :name => 'MTU/SMC', :image => 'https://d21zi4m0jgpff8.cloudfront.net/teams/mtu-smc.png'
		Team.find(24).update_attributes :name => 'BSU/LAS', :image => 'https://d21zi4m0jgpff8.cloudfront.net/teams/bsu-las.png'
		Team.find(50).update_attributes :name => 'LIU/JMU', :image => 'https://d21zi4m0jgpff8.cloudfront.net/teams/liu-jmu.png'
	end
end
