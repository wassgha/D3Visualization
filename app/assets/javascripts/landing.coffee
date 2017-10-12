# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $(document).on 'change', '#county_id', (evt) ->
    $.ajax 'update_schools',
      type: 'GET'
      dataType: 'script'
      data: {
        county: $("#county_id option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic school select OK!")
  $(document).on 'change', '#school_id', (evt) ->
    $.ajax 'update_years',
      type: 'GET'
      dataType: 'script'
      data: {
        school: $("#school_id option:selected").val()
      }
      error: (jqXHR, textStatus, errorThrown) ->
        console.log("AJAX Error: #{textStatus}")
      success: (data, textStatus, jqXHR) ->
        console.log("Dynamic year select OK!")
