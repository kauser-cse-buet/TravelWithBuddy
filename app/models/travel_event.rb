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








class TravelEvent < ApplicationRecord
	
	filterrific :available_filters => %w[
                search_query
               ]
			   
	self.per_page = 10
	  
	belongs_to :travel_destination, :foreign_key => 'travel_destination_id'
	has_many :reviews, :dependent => :destroy
	has_many :posts, :dependent => :destroy
	has_many :attendees, :dependent => :destroy
	
	scope :start_gte, lambda { |reference_dt|
		where('travel_events.start >= ?', reference_dt)
	}
	
	scope :start_lt, lambda { |reference_dt|
		where('travel_events.start < ?', reference_dt)
	}
	  
	scope :search_query, lambda { |query|
	  
	  # Matches using LIKE, automatically appends '%' to each term.
	  # LIKE is case INsensitive with MySQL, however it is case
	  # sensitive with PostGreSQL. To make it work in both worlds,
	  # we downcase everything.
	  return nil  if query.blank?

	  # condition query, parse into individual keywords
	  terms = query.downcase.split(/\s+/)
	  #terms = query.downcase
	  
	  # replace "*" with "%" for wildcard searches,
	  # append '%', remove duplicate '%'s
	  terms = terms.map { |e|
		(e.gsub('*', '%') + '%').gsub(/%+/, '%')
	  }
	  # configure number of OR conditions for provision
	  # of interpolation arguments. Adjust this if you
	  # change the number of OR conditions.
	  num_or_conds = 3
	  
	  #Add the travel_destination columns onto the travel_event.
	  #joins("INNER JOIN travel_destinations ON travel_destinations.id = travel_events.travel_destination_id")
	  
	  #Filter rows where any of the columns 
	  where(
		terms.map { |term|
		  "LOWER(travel_events.name) LIKE ? OR LOWER(travel_events.description) LIKE ? OR LOWER(address) LIKE ?"
		}.join(' OR '),
		*terms.map { |e| [e] * num_or_conds }.flatten
	  ).joins(:travel_destination).references(:travel_destinations)
	}
	
	scope :created_at_gte, lambda { |reference_time|
	   where('travel_events.created_at >= ?', reference_time)
	}

	mount_uploader :image, ImageUploader



	validates :name, length: {maximum: 50}, presence: true
	validates :description, length: {maximum: 500}, presence: true
	validates :max_attendance, presence: true,inclusion: {in: 1..200}
	validates :price, numericality: {greater_than_or_equal_to: 0}, presence: true
end
