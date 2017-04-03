# == Schema Information
#
# Table name: travel_events
#
#  id                    :integer          not null, primary key
#  name                  :string
#  description           :string
#  max_attendance        :integer
#  price                 :decimal(, )
#  start                 :datetime
#  duration              :time
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  travel_destination_id :integer
#  user_id               :integer
#


require 'test_helper'

class TravelEventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
