class GuestbookEntry < ApplicationRecord
  validates :message, presence: true, length: { maximum: 500 }
  validates :name, length: { maximum: 60 }, allow_blank: true

  scope :newest_first, -> { order(created_at: :desc, id: :desc) }
end
