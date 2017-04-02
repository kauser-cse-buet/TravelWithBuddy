# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  address    :string
#  phone      :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ApplicationRecord
end
