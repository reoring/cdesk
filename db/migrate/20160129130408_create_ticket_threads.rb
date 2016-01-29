class CreateTicketThreads < ActiveRecord::Migration
  def change
    create_table :ticket_threads do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
