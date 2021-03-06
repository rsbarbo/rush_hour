class OsAndBrowser < ActiveRecord::Base
  validates :browser, presence: true
  validates :operating_system, presence: true
  has_many :payload_requests
  validates :browser, uniqueness: {scope: :operating_system}

end
