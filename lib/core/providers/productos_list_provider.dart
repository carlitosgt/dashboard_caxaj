import 'package:dashboard_caxaj/core/models/productos_class.dart';
import 'package:dashboard_caxaj/core/providers/api_service_productos_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final productosListProvider = FutureProvider<Productos>((ref) async {
  return ref.watch(apiServiceProductoProvider).listaProductos();
});
