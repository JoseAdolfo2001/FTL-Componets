import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Card Widget"),
      ),
      body: ListView(
         padding: const EdgeInsets.symmetric(horizontal: 20 , vertical: 10),
         children: const [
            CustomCardType1(),
            SizedBox(height: 10,),
            CustomCardType2(imageUrl: 'https://photographylife.com/wp-content/uploads/2017/01/What-is-landscape-photography.jpg',),
            SizedBox(height: 10,),
            CustomCardType2(imageUrl: 'https://photographylife.com/wp-content/uploads/2016/06/Mass.jpg',),
            SizedBox(height: 10,),
            CustomCardType2( description:"Un hermoso paisaje" , imageUrl: 'https://cdn.theatlantic.com/media/img/photo/2021/11/winners-2021-natural-landscape-phot/a02_proy_539__5138/main_1500.jpg',),
            SizedBox(height: 50,)
            
         ]
      ),
    );
  }
}

