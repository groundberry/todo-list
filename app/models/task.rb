class Task < ApplicationRecord
  validates :task, presence: true,
                    length: { minimum: 3 }

  scope :completed, -> {
    where(:completed => true)
  }

  scope :todo, -> {
    where(:completed => false)
  }
end
