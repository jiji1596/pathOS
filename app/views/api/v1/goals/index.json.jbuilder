json.array! @goals do |goal|
  json.extract! goal, :id, :identity_statement, :why_it_matters
end


# curl -s http://localhost:3000/api/v1/goals | jq
