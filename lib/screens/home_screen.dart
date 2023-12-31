
import 'package:fl_components/router/app_routes.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Componentes en flutter"),
        elevation: 0,
        centerTitle: true,
      ),
      body:ListView.separated(
        itemBuilder: (contex , index) => ListTile(
          title:  Text(AppRoutes.menuOptions[index].name),
          leading:  Icon(AppRoutes.menuOptions[index].icon , color: AppTheme.primary),
          onTap: (){
            Navigator.pushNamed(context, AppRoutes.menuOptions[index].route);
          },
        ), 
        separatorBuilder: ( _ , __ ) => const Divider(), 
        itemCount:AppRoutes.menuOptions.length),
    );
  }
}