$(document).ready(function() {
  $('.slot').live('mouseover', function(){
    var name = $($(this).children()[0]).attr('alt');
    var item = $("div[name='"+ addslashes(name) +"']")[0];
    var div = $('#itemdiv')
    $(this).addClass('highlighted');
    div.html($(item).html());
    div.show();
  });
  $('.slot').live('mouseout', function(){
    $(this).removeClass('highlighted');
    //$('#itemdiv').hide();
  });
  $('.bag').click(function(){
    var id = $(this)[0].id.split('_')[1];
    var bags = $('#vb_' + id);
    if (bags.length == 0) {
      return;
    }
    bag = $(bags[0]).html();
    $('#bag_area').html(bag);
  });
});
