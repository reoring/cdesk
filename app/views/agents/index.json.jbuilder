json.array!(@agents) do |agent|
  json.extract! agent, :id, :name, :email
  json.url agent_url(agent, format: :json)
end
