json.array!(@fundings) do |funding|
  json.extract! funding, :id, :amount, :project_id, :user_id
  json.url funding_url(funding, format: :json)
end
