var init_friend_lookup;

init_friend_lookup = function(){
  $('#friend-lookup-form').on('ajax:before', function(event, data, status){
    show_spinner();
  });
  
  $('#friend-lookup-form').on('ajax:after', function(event, data, status){
    hide_spinner();
  });
  
  $('#friend-lookup-form').on('ajax:success', function(event, data, status){
    $('#friend-lookup').replaceWith(data);
    // we add init_friend_lookup again since the listeners are gone once you replaceWith(Data) so to do that you need to call it again
    init_friend_lookup();
  });  
  
  $('#friend-lookup-form').on('ajax:error', function(event, xhr, status, error){
    hide_spinner();
    $('#friend-lookup-results').replaceWith(' ');
    $('#friend-lookup-errors').replaceWith('Person was not found.');
  })
}


$(document).ready(function(){
  init_friend_lookup();
})