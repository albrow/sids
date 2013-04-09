class Game < ActiveRecord::Base
  
  attr_accessible :team1, :team1_score, :team2, :team2_score, :round_id, :region, :match_id
  attr_accessible :team1_id, :team2_id
  belongs_to :team1, :foreign_key => "team1_id", :class_name => "Team"
  belongs_to :team2, :foreign_key => "team2_id", :class_name => "Team"

  before_save :set_region

  scope :region, lambda { |r| where(:region => r) }
  scope :match, lambda { |m| where(:match_id => m) }
  scope :round, lambda { |r| where(:round_id => r) }

  def set_region
    require "regions" # lib/regions.rb
    if defined?(match_id)
      self.region = Regions::RegionsHelper.get_region match_id
    end
  end

  def winner
    if team1_score.nil? || team2_score.nil?
      nil
    elsif team1_score > team2_score
      team1
    else
      team2
    end
  end

  def set_region!
    self.set_region
    self.save
  end

end
