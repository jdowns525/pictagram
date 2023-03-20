# == Schema Information
#
# Table name: photos
#
#  id             :integer          not null, primary key
#  caption        :string
#  image          :string
#  location       :string
#  total_comments :string
#  total_likes    :string
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_id        :integer
#
class Photo < ApplicationRecord
end
