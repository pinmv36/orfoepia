import "dart:math";

import 'package:flutter/material.dart';

import 'Podsk.dart';
import '../main.dart';
/*
var a=['аэропОрты', 'бАнты', 'бОроду', 'бухгАлтеров', 'вероисповЕдание', 'граждАнство', 'дефИс', 'диспансЕр', 'договорЁнность', 'докумЕнт', 'досУг', 'жалюзИ', 'знАчимость', 'каталОг', 'диалОг', 'монолОг', 'некролОг', 'квартАл', 'корЫсть', 'крАны', 'лЕкторы', 'лЕкторов', 'мЕстностей', 'пОчестей', 'чЕлюстей', 'новостЕй', 'намЕрение', 'недУг', 'нОвости',  'овостЕй', 'мЕстностей', 'нОготь', 'нОгтя', 'Отрочество', 'портфЕль', 'пОручни', 'свЁкла', 'сирОты', 'срЕдства', 'созЫв', 'тамОжня','тОрты', 'тОртов', 'цепОчка', 'шАрфы', 'бАнты', 'шофЁр', 'киоскЁр', 'контролЁр', 'экспЕрт'];
var b=['аэропОрты', 'бАнты', 'бОроду', 'бухгАлтеров', 'вероисповЕдание', 'граждАнство', 'дефИс', 'диспансЕр', 'договорЁнность', 'докумЕнт', 'досУг', 'жалюзИ', 'знАчимость', 'каталОг', 'диалОг', 'монолОг', 'некролОг', 'квартАл', 'корЫсть', 'крАны', 'лЕкторы', 'лЕкторов', 'мЕстностей', 'пОчестей', 'чЕлюстей', 'новостЕй', 'намЕрение', 'недУг', 'нОвости',  'овостЕй', 'мЕстностей', 'нОготь', 'нОгтя', 'Отрочество', 'портфЕль', 'пОручни', 'свЁкла', 'сирОты', 'срЕдства', 'созЫв', 'тамОжня','тОрты', 'тОртов', 'цепОчка', 'шАрфы', 'бАнты', 'шофЁр', 'киоскЁр', 'контролЁр', 'экспЕрт'];
*/
final List<String> a=<String>['аэропОрты', 'бАнты', 'бОроду', 'бухгАлтеров', 'вероисповЕдание', 'граждАнство', 'дефИс', 'диспансЕр', 'договорЁнность', 'докумЕнт', 'досУг', 'жалюзИ', 'знАчимость', 'каталОг', 'диалОг', 'монолОг', 'некролОг', 'квартАл', 'корЫсть', 'крАны', 'лЕкторы', 'лЕкторов', 'мЕстностей', 'пОчестей', 'чЕлюстей', 'новостЕй', 'намЕрение', 'недУг', 'нОвости',  'овостЕй', 'мЕстностей', 'нОготь', 'нОгтя', 'Отрочество', 'портфЕль', 'пОручни', 'свЁкла', 'сирОты', 'срЕдства', 'созЫв', 'тамОжня','тОрты', 'тОртов', 'цепОчка', 'шАрфы', 'бАнты', 'шофЁр', 'киоскЁр', 'контролЁр', 'экспЕрт'];

var r=Random(49);
String wor = '';
int val1=-1;
int val2=-1;
bool value=false;
bool val=false;
int count=0;
int rnd=0;
Random random = new Random();
//int randomNumber = random.nextInt(49);

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.fromLTRB(0.0,150.0,0.0,0.0),

      itemCount:a.length,
      itemBuilder: (BuildContext context,int index){
        return ListTile(
          //height: 50,
          title:Text(' ${a[index]}',textAlign: TextAlign.center,style: TextStyle(
            fontSize: 20.0,//размер
          ),),
          selected: index==_selectedIndex,
          onTap: (){
            setState((){
              _selectedIndex=index;
            });
          },
        );

      },
    );
  }
}


//существительные
class Sush extends StatefulWidget {
  const Sush({Key? key}) : super(key: key);

  @override
  _SushState createState() => _SushState();
}

class _SushState extends State<Sush> {
  int _selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(title: Text("Существительные"),
            actions:[
              IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon (Icons.arrow_back_ios)),
              IconButton(onPressed: (){}, icon: Icon (Icons.school)),
              TextButton(
                onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)  =>Podsk()));},
                child: const Text("Подсказка"),style: ButtonStyle(
                //backgroundColor: MaterialStateProperty.all<Color>(Colors.black38),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              ),
              ),
            ]
        ),
        body:

        Container (
          decoration: const BoxDecoration(
            image:DecorationImage(
              image: AssetImage("assets/qwe.jpg"),
              fit:BoxFit.fill,
            ),),
          //width:double.infinity,

          child:MyStatefulWidget(),)));}}



          /*child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [






          /*Padding(
                padding:EdgeInsets.symmetric(horizontal: 60.0),
                child: RadioListTile(
                  title:  Text(a[4],style:const TextStyle(fontSize:20.0) ,),
                  value: 1,
                  groupValue: val1,
                  onChanged: (value) {
                    setState(() {
                      val1 = 1;
                    });
                  },
                  activeColor:Colors.blue,),
              ),
              Padding(
                padding:EdgeInsets.symmetric(horizontal: 60.0),
                child: RadioListTile(
                  title:  Text(b[4],style:const TextStyle(fontSize:20.0) ,),
                  value: 2,
                  groupValue: val1,
                  onChanged: (value) {
                    setState(() {
                      val1 = 2;
                    });
                  },
                  activeColor:Colors.blue,),
              ),*/


            ],
          ),
        ),

      ),
    );


  }
}*/