
# == Schema Information
#
# Table name: invitations
#
#  id              :integer          not null, primary key
#  from            :string
#  description     :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  user_id         :integer
#  travel_event_id :integer
#




require 'test_helper'

class InvitationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
