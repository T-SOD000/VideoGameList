# Return a hash where the keys are the possible types of records and the values are arrays of results.
# Like so:
# {
#   'Game': [{ id: 1 }, { id: 2 }],
#   'Company': [{ id: 1 }, { id: 2 }, { id: 3 }]
# }
@searchable_types.each do |type|
  json.set! type.to_sym do
    results_of_type = @search_results.select { |result| result[:searchable_type] == type }
    json.array! results_of_type, :id, :content, :searchable_type, :searchable_id
  end
end
