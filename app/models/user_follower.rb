# == Schema Information
#
# Table name: user_followers
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  follower_id :integer
#  user_id     :integer
#
class UserFollower < ApplicationRecord
end
