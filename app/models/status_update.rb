class StatusUpdate < ApplicationRecord
  belongs_to :user

  validates :title, :content, presence: true
  validates :title, length: { minimum: 2 }

  def self.reverse_chron_order
    order(created_at: :desc)
  end

  def self.alphabetical_by_title
    order(title: :asc)
  end

end
