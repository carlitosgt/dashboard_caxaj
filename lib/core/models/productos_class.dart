// To parse this JSON data, do
//
//     final productos = productosFromJson(jsonString);

import 'dart:convert';

Productos productosFromJson(String str) => Productos.fromJson(json.decode(str));

String productosToJson(Productos data) => json.encode(data.toJson());

class Productos {
  String? exito;
  String? error;
  dynamic producto;
  List<ListaProducto> listaProductos;
  dynamic categoria;
  dynamic listaCategoria;
  dynamic unidad;
  dynamic listaUnidades;
  dynamic proveedor;
  dynamic listaProveedores;
  dynamic compra;
  dynamic detalleCompra;

  Productos({
    this.exito,
    this.error,
    this.producto,
    required this.listaProductos,
    this.categoria,
    this.listaCategoria,
    this.unidad,
    this.listaUnidades,
    this.proveedor,
    this.listaProveedores,
    this.compra,
    this.detalleCompra,
  });

  factory Productos.fromJson(Map<String, dynamic> json) => Productos(
        exito: json["exito"],
        error: json["error"],
        producto: json["producto"],
        listaProductos: List<ListaProducto>.from(
            json["listaProductos"].map((x) => ListaProducto.fromJson(x))),
        categoria: json["categoria"],
        listaCategoria: json["listaCategoria"],
        unidad: json["unidad"],
        listaUnidades: json["listaUnidades"],
        proveedor: json["proveedor"],
        listaProveedores: json["listaProveedores"],
        compra: json["compra"],
        detalleCompra: json["detalleCompra"],
      );

  Map<String, dynamic> toJson() => {
        "exito": exito,
        "error": error,
        "producto": producto,
        "listaProductos":
            List<dynamic>.from(listaProductos.map((x) => x.toJson())),
        "categoria": categoria,
        "listaCategoria": listaCategoria,
        "unidad": unidad,
        "listaUnidades": listaUnidades,
        "proveedor": proveedor,
        "listaProveedores": listaProveedores,
        "compra": compra,
        "detalleCompra": detalleCompra,
      };
}

class ListaProducto {
  final int idProducto;
  final String descripcion;
  final int idProveedor;
  final num precioCompra;
  final num precioVenta;
  final String codigoBarra;
  final int utilidad;
  final int cantidadminima;
  final dynamic imagen;
  final int idUnidad;
  final int idCategoria;
  final int existencia;
  final String nombreProveedor;
  final int? idUbicacion;

  ListaProducto(
      {required this.idProducto,
      required this.descripcion,
      required this.idProveedor,
      required this.precioCompra,
      required this.precioVenta,
      required this.codigoBarra,
      required this.utilidad,
      required this.cantidadminima,
      required this.imagen,
      required this.idUnidad,
      required this.idCategoria,
      required this.existencia,
      required this.nombreProveedor,
      required this.idUbicacion});

  factory ListaProducto.fromJson(Map<String, dynamic> json) => ListaProducto(
      idProducto: json["id_Producto"],
      descripcion: json["descripcion"],
      idProveedor: json["id_Proveedor"],
      precioCompra: json["precio_Costo"],
      precioVenta: json["precio_Venta"],
      codigoBarra: json["codigoBarra"],
      utilidad: json["utilidad"],
      cantidadminima: json["cantidadminima"],
      imagen: json["imagen"],
      idUnidad: json["id_Unidad"],
      idCategoria: json["id_Categoria"],
      existencia: json["existencia"],
      nombreProveedor: json["nombreProveedor"],
      idUbicacion: json["id_Ubicacion"]);

  Map<String, dynamic> toJson() => {
        "id_Producto": idProducto,
        "descripcion": descripcion,
        "id_Proveedor": idProveedor,
        "precio_Compra": precioCompra,
        "precio_Venta": precioVenta,
        "codigoBarra": codigoBarra,
        "utilidad": utilidad,
        "cantidadminima": cantidadminima,
        "imagen": imagen,
        "id_Unidad": idUnidad,
        "id_Categoria": idCategoria,
        "existencia": existencia,
        "nombreProveedor": nombreProveedor,
      };
}
