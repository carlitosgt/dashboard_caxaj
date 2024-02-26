import 'package:dashboard_caxaj/core/services/productos_api_services.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final apiServiceProductoProvider =
    Provider<ProductosApiService>((ref) => ProductosApiService());
