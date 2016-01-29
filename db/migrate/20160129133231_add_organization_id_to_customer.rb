class AddOrganizationIdToCustomer < ActiveRecord::Migration
  def change
    add_column :customers, :organization_id, :integer
  end
end
