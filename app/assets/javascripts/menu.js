
cart = new Object()

function setup()
{
  // $('#form-view-order').submit(function() {
  //   $(this).find("[name='cart']").each( function () {
  //     this.value = JSON.stringify(cart);
  //   });
  //   return true; // return false to cancel form action
  // });

  $("#btn-empty-cart").click(function() {
    cart = new Object();
    console.log(cart);
    setCookie("cart", JSON.stringify(cart), 1);
  });

  $(".btn-add-to-cart").click(function() {
    var item_id = this.value;
    $(this).parent().find("[name='quantity']").each( function () {
      if (typeof cart[item_id] != "undefined") {
        cart[item_id] += parseInt(this.value);
      } else {
        cart[item_id] = parseInt(this.value);
      }

      console.log(cart);
      setCookie("cart", JSON.stringify(cart), 1);
    });
  });
}

// Jquery ready
$(function() {

});


$(document).on('turbolinks:load', function() {
  setup();
});
