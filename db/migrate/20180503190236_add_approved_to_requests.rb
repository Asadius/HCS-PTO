class AddApprovedToRequests < ActiveRecord::Migration[5.1]
  def change
    add_column :requests, :approved, :boolean, default: false
  end
end
