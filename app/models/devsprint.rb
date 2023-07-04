class Devsprint < ApplicationRecord
  def self.getDevRate(id)
    dev_rate = Devsprint.select('devsprints.id as id', 'sprints.num_sprint', :operation_rate, :productivity_rate, :num_mension)
      .joins('LEFT JOIN developers ON developers.id = devsprints.dev_id')
      .joins('LEFT JOIN sprints ON sprints.id = devsprints.sprint_id')
      .where('developers.id = :id', id: id)
  end
end
