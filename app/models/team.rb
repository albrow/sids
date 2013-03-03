class Team < ActiveRecord::Base
  attr_accessible :image, :name
  belongs_to :prediction
end
