$("#year_id").empty()
$("#school_id").empty()
  .append('<option value="">Select a school</option><%= escape_javascript(options_from_collection_for_select(@schools, :state_lea_id, :school_name)) %>')
