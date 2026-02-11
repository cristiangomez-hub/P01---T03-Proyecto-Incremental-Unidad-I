class Producto {
  double precioProducto;
  String nombreProducto;

  Producto(this.nombreProducto, this.precioProducto);
}

class Cliente {
  String nombre;
  String cuenta;

  Cliente(this.nombre, this.cuenta);
}

class Pedido {
  Cliente cliente;
  List<Producto> productos = [];

  Pedido(this.cliente);

  void agregarProducto(Producto producto) {
    productos.add(producto);
  }

  double costoTotal() {
    double total = 0;
    for (var producto in productos) {
      total += producto.precioProducto;
    }
    return total;
  }

  void ticketCompra() {
    print("----------Ticket de Compra----------");
    print("Cliente: ${cliente.nombre}");
    print("Cantidad de Productos: ${productos.length}");
    print("Productos:");

    for (var producto in productos) {
      print("- ${producto.nombreProducto}: \$${producto.precioProducto}");
    }

    print("\n- Compra Total: \$${costoTotal()}");
  }
}

void main() {
  Cliente cliente1 = Cliente("Christian Manuel Gómez Velázquez", "C.Manuel");

  Pedido pedido = Pedido(cliente1);

  Producto producto1 = Producto("Computadora", 20000.00);
  Producto producto2 = Producto("Funda para computadora", 2000.00);
  Producto producto3 = Producto("Cargador para celular", 1500.00);

  pedido.agregarProducto(producto1);
  pedido.agregarProducto(producto2);
  pedido.agregarProducto(producto3);

  pedido.ticketCompra();
}