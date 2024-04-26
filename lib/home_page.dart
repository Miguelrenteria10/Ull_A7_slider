import 'package:flutter/material.dart';
import 'package:Renteria1099/tab_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            title: const Text(
              "Coca Cola",
              style: TextStyle(fontSize: 16),
            ),
            centerTitle: true,
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(40),
              child: ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                child: Container(
                  height: 40,
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    color: Color(0xffe6d9c8),
                  ),
                  child: const TabBar(
                    indicatorSize: TabBarIndicatorSize.tab,
                    dividerColor: Colors.transparent,
                    indicator: BoxDecoration(
                      color: Color(0xffff0000),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    labelColor: Colors.white,
                    unselectedLabelColor: Color(0xffff0000),
                    tabs: [
                      TabItem(title: "Productos", count: 6),
                      TabItem(title: "Paquetes", count: 3),
                      TabItem(title: "Carrito", count: 1),
                    ],
                  ),
                ),
              ),
            ),
          ),
          body: const TabBarView(
            children: [
              Center(child: Text("Pagina Productos")),
              Center(child: Text("Pagina Paquetes")),
              Center(child: Text("Pagina Carrito")),
            ],
          )),
    );
  }
}
