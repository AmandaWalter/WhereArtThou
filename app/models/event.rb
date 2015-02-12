class Event < ActiveRecord::Base
  include Searchable

	belongs_to :venue
	has_many :artists

  extend FriendlyId
  friendly_id :name, use: [:slugged, :history, :finders]

  validates :name, :address, :city, :state, presence: true

  searchable_columns :name, :city, :state, :start_date, :description
end
# check tests for searchable and friendlyid