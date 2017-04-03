# == Schema Information
#
# Table name: reviews
#
#  id              :integer          not null, primary key
#  rating          :integer
#  description     :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  travel_event_id :integer
#  user_id         :integer
#

class Review < ApplicationRecord
end
