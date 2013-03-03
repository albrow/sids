class Prediction < ActiveRecord::Base
  attr_accessible :bracket_id, :round_id, :team_id
  belongs_to :bracket
  has_one :team
end
