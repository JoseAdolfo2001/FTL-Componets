import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
   
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {

  double sliderValue = 100;
  bool sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Sliders & Checks"),
        centerTitle: true,
      ),
      body:Column(
           children:[
            Slider.adaptive(
              value: sliderValue, 
              onChanged: sliderEnabled ?(value){
                sliderValue = value;
                setState(() {});
              } : null ,
              min: 50,
              activeColor: AppTheme.primary,
              max: 100,
              ),

              // Checkbox(
              //   value: sliderEnabled, 
              //   onChanged: (value){
              //     sliderEnabled = value ?? true;
              //     setState(() {});
              //   }
              // ),

              // Switch(
              //   value: sliderEnabled, 
              //   onChanged: (value){
              //     sliderEnabled = value ?? true;
              //     setState(() {});
              //   },
              //   ),

              CheckboxListTile(
                value: sliderEnabled,
                activeColor: AppTheme.primary, 
                title: const Text("Habilitar Slider"),
                onChanged: (value){
                  sliderEnabled = value ?? true;
                  setState(() {});
                }
                ),

                SwitchListTile(
                value: sliderEnabled,
                activeColor: AppTheme.primary, 
                title: const Text("Habilitar Slider"),
                onChanged: (value){
                  sliderEnabled = value;
                  setState(() {});
                }
                  ),

                const AboutListTile(),  

               Expanded(
                 child: SingleChildScrollView(
                   child: Image(
                    image:const NetworkImage("https://cdn.pixabay.com/photo/2020/07/06/17/51/batman-5377804_1280.png"),
                    fit: BoxFit.contain,
                    width: sliderValue,
                    ),
                 ),
               ),
           ]
        ),
      );
  }
}