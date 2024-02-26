import 'package:dashboard_caxaj/core/models/productos_class.dart';
import 'package:dashboard_caxaj/utils/app_config.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

Productos productosClass = Productos(listaProductos: []);

class ProductosApiService {
  Future<Productos> listaProductos() async {
    String token =
        'eyJhbGciOiJIUzUxMiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJDYXJsb3MiLCJlbWFpbCI6IkNhcmxvcyIsIm5iZiI6MTcwODkyMDA2NiwiZXhwIjoxNzA4OTIwNjY2LCJpYXQiOjE3MDg5MjAwNjYsImlzcyI6Iklzc3VlciIsImF1ZCI6IkF1ZGllbmNlIn0.WRvXBPSrZIyez1TkQo4K9eMkM3IQ6jWh4TwsouJQRieTFioebqjx5yoHrINQeCVMwI6zRFZ62vnhw5HY_BNW6w';
    final httpPackageUrl =
        Uri.parse('${AppConfigs.baseURL}Productos/getProductos');
    try {
      final response = await get(httpPackageUrl, headers: {
        'Content-Type': 'application/json',
        'Accept': 'application/json',
        'Authorization': 'Bearer $token',
      });
      if (response.statusCode == 200) {
        productosClass.listaProductos.clear();
        productosClass = productosFromJson(response.body);
      } else {
        debugPrint(response.statusCode.toString());
      }
    } catch (e) {
      debugPrint(e.toString());
      return Future.error(
        e.toString(),
      );
    }
    return productosClass;
  }
}
