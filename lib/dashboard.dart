// ignore_for_file: library_private_types_in_public_api

import 'dart:convert';

import 'package:dashboard_caxaj/core/providers/productos_list_provider.dart';
import 'package:dashboard_caxaj/utils/mi_loader.dart';
import 'package:dashboard_caxaj/widget/navigation_drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

// class DashboardPage extends ConsumerStatefulWidget {
//   const DashboardPage({super.key});

//   @override
//   _DashboardPageState createState() => _DashboardPageState();
// }

// class _DashboardPageState extends State<DashboardPage> {
//   @override
//   build(BuildContext context, WidgetRef ref) {
//     return Scaffold(
//         drawer: NavigationDrawerWidget(),
//         // endDrawer: NavigationDrawerWidget(),
//         appBar: AppBar(
//           title: const Text('Dashboard'),
//         ),
//         body:
//       );
//   }
// }

class DashboardPage extends HookConsumerWidget {
  const DashboardPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productos = ref.watch(productosListProvider);
    return Scaffold(
      drawer: NavigationDrawerWidget(),
      // endDrawer: NavigationDrawerWidget(),
      appBar: AppBar(
        title: const Text('Dashboard'),
      ),
      body: productos.when(
        data: (productos) {
          return ListView.builder(
            itemCount: productos.listaProductos.length,
            itemBuilder: (context, index) {
              final item = productos.listaProductos[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                elevation: 5,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 48, // Image radius
                    child: ClipOval(
                        child: Image.memory(base64Decode(item.imagen))),
                  ),
                  title: Text(
                      productos.listaProductos[index].descripcion.toString()),
                ),
              );
            },
          );
        },
        error: (error, stack) => const Center(
          child: Text('Error'),
        ),
        loading: () => const Center(
          child: MiLoaderPage(),
        ),
      ),
      floatingActionButton: FloatingActionButton.large(
        onPressed: () {
          final productos = ref.read(productosListProvider);
          productos.isReloading;
        },
        child: const Icon(Icons.refresh_outlined),
      ),
    );
  }
}
