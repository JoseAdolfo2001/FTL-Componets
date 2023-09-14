
import 'package:fl_components/models/menu_options.dart';
import 'package:fl_components/screens/screens.dart';
import 'package:flutter/material.dart';

class AppRoutes{
  
  static const initialRoute = "homeScreen";
  
  static List<MenuOptions> menuOptions = <MenuOptions>[
 //   MenuOptions(route: "homeScreen", icon: Icons.home_max_sharp, name: "Home Screen", screen: const HomeScreen()),
    MenuOptions(route: "listView1", icon: Icons.list_alt, name: "Listview tipo 1", screen: const ListView1Screen()),
    MenuOptions(route: "cardScreen", icon: Icons.add_alert_outlined, name: "Alerts Screen", screen: const AlertScreen()),
    MenuOptions(route: "alertScreen", icon: Icons.credit_card, name: "Cards Screen", screen: const CardScreen()),
    MenuOptions(route: "avatar", icon: Icons.supervised_user_circle_outlined, name: "Circle Avatar", screen: const AvatarScreen()),
    MenuOptions(route: "animated", icon: Icons.play_circle_outline, name: "Animated Screen", screen: const AnimatedScreen()),
    MenuOptions(route: "inputs", icon: Icons.input_rounded, name: "Text Inputs", screen: const InputsScreen()),
    MenuOptions(route: "slider" , icon: Icons.slow_motion_video_rounded , name: "Slider && Checks" , screen: const  SliderScreen() ),
    MenuOptions(route: "listviewbuilder" , icon: Icons.build_circle_outlined , name: "InfiniteScroll & Pull to Refresh" , screen: const  ListViewBuilder() )
  ];


  
  // static Map<String, Widget Function(BuildContext)> routes = {
  //       "listViedw1" : (BuildContext context) => const ListView1Screen(),
  //       "alertScreen": (BuildContext context) => const AlertScreen(),
  //       "cardScreen" : (BuildContext context ) => const CardScreen(),
  //       "homeScreen" : (BuildContext context ) => const HomeScreen()
  //     };
static Map<String , Widget Function(BuildContext)> getAppRoutes(){
    Map< String , Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({"homeScreen": (BuildContext context) => HomeScreen()});
    for(final option in menuOptions){
      appRoutes.addAll({option.route : (BuildContext context) => option.screen });
    }

    return appRoutes;
  }
  
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
        return MaterialPageRoute(
          builder: (context) => const AlertScreen(),
        );
  }

}