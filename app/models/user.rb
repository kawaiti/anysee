class User < ActiveRecord::Base
  acts_as_authentic

  # リレーションの設定
  has_many :whispers

end
