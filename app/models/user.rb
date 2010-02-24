class User < ActiveRecord::Base
  default_scope :conditions => ["deleted_at IS NULL"]
  acts_as_authentic

  def self.find_with_deleted *args
    self.with_exclusive_scope { find(*args) }
  end

  def destroy
    update_attribute(:deleted_at, Time.now)
  end

  def recover
    update_attribute(:deleted_at, nil)
  end

end
