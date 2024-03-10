// app/views/products/update_stock.js.erb

<% if @product.errors.any? %>
  alert("エラーが発生しました");
<% else %>
  var productId = <%= @product.id %>;
  var newStock = <%= @product.stock %>;
  document.getElementById('stock_' + productId).innerHTML = newStock;
<% end %>

