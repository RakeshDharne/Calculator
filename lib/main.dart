import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _myapp();
  }

}

class _myapp extends State<Myapp>{
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  int num1=0,num2=0,res=0;
  add(){
    setState(() {
      num1=int.parse(controller1.text);
      num2=int.parse(controller2.text);
      res = num1+num2;
    });
  }

  sub(){
    setState(() {
      num1=int.parse(controller1.text);
      num2=int.parse(controller2.text);
      res = num1-num2;
    });
  }
  mul(){
    setState(() {
      num1=int.parse(controller1.text);
      num2=int.parse(controller2.text);
      res = num1*num2;
    });
  }
  div(){
    setState(() {
      num1=int.parse(controller1.text);
      num2=int.parse(controller2.text);
      res = num1 ~/num2;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     title: "CALCULATOR",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.teal,
        appBar: AppBar(toolbarHeight: 100,backgroundColor: Colors.blueGrey[900],title: Text("Calulator",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 35,color: Colors.grey),),centerTitle: true,),
        body:Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(height: 30,),
              Text("Result : $res",style: TextStyle(fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(height: 30,),
              TextField(
                keyboardType: TextInputType.number,
                controller: controller1,
                decoration: InputDecoration(
                  label: Text("Enter first no.",style: TextStyle(color: Colors.white60),),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),

                  ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(color: Colors.black)

                    )
                ),
              ),
              SizedBox(height: 30,),
              TextField(
                keyboardType: TextInputType.number,
                controller: controller2,
                decoration: InputDecoration(
                    label: Text("Enter second no.",style: TextStyle(color: Colors.white60),),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),

                    ),
                    border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.black)

              )
                ),
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){add();}, child: Text("+",style: TextStyle
                    (fontSize: 30),)),
                  ElevatedButton(onPressed: (){sub();}, child: Text("-",style: TextStyle
                    (fontSize: 30),))
                ],
              ),
              SizedBox(height: 50,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){mul();}, child: Text("*",style: TextStyle
                    (fontSize: 30),)),
                  ElevatedButton(onPressed: (){div();}, child: Text("/",style: TextStyle
                    (fontSize: 30),))
                ],
              )

            ],
          ),
        ),

      ),


    );
  }

}