class PlayerGameProfile < ApplicationRecord
  belongs_to :game
  belongs_to :player_profile

  validates :pgp_reputation, presence: true
  validates :pgp_nickname, presence: true
  validates :pgp_rate, presence: true

  #Search for Player Game Profiles by their nickname equal to
  #nickname param
  #param nickname may be a string
  def self.getByNickname(nickname)
    PlayerGameProfile.where(pgp_nickname: nickname)
  end

  #Search for Player Game Profiles by his/her nickname equal to
  #nickname param, if more than one is found, return the first
  #param nickname may be a string
  def self.getFirstByNickname(nickname)
    PlayerGameProfile.where(pgp_nickname: nickname)[0]
  end

  #Search for Player Game Profiles by their nickname likes
  #nickname param
  #param nickname may be a string
  def self.getByNicknameLike(nickname)
    PlayerGameProfile.where("pgp_nickname like ?", '%' + nickname + '%')
  end

  #Search for PlayerGameProfiles by his/her reputation below
  #reputation param
  #param reputation may be a float
  def self.getByReputationBelow(reputation)
    PlayerGameProfile.where("pgp_reputation < ?", reputation)
  end

  #Search for PlayerGameProfiles by his/her reputation above
  #reputation param
  #param reputation may be a float
  def self.getByReputationAbove(reputation)
    PlayerGameProfile.where("pgp_reputation > ?", reputation)
  end

  #Search for PlayerGameProfiles by his/her reputation equal
  #reputation param
  #param reputation may be a float
  def self.getByReputationEqual(reputation)
    PlayerGameProfile.where("pgp_reputation = ?", reputation)
  end

  #Search for PlayerGameProfiles by his/her reputation between
  #reputation_low param and reputation_upp param
  #param reputation_low may be a float
  #param reputation_upp may be a float
  def self.getByReputationEqual(reputation_low, reputation_upp)
    PlayerGameProfile.where("pgp_reputation BETWEEN ? AND ?", reputation_low, reputation_upp)
  end

  #Search for PlayerGameProfiles by his/her rate below
  #rate param
  #param rate may be a float
  def self.getByReputationBelow(rate)
    PlayerGameProfile.where("pgp_reputation < ?", rate)
  end

  #Search for PlayerGameProfiles by his/her rate above
  #rate param
  #param rate may be a float
  def self.getByReputationAbove(rate)
    PlayerGameProfile.where("pgp_reputation > ?", rate)
  end

  #Search for PlayerGameProfiles by his/her rate equal
  #rate param
  #param rate may be a float
  def self.getByReputationEqual(rate)
    PlayerGameProfile.where("pgp_reputation = ?", rate)
  end

  #Search for PlayerGameProfiles by his/her rate between
  #rate_low param and rate_upp param
  #param rate_low may be a float
  #param rate_upp may be a float
  def self.getByReputationEqual(rate_low, rate_upp)
    PlayerGameProfile.where("pgp_rate BETWEEN ? AND ?", rate_low, rate_upp)
  end
end
