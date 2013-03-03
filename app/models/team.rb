class Team < ActiveRecord::Base
  attr_accessible :image, :name, :id
  belongs_to :prediction
end
