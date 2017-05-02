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








class Invitation < ApplicationRecord
end
