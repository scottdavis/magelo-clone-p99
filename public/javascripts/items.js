function find_item(item, slot){
  $.get('/items/search.json?name=' + item, function(data){
    var div = $('#' + slot + '_data');
    var nodes = []
    $.each(data, function(i){
      var name = data[i].item.name
      var id = data[i].item.id
      var content = name;
      if (data[i].item.magic == 1) {
        content = content + ' ' + '(magic)';
      }
      nodes.push('<p class="clickable_item_data" onclick="add_to_field(' + id + ',\'' + addslashes(name) + '\',\'' + slot + '\')">' + content + '</p>');
    });
    div.html(nodes.join("\n"))
    div.show();
  });
}

function add_to_field(id, name, slot) {
  var div = $('#' + slot + '_data');
  var text_field = $('#slots_' + slot + '_fake');
  var hidden = $('#slots_' + slot);
  hidden.val(id);
  text_field.val(name)
  div.html('');
  div.hide();
}