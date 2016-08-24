class RequestType < ActiveRecord::Base
  validates :verb, presence: true
  has_many :payload_requests
  validates :verb, uniqueness: true

  def self.most_frequent_type
    RequestType.group(:verb).count.max_by { |key, value| value }.first
  end

end
