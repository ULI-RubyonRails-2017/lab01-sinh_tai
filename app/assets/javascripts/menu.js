
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
    alert("The cart is empty now.");
  });

  $(".btn-add-to-cart").click(function() {
    var item_id = this.value;

    if (typeof cart[item_id] == "undefined")
      cart[item_id] = 0;

    $(this).parent().find("[name='quantity']").each( function () {
      var num = parseInt(this.value);
      cart[item_id] += num;
      console.log(cart);
      setCookie("cart", JSON.stringify(cart), 1);
      if (num > 1) {
        alert("Added " + num.toString() + " items to the cart");
      } else {
        alert("Added " + num.toString() + " item to the cart");
      }
    });
  });
}

// Jquery ready
$(function() {

});


$(document).on('turbolinks:load', function() {
  setup();
});
