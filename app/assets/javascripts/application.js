// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require turbolinks
//= require semantic_ui/semantic_ui
//= require_tree .


function load () {

  $( "#filters" ).fadeOut( "slow", function () {
    $( "#progress").fadeIn( "slow", function () {
      showProgressBar()
    })
  })
}

function home () {
  $( "#results" ).fadeOut( "slow", function () {
    $( "#filters").fadeIn( "slow", function () {
    })
  })
}

function showProgressBar () {
  var $progress = $('.ui.progress'),
      $button = $(this),
      updateEvent

  clearInterval(window.fakeProgress)
  $progress.progress('reset')
  window.fakeProgress = setInterval(function() {
    $progress.progress('increment')
    if($progress.progress('is complete')) {
      $( "#progress" ).fadeOut( "slow", function () {
        $( "#results" ).fadeIn("slow", function () {})
      })
      clearInterval(window.fakeProgress)
    }
  }, 10)
}


$('.ui.progress')
  .progress({
    duration : 200,
    total    : 200,
    text     : {
      active: '{value} of {total} done'
    }
  })
