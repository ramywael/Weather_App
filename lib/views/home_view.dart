import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: null,
      extendBodyBehindAppBar: true,
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 82),
        height: 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: [
            const Color(0xff5C88ED).withOpacity(.8),
            const Color(0xff5C88ED).withOpacity(.4),
          ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 12,left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
             const     Icon(Icons.menu_sharp,color: Colors.white,size: 40,),
             const  Row(
                 children: [
                      Icon(Icons.location_on,color: Colors.white,size: 25,),
                      SizedBox(width: 5,),
                      Text("London",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                     SizedBox(width: 10,),
                     Icon(Icons.arrow_downward_sharp,color: Colors.white,size: 25,),
                 ],
               ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.asset("assets/R.png",width: 40,height: 40,),
                    ),
                  ),

                ],
              ),
            ),
            Image.asset("assets/cloud.png",width: 200,height: 200,),
             const Text("32°",style: TextStyle(color: Color(0xffA9CBEC),fontSize: 50,fontWeight: FontWeight.bold),),
              const SizedBox(height: 10,),
               Text("Cloudy",style: TextStyle(color: Colors.white.withOpacity(.5),fontSize: 25,fontWeight: FontWeight.bold),),
          ],
        ),
      ),

    );
  }
}
