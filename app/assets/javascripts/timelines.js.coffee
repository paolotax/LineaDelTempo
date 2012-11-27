# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

load_timeline = (data) ->
  timeline = new VMM.Timeline();
  timeline.init(data);

jQuery ->

  $.ajax
    type: "get"
    url: "/timelines/1.json"
    success: (result) -> 
      data = result
      console.log(data)
    callback:  load_timeline data
