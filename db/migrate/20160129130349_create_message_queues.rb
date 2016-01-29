class CreateMessageQueues < ActiveRecord::Migration
  def change
    create_table :message_queues do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
