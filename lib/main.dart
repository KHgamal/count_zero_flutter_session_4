
import 'package:flutter/material.dart';

void main( ) {

  runApp(  const TasbeehScreen());
}

class TasbeehScreen extends StatefulWidget {
const   TasbeehScreen({Key? key}) : super(key: key);

  @override
  State<TasbeehScreen> createState() => _TasbeehScreenState();
}

class _TasbeehScreenState extends State<TasbeehScreen> {
int count=0;
TextEditingController textController=TextEditingController();
String name='';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       appBar: AppBar(
         title:const Text("Tasbeeh") ,
       ),
        body: Directionality(
          textDirection: TextDirection.rtl,
          child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: TextField(
                  controller: textController,
                  // obscureText: true,
                   decoration: InputDecoration(
                     filled: true,
                     fillColor: Colors.amber,
                     prefixIcon:const Icon(Icons.edit),
                     suffixIcon:const Icon(Icons.clear)  ,
                     suffixIconColor: Colors.red,
                     hintText: "اضف ذكر",
                     border:OutlineInputBorder(
                       borderRadius: BorderRadius.circular(13),
                     )
                   ),
                 ),
               ),
                const SizedBox(
                  height:15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text(name,style:  const TextStyle( fontSize:20),),
                      const SizedBox(width: 15,),
                      Text(count.toString(), style:  const TextStyle( fontSize: 40),),
                    ],
                  ),
                ),
                const SizedBox(
                  height:20,
                ),
                SizedBox(
                  width: 100,
                  height: 40,
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      name==textController.text?count++:count=0;
                      name=textController.text;
                    });
                  }, child: const Icon(Icons.add)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


