$(document).ready(function(){
  function save_menu_tree(tree){
    var new_positions = tree.nestedSortable('toArray');

    if(tree.data("old_positions")!=tree.nestedSortable('serialize')){
      $.ajax({
        url:tree.attr("data-url"),
        type:"put",
        dataType:"html",
        data:$.param({items:new_positions}),
        success:function(){
          tree.data("old_positions",tree.nestedSortable('serialize'))
        }
      })  
    }
  }

  $("ol.menu-items-tree").nestedSortable({
    disableNesting: 'no-nest',
    forcePlaceholderSize: true,
    handle: 'div',
    helper: 'clone',
    items: 'li',
    maxLevels: 5,
    opacity: .6,
    placeholder: 'placeholder',
    revert: 250,
    tabSize: 25,
    tolerance: 'pointer',
    toleranceElement: '> div',
    stop:function(branch,args){
      save_menu_tree($(this));
    }
  })

  $("ol.menu-items-tree").each(function(){
    $(this).data("old_positions",$(this).nestedSortable("serialize"))
  })

  $(".openable-row").click(function(event){
    var that=this
    $(".subrow").hide(0)
    $("#menu_items_"+$(this).attr("data-id")).show(0);
    
    //event.preventDefault();
  })

  $(".add_new_menu_item").click(function(){
    $.ajax({
      url:$(this).attr("data-url"),
      type:"post",
      context: $("#menu_tree_"+$(this).attr("data-id")),
      dataType:"html",
      success:function(html_data){
        $(this).append(html_data)
      }
    })
  })

  $(".save_menu_tree").click(function(){
    save_menu_tree($(this).attr("data-id"))
  })

  $(".menu-tree-content input").live("focus",function(){
    $(this).data("value",$(this).val())
  })

  $(".menu-tree-content input").live("blur",function(){
    var input=$(this);
    if(input.data("value")!=input.val()){
      input.data("value",input.val())
      $.ajax({
        url:input.attr("data-url"),
        type:"put",
        context:$(this),
        dataType:"json",
        data:{attribute:input.attr("name"),value:input.val()},
        success:function(data){
          var color=(data.status=="error" ? "#ff5656" : "#aaff56");
          $(this).css("backgroundColor",color);
          $(this).animate({ backgroundColor: "white" }, 1000);
        }
      })
    }
  })
})