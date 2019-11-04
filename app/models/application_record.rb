class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  # parent for all models
end
