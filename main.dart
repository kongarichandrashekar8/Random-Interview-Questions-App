import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  final rad= new Random();       
  runApp(new MyApp());
  }
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return new MaterialApp(
      home:new MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget{
  _MyHomePageState createState()=>new _MyHomePageState();
  }
class _MyHomePageState extends State<MyHomePage>{
  bool javaVal = false;
  bool sqlVal = false;
  bool pythonVal = false;
  bool osVal=false;
  var r =0;
  Widget checkbox(String title, bool boolValue) {
return 

     ListTile( 
       
       contentPadding: EdgeInsets.all(0),
        leading: Checkbox(
          //materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          
          activeColor: Colors.greenAccent[400],
          value: boolValue,
          
          onChanged: (value) {
            setState(() {
              if(title=="Java"){
              javaVal=!javaVal; 
            }
            else if(title=="Sql"){
              sqlVal=!sqlVal;
            }
            else if(title=="Data Structures"){
              pythonVal=!pythonVal;
            }
            else{
              osVal=!osVal;
            }
            });
            
          },
          
        ),
        
        
        
        title: Text(title ),
  
    );
  }
  void _incrementCounter() 
  {
    setState(() {
      var rnd = new Random();
      
          var javaStart=103;
          var javaEnd=160;
          var pythonStart=161;
          var pythonEnd=214;
          var osStart=1;
          var osEnd=51;
          var sqlStart=52;
          var sqlEnd=102;
          if(javaVal==true){
            
            if(sqlVal==true){
              if(osVal==true){

                if(pythonVal==true){//all true

                  var temp=rnd.nextInt(4);
                  if(temp==1){
                    var v=pythonEnd-pythonStart;
                    r=pythonStart+rnd.nextInt(v);
                    }
                  else if(temp==2){
                    var v=sqlEnd-sqlStart;
                    r=sqlStart+rnd.nextInt(v);
                  }
                  else if(temp==0){
                    var v=osEnd-osStart;
                    r=osStart+rnd.nextInt(v);
                  }
                  else{
                    var v=javaEnd-javaStart;
                    r=javaStart+rnd.nextInt(v);
                  }

                }
                else{//os sql java true
                  var temp=rnd.nextInt(3);
                  if(temp==1){
                    var v=osEnd-osStart;
                  r=osStart+rnd.nextInt(v);
                  }
                  else if(temp==0){
                    var v=sqlEnd-sqlStart;
                  r=sqlStart+rnd.nextInt(v);
                  }
                  else{
                    var v=javaEnd-javaStart;
                    r=javaStart+rnd.nextInt(v);
                  }

                }
                
              }
              else{
                if(pythonVal==true){//sql java python true
                  var temp=rnd.nextInt(3);
                  if(temp==1){
                    var v=pythonEnd-pythonStart;
                  r=pythonStart+rnd.nextInt(v);
                  }
                  else if(temp==0){
                    var v=sqlEnd-sqlStart;
                  r=sqlStart+rnd.nextInt(v);
                  }
                  else{
                    var v=javaEnd-javaStart;
                    r=javaStart+rnd.nextInt(v);
                  }

                }
                else{//java sql true
                  var temp=rnd.nextInt(2);
                  if(temp==0){
                    var v=javaEnd-javaStart;
                    r=javaStart+rnd.nextInt(v);
                  }
                  else{
                    var v=sqlEnd-sqlStart;
                  r=sqlStart+rnd.nextInt(v);
                  }

                }
              }

            }
            else{
              if(osVal==true){
                if(pythonVal==true){//python os java true
                  var temp=rnd.nextInt(3);
                  if(temp==1){
                    var v=pythonEnd-pythonStart;
                  r=pythonStart+rnd.nextInt(v);
                  }
                  else if(temp==0){
                    var v=javaEnd-javaStart;
                  r=javaStart+rnd.nextInt(v);
                  }
                  else{
                    var v=osEnd-osStart;
                  r=osStart+rnd.nextInt(v);
                  }

                }
                else{//java os true
                  var temp=rnd.nextInt(2);
                  if(temp==0){
                    var v=javaEnd-javaStart;
                    r=javaStart+rnd.nextInt(v);
                  }
                  else{
                    var v=osEnd-osStart;
                  r=osStart+rnd.nextInt(v);
                  }

                }

              }
              else{
                if(pythonVal==true){//java python true
                  var temp=rnd.nextInt(2);
                  if(temp==0){
                    var v=javaEnd-javaStart;
                    r=javaStart+rnd.nextInt(v);
                  }
                  else{
                    var v=pythonEnd-pythonStart;
                    r=pythonStart+rnd.nextInt(v);
                  }

                }
                else{//only java true
                   var v=javaEnd-javaStart;
                  r=javaStart+rnd.nextInt(v);

                }
              }
            }
          
          }
          else{

            if(sqlVal==true)
            {
              if(osVal==true)
              {
                if(pythonVal==true)//python sql os true
                {
                  var temp=rnd.nextInt(3);
                  if(temp==1){
                    var v=pythonEnd-pythonStart;
                  r=pythonStart+rnd.nextInt(v);
                  }
                  else if(temp==0){
                    var v=sqlEnd-sqlStart;
                  r=sqlStart+rnd.nextInt(v);
                  }
                  else{
                    var v=osEnd-osStart;
                  r=osStart+rnd.nextInt(v);
                  }
                }
                else//os sql true
                {
                  var temp=rnd.nextInt(2);
                  if(temp==1){
                    var v=osEnd-osStart;
                  r=osStart+rnd.nextInt(v);
                  }
                  else{
                    var v=sqlEnd-sqlStart;
                  r=sqlStart+rnd.nextInt(v);
                  }
                }
              }
              else{
                if(pythonVal==true)//python sql true
                {
                  var temp=rnd.nextInt(2);
                  if(temp==0){
                    var v=pythonEnd-pythonStart;
                  r=pythonStart+rnd.nextInt(v);
                  }
                  else{
                    var v=sqlEnd-sqlStart;
                  r=sqlStart+rnd.nextInt(v);
                  }
                }
                else{//only sql true
                  var v=sqlEnd-sqlStart;
                  r=sqlStart+rnd.nextInt(v);


                }

              }
            }
            else if(osVal==true)
            {
              if(pythonVal==true)//python os true
              {
                var temp=rnd.nextInt(2);
                if(temp==0){
                  var v=pythonEnd-pythonStart;
                r=pythonStart+rnd.nextInt(v);
                }
                else{
                  var v=osEnd-osStart;
                r=osStart+rnd.nextInt(v);
                }
              }
              else//only os true
              {
                var v=osEnd-osStart;
                r=osStart+rnd.nextInt(v);
              }
            }
            else if(pythonVal==true)//only python true
            {
              var v=pythonEnd-pythonStart;
              r=pythonStart+rnd.nextInt(v);
            }
            else{
              r=0;
            }

          }
      

      
    });

  }
  
  
  
  Widget build(BuildContext context)
  {

    return new Scaffold(
      appBar: new AppBar(
        title: Text('Random Interview Questions'),
        backgroundColor: Colors.greenAccent[400],
        elevation: 10.0,
        centerTitle:true,
        toolbarHeight: 90,
      ),
      body:
      
      ListView (
        
        children: [
        
        GridView.count(crossAxisCount: 2,
        crossAxisSpacing: 0.0,
          mainAxisSpacing: 0.0,
          
          
          padding: EdgeInsets.only(bottom: 0, right: 0),
      //physics: NeverScrollableScrollPhysics(), // to disable GridView's scrolling
      shrinkWrap: true, // You won't see infinite size error
      children: <Widget>[

        
        
        
        Card(
          child: Column(
          children: [
            checkbox("Java", javaVal),
            checkbox("OS", osVal),
            
          ],
          ),
          //color: Colors.blue,
          //child:checkbox("SQL", sqlVal),
        ),
        
        Card(
          child: Column(
          children: [
            checkbox("Data Structures", pythonVal),
            checkbox("Sql", sqlVal), 
          ],
          ),
          //color: Colors.blue,
          //child:checkbox("PYHTON", pythonVal),
        ),
      ],
        ),
        StreamBuilder(
        stream: FirebaseFirestore.instance.collection('QuestionsDB').snapshots(),
        builder: (context,snapshot){
          if(!snapshot.hasData) return Text('Loading....');
          return Column(
            //mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              
              SizedBox(
                height: 15,
                
              ),
              Card(
                
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  
                  child:


                  
                   Text((snapshot.data! as QuerySnapshot).docs[r]['question']?? "",
              textAlign: TextAlign.center,
              
              style: TextStyle(
                fontSize: 30.0,
               
                    fontWeight: FontWeight.w500, // light
                    fontStyle: FontStyle.italic, // italic
  ),)
                ),
              ), 
            ],
          );

        }
      ),

      ],),
      
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomSheet: Padding(padding: EdgeInsets.only(bottom: 100.0)),
      floatingActionButton: FloatingActionButton.extended
      ( 
        label: Text('Another'),
        
        backgroundColor: Colors.greenAccent[400],
        elevation: 10.0,
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        //icon: Icon(Icons.add),
        
        shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(2),
            
          ),
      ),
      
    );
  }
}
