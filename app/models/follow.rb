class Follow < ActiveRecord::Base

  # リレーションの設定
  belongs_to :follower_user, 
             :foreign_key => "follower_id",  
             :class_name => "User"
  belongs_to :following_user,
             :foreign_key => "following_id",
             :class_name => "User"

end
