import 'package:flutter/material.dart';
void main(){
  runApp(const MaterialApp(
    home: Calculator(),
    debugShowCheckedModeBanner: false,
  ));
}
class Calculator extends StatefulWidget {

  const Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  TextEditingController controller1=TextEditingController();
  TextEditingController controller2=TextEditingController();
  int? Result=0,num1=0,num2=0;
  add(){
    setState(() {
      num1=int.parse(controller1.text);
      num2=int.parse(controller2.text);
      Result=num1!+num2!;
    });
  }
  sub(){
    setState(() {
      num1=int.parse(controller1.text);
      num2=int.parse(controller2.text);
      Result=num1!-num2!;
    });
  }
  mul(){
    setState(() {
      num1=int.parse(controller1.text);
      num2=int.parse(controller2.text);
      Result=num1!*num2!;
    });
  }
  div(){
    setState(() {
      num1=int.parse(controller1.text);
      num2=int.parse(controller2.text);
      Result=num1!~/num2!;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:const Center(child: Text('calculator',style: TextStyle(fontWeight: FontWeight.bold),selectionColor: Colors.black,)),
      ),

      body: (
      Column(
        children: [
          SizedBox(height: 10,),
          Text("Result=$Result",
            textAlign: TextAlign.left,style: const TextStyle(fontWeight: FontWeight.bold),),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              keyboardType: TextInputType.number,
              controller:controller1,
              decoration: const InputDecoration(
                labelText: 'enter num 1',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              keyboardType: TextInputType.number,
              controller: controller2,
              decoration:const InputDecoration(
                labelText: 'enter num 2',
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                child: const Text("add"),
                onPressed: (){
                  add();
                  controller1.clear();
                  controller2.clear();
                },
              ),
             const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child:const Text("sub"),
                onPressed: (){
                  sub();
                  controller1.clear();
                  controller2.clear();
                },
              ),
            ],
          ),
         const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                child: const Text("div"),
                onPressed: (){
                  div();
                  controller1.clear();
                  controller2.clear();
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                child: const Text("mul"),
                onPressed: (){
                  mul();
                  controller1.clear();
                  controller2.clear();
                },
              ),
            ],
          ),
        ],
      )
      ),
    );
  }
}
