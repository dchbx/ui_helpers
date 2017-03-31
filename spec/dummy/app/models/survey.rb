class Survey < ActiveRecord::Base
  serialize :workflow, JSON
  serialize :results, JSON
end
