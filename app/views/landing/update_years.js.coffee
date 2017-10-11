$("#year_id").empty()
  .append('<%= escape_javascript(options_from_collection_for_select(@years, :academic_year_start, :school_year)) %>')
