// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'package:dashboard_caxaj/core/providers/dio_providers.dart';
// import 'package:dio/dio.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:dashboard_caxaj/core/models/productos_class.dart';

// //final productosRespositoryProvider = Provider(ProductosRepository.new);
// ProductosClass productosClass = new ProductosClass(producto: null, categoria: null, listaCategoria: null, unidad: null, listaUnidades: null, proveedor: null, listaProveedores: null, compra: null, detalleCompra: null, venta: null, detalleVenta: null, respuestaFacturaDto: respuestaFacturaDto)

// class ProductosRepository {
//   final Ref _ref;

//   ProductosRepository({
//     this._ref,
//   });

//   Dio get _dio => _ref.read(dioProvider);

  // Future<List<ListaProductos>> lista() async {
  //   try {
  //     final res = await _dio.get('Productos/getProductos');
  //     final Iterable data = res.data;

      
  //     return data.map((e) => ListaProductos.fromMap(e),).toList();
  //   } on DioException catch (e) {
  //     return Future.error(e.response?.data ?? e.error);
  //   }
  // }
// }
