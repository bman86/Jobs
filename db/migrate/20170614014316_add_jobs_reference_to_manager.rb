class AddJobsReferenceToManager < ActiveRecord::Migration[5.1]
  def change
    add_reference :managers, :jobs, foreign_key: true  
  end
end
