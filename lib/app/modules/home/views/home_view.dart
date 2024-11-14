import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ongkos Kirim Indonesia'),
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          DropdownSearch<String>(
            items: (f, cs) => ["Item 1", 'Item 2', 'Item 3', 'Item 4'],
            popupProps: PopupProps.menu(
                disabledItemFn: (item) => item == 'Item 3', fit: FlexFit.loose),
          ),
        ],
      ),
    );
  }
}
