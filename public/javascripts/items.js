function find_item(item, slot){
  $.get('/items/search.json?name=' + item, function(data){
    var div = $('#' + slot + '_data');
    var nodes = []
    $.each(data, function(i){
      var name = data[i].item.name
      nodes.push('<p class="clickable_item_data" onclick="add_to_field(\'' + name + '\',\'' + slot + '\')">' + name + '</p>');
    });
    div.html(nodes.join("\n"))
    div.show();
  });
}

function add_to_field(name, slot) {
  var div = $('#' + slot + '_data');
  var text_field = $('#slots_' + slot);
  text_field.val(name);
  div.html('');
  div.hide();
}