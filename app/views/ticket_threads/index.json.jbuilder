json.array!(@ticket_threads) do |ticket_thread|
  json.extract! ticket_thread, :id, :name
  json.url ticket_thread_url(ticket_thread, format: :json)
end
