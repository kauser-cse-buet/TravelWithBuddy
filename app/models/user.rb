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
#  admin_id   :integer
#  image      :string
#






class User < ApplicationRecord
	belongs_to :admin
	has_many :reviews, :dependent => :destroy
	has_many :posts, :dependent => :destroy
	mount_uploader :image, ImageUploader
end
