class Bug < ApplicationRecord
    enum status: { new_ticket: 0, started: 1, completed: 2, resolved: 3}
    enum bugtype: {feature: 0, bug: 1}

    belongs_to :project
    belongs_to :creator, class_name: "User"
    belongs_to :developer, class_name: "User"

    validates :title, presence: true
    validates :title, uniqueness: true
    validates :status, presence: true
    validates :bugtype, presence: true
    
end
