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
#  image                 :string
#



	#validates :name, length: {maximum: 50}, uniqueness: true, presence: true
	#validates :description, length: {maximum: 500}, presence: true
	#validates :max_attendance, presence: true,inclusion: {in: 1..200}
	#validates :price, numericality: {greater_than_or_equal_to: 0}, presence: true
	#validates :start, presence: true
	#validates :duration, presence: true



require 'test_helper'

class TravelEventTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
=begin
  test "travel event must have a name!" do
  	@travel_event = TravelEvent.new
  	@travel_event.description = 'test test event'
  	@travel_event.max_attendance = 10
  	@travel_event.price = 20
  	@travel_event.travel_destination_id = TravelDestination.first().id
  	@travel_event.user_id = User.first().id
  	assert_not travel_event.valid?
  	
  	#assert_not new_build.valid?
  end
=end

end
