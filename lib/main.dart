import 'package:flutter/material.dart';
import './style.dart';

void main(){
  runApp(const MonAppli());
}

class MonAppli extends StatelessWidget{
  const MonAppli({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Magazine',
      home: PageAccueil(),
    );
  }
}

class PageAccueil extends StatelessWidget{
  const PageAccueil({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Magazine Infos', style: AppTextStyles.titre),
        centerTitle: true,
        leading:IconButton(
          onPressed: (){}, 
          icon: Icon(Icons.menu, color: Colors.white,)),
        backgroundColor: Colors.pink,
        actions: [
          IconButton(
            onPressed: (){},
             icon: Icon(Icons.search, color: Colors.white,)
             )
        ],
      ),
      body: Column (
         children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: Image(image: AssetImage('assets/images/trump.jpg'),),
          ),
           PartieTitre(),
           PartieTexte(),
           PartieIcon(),
           PartieRubrique()
         ]
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print("tu as clique dessus");
        },
        backgroundColor: Colors.pink,
        child: Text('Click', style: TextStyle(color: Colors.white),),
        ),
    );
  }
}

class PartieTitre extends StatelessWidget{
  const PartieTitre({super.key});

  @override
  Widget build(BuildContext context) {
   return Container(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Column(
      children: [
        Text("la guerre de l'iran", style: AppTextStyles.sousTitre,),
        Text("Deuxiemme semaine de guerre intansive", style: AppTextStyles.sstitre,)
      ],
    ),
   );
  }
}

class PartieTexte extends StatelessWidget{
  const PartieTexte({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Text("On est deja  dans la deuxieme semaine de la guerre entre l'iran, l'israel et les USA.\n Des centaine des misiles iraniens abbatus sur les infrastrures des pays de golf en represaille des frappes menees par les USA contre l'Iran, la republique islamique se tient pret a continuer et a garder la meme intansite ", style: AppTextStyles.textOrdinaire,),
    );
    
  }
}

class PartieIcon extends StatelessWidget{
  const PartieIcon({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            onPressed: (){},
             icon: Icon(Icons.phone, color: Colors.pink,),
             ),
             Text("APPEL"),

          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.mail, color: Colors.pink,),
            ),
            Text("MESSAGE"),
          IconButton(
            onPressed: (){}, 
            icon: Icon(Icons.share, color: Colors.pink,),
            
            ),
            Text("PARTAGE")
        ],
      ),
    );
  }
}

class PartieRubrique extends StatelessWidget{
  const PartieRubrique({super.key});

  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('assets/images/donal.jpg'), width: 150, height: 150,),
          SizedBox(width: 10.0,),
          Image(image: AssetImage('assets/images/guide.jpg'), width: 150, height: 150,)
        ],
      ),
    );
  }
}