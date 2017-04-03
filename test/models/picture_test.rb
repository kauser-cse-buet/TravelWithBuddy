# == Schema Information
#
# Table name: pictures
#
#  id                    :integer          not null, primary key
#  description           :string
#  image_data            :binary
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#  travel_destination_id :integer
#  review_id             :integer
#  user_id               :integer
#



require 'test_helper'

class PictureTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
