import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
   
  const InputsScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
    final Map<String , String > formValues = {
      'first_name'  : 'Fernando',
      'last_name'   : 'Herrera',
      'email'       : 'fernando@google.com',
      'password '   : '123456',
      'role'        : "Admin"
    };
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inputs y Forms"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20 ,  vertical: 10 ),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const  SizedBox(height: 10,),
                CustomInputField(labelText: "Nombre", hintText: "Nombre del usuario", formProperty: 'first_name', formValues: formValues ,),
                const SizedBox(height: 20),
                CustomInputField(labelText: "Apellido", hintText: "Apellido del usuario", formProperty: 'last_name', formValues: formValues ,),
                const SizedBox(height: 20),
                CustomInputField(labelText: "Correo", hintText: "Correo del usuario" ,textType: TextInputType.emailAddress, formProperty: 'email', formValues: formValues,),
                const SizedBox(height: 20),
                CustomInputField(labelText: "Contraseña", hintText: "Ingresa una contraseña" ,isPassWord: true, formProperty: 'password', formValues: formValues,),
                const SizedBox(height: 20),

                DropdownButtonFormField<String>(
                  items: const[
                    DropdownMenuItem(value: 'Admin',child: Text('Admin')),
                    DropdownMenuItem(value: 'SuperUser',child: Text('SuperUser')),
                    DropdownMenuItem(value: 'Developer',child: Text('Developer')),
                    DropdownMenuItem(value: 'Jr. Developer',child: Text('Jr. Developer')),
                  ], 
                  onChanged: (value){
                    print(value);
                    formValues['role'] = value ?? 'Admin';
                  }
                  ),

                  const SizedBox(height: 20,),
          
                ElevatedButton(
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text("Guardar")),
                  ),
                  onPressed:(){
                    FocusScope.of(context).requestFocus(FocusNode());
                    if(myFormKey.currentState!.validate()){
                      print('formulario no valido');
                    }
                    print(formValues);
                   } 
                )
          
                
          
              ]
            ),
          ),

        ),
        ),
    );
  }
} 