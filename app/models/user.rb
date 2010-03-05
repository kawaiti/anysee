class User < ActiveRecord::Base
  default_scope :conditions => ["deleted_at IS NULL"]
  acts_as_authentic

  # リレーションの設定
  has_many :whispers
  has_many :followers_list,
           :foreign_key => "following_id",
           :class_name => "Follow",
           :dependent => :destroy
  has_many :followings_list,
           :foreign_key => "follower_id",
           :class_name => "Follow",
           :dependent => :destroy

  has_many :followers, :through => :followers_list, :source => :follower_user
  has_many :followings, :through => :followings_list, :source => :following_user

  def self.find_with_deleted *args
    self.with_exclusive_scope { find(*args) }
  end

  def destroy
    update_attribute(:deleted_at, Time.now)
  end

  def recover
    update_attribute(:deleted_at, nil)
  end

  def add_following(following_id)
    follow = follower_list.build
  end
end
