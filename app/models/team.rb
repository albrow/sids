class Team < ActiveRecord::Base
  attr_accessible :image, :name, :id, :team
  belongs_to :prediction
end
