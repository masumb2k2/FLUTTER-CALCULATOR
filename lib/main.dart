import 'package:flutter/material.dart';

import 'buttons.dart';
void main() => runApp(Myapp());

class Myapp extends StatefulWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {

  int firstnum=0;
  int secondnum=0;
  String res='';
  String texttodisplay='';
  String history='';
  String operation='';
  String mid='';
  
  void btnonclick(btnvlu){
    print(btnvlu);

    //AC
    if(btnvlu=='AC'){
      res='';
      texttodisplay='';
      firstnum=0;
      secondnum=0;
    }
    //C
    else if(btnvlu=='C'){
      firstnum=0;
      secondnum=0;
      res='';
      texttodisplay='';
      history='';
      mid='';
    }
    //<
    else if(btnvlu=='<'){
      res=texttodisplay.substring(0,texttodisplay.length-1);
    }

    //+/-
    else if(btnvlu=='+?-'){
      if(texttodisplay[0]!='-'){
        res='-'+texttodisplay;
      }
      else{
        res=texttodisplay.substring(1);
      }
    }

    //+-x/
    else if(btnvlu=='+'||btnvlu=='-'||btnvlu=='x'||btnvlu=='/'){
      firstnum=int.parse(texttodisplay);
      res='';
      operation=btnvlu;
    }

    //=
    else if(btnvlu=='='){
      secondnum=int.parse(texttodisplay);
      if(operation=='+'){
        res=(firstnum+secondnum).toString();
        history=firstnum.toString()+operation.toString()+secondnum.toString();
      }
      else if(operation=='-'){
        res=(firstnum-secondnum).toString();
        history=firstnum.toString()+operation.toString()+secondnum.toString();
      }
      else if(operation=='x'){
        res=(firstnum*secondnum).toString();
        history=firstnum.toString()+operation.toString()+secondnum.toString();
      }
      else if(operation=='/'){
        res=(firstnum/secondnum).toString();
        history=firstnum.toString()+operation.toString()+secondnum.toString();
      }
    }
    else{
      res=int.parse(texttodisplay+btnvlu).toString();
    }
    setState(() {
      texttodisplay=res;
    });
  }



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFFCFE6F5),
        appBar: AppBar(
          title: Text('CALCULATOR',style: TextStyle(color: Color(0xFF3F422F),fontSize: 30,fontWeight: FontWeight.bold)),
          backgroundColor: Color(0xFFCFE6F5),
          elevation: 0,
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Card(
                elevation: 11,
                margin: EdgeInsets.fromLTRB(20, 40, 20, 40),
                color: Color(0xFFF1F3F6),
                shape:RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.fromLTRB(30, 0, 20, 15),
                      child: Text(
                       history,
                        style: TextStyle(
                          color: Colors.grey.shade400,
                            fontSize: 60,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.fromLTRB(30, 0, 20, 15),
                      child: Text(
                        firstnum.toString()+operation.toString()+secondnum.toString(),
                        style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.bottomRight,
                      padding: EdgeInsets.fromLTRB(30, 0, 20, 15),
                      child: Text(
                        texttodisplay,
                        style: TextStyle(
                            fontSize: 60,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button(text: 'AC', textcolor: 0xFFF5F5F5, backcolor: 0xFFAB88F5, callback: btnonclick),
                  button(text: 'C', textcolor: 0xFFF5F5F5, backcolor: 0xFFF3676B, callback: btnonclick),
                  button(text: '<', textcolor: 0xFFF5F5F5, backcolor: 0xFFF2A637, callback: btnonclick),
                  button(text: '/', textcolor: 0xFFF5F5F5, backcolor: 0xFFF2A637, callback: btnonclick),
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button(text: '9', textcolor: 0xFF3F422F, backcolor: 0xFFF1F3F6, callback: btnonclick),
                  button(text: '8', textcolor: 0xFF3F422F, backcolor:  0xFFF1F3F6, callback: btnonclick),
                  button(text: '7', textcolor: 0xFF3F422F, backcolor:  0xFFF1F3F6, callback: btnonclick),
                  button(text: 'x', textcolor: 0xFFF5F5F5, backcolor: 0xFFF2A637, callback: btnonclick),
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button(text: '6', textcolor: 0xFF3F422F, backcolor:  0xFFF1F3F6, callback: btnonclick),
                  button(text: '5', textcolor: 0xFF3F422F, backcolor:  0xFFF1F3F6, callback: btnonclick),
                  button(text: '4', textcolor: 0xFF3F422F, backcolor:   0xFFF1F3F6, callback: btnonclick),
                  button(text: '-', textcolor: 0xFFF5F5F5, backcolor: 0xFFF2A637, callback: btnonclick),
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button(text: '3', textcolor: 0xFF3F422F, backcolor:  0xFFF1F3F6, callback: btnonclick),
                  button(text: '2', textcolor: 0xFF3F422F, backcolor:  0xFFF1F3F6, callback: btnonclick),
                  button(text: '1', textcolor: 0xFF3F422F, backcolor:  0xFFF1F3F6, callback: btnonclick),
                  button(text: '+', textcolor: 0xFFF5F5F5, backcolor: 0xFFF2A637, callback: btnonclick),
                ],
              ),Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  button(text: '0', textcolor: 0xFF3F422F, backcolor:  0xFFF1F3F6, callback: btnonclick),
                  button(text: '00', textcolor: 0xFF3F422F, backcolor:  0xFFF1F3F6, callback: btnonclick),
                  button(text: '+/-', textcolor: 0xFFF5F5F5, backcolor:  0xFF44A2F1, callback: btnonclick),
                  button(text: '=', textcolor: 0xFFF5F5F5, backcolor: 0xFF28CF56, callback: btnonclick),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
