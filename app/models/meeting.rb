class Meeting
  include Mongoid::Document
  include Mongoid::Timestamps

	field :time, :type => DateTime
	field :location, :type => String
	field :meeting_minuts, :type => String

  	has_one :creator, class_name: 'User', inverse_of: :created_meetings
  	has_many :invitees, class_name: 'User', inverse_of: :meetings_invited_to
  	has_one :request
end
