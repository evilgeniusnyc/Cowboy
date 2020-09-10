class Project < ApplicationRecord
    has_many :assignments
    has_many :project_managers, through: :assignments
end
