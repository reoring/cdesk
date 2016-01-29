json.array!(@message_queues) do |message_queue|
  json.extract! message_queue, :id, :name
  json.url message_queue_url(message_queue, format: :json)
end
