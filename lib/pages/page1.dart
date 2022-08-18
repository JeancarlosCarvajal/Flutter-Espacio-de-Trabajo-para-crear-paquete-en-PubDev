import 'package:crear_paquetes/pages/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
   
  const Page1({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text( 'Page1' ),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.blue,
      body: Center(
         child: MaterialButton(
          child: Text( 'Route to Page2' ),
          color: Colors.white,
          onPressed: (){
            // opcion 1
            // Navigator.push(context, MaterialPageRoute(builder: (_) => Page2()));
            // opcion 2
            // Navigator.pushNamed(context, 'page2');

            // navegar con un fadein
            // Navigator.push(context, PageRouteBuilder(pageBuilder: ((context, animation, secondaryAnimation) => Page2())));
          
          } 
        ),
      ),
    );
  }
}