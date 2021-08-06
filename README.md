1. Hacer un diagrama de modelos para cubrir las necesidades del cliente.

1.R: diagrama ubicado en el archivo erd.rb

6. Según su diseño, explicar al cliente cómo implementar la lista de productos del
catálogo. (de un ejemplo en código). Si un modelo necesita código, debes entregarlo
al cliente como parte de la implementación:

6.R:

se decidio quitar los precio, stock, sku de la tabla product ya qyue este detalle lo debe tener la variacioon del producto. Por ende se crearon las tablas variation, color, size. Donde estos daran el detalle por variacion de producto 

Para que nuestro proyecto muestre en el catalago los productos disponibles dbeemos iterar los productos y las variantes en la vista index para asi mostras el producto y las variaciones de este, Por ejemplo 

<% @products.each do |product| %>
    <%= product.categories.first.name %>
    <%= product.categories.first.price %>
    <%= product.categories.first.color.name %>
    <%= product.variations.first.size.name %>
<% end %>

8. Nuestro cliente, a último minuto nos solicita que nuestro sistema soporte cupones
de dos tipos:
a) Uno para distribuir en redes sociales (1 cupón lo pueden ocupar muchas
personas).
b) Otro para clientes específicos (1 cupón solo lo puede ocupar un cliente
específico).
Los cupones pueden descontar un porcentaje de la compra o un monto específico.
En el caso de un monto específico, si el cupón es mayor que la compra, el cupón no
puede usarse en otra. Por temas de tiempo, sólo podrás entregarle una prueba de
conceptos en la que debes incluir el modelado de los datos extendiendo el resultado
de la pregunta 1 y además algunas implementaciones de código con los conceptos
más importantes.
Tip: Te recomendamos primero tomar o el a) o el b), y ya teniendo esto listo, empezar
con el otro

8R.

 Se creo el modelo "coupon" en el cual se le asigna un monto, codigo, Para los cupones que solo pueden ocupar clientes específicos, se debería crear un modelo cupón que incluya como FK el user_id