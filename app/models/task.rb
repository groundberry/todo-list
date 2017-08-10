class Task < ApplicationRecord
  validates :task, presence: true,
                    length: { minimum: 3 }
end
