# == Schema Information
#
# Table name: attendees
#
#  id              :integer          not null, primary key
#  paid            :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#  travel_event_id :integer
#







class Attendee < ApplicationRecord
		belongs_to :travel_event, optional: false
end
