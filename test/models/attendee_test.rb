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







require 'test_helper'

class AttendeeTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
