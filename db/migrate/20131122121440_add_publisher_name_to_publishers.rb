class AddPublisherNameToPublishers < ActiveRecord::Migration
  def change
    add_column :publishers, :name, :string
  end
end
