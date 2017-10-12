$("#year_id").empty()
  .append('<option value="">Select a year</option><%= escape_javascript(options_from_collection_for_select(@years, :academic_year_start, :school_year)) %>')
