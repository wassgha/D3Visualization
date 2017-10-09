$("#school_id").empty()
  .append("<%= escape_javascript(options_from_collection_for_select(@schools, :state_lea_id, :school_name)) %>")
