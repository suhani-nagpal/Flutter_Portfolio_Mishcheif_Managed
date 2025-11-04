import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main(){
  runApp(const MyApp()); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      home: HomePage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), 
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void launcher()async{
   final Uri songurl =Uri.parse('https://open.spotify.com/track/3NrAMPb3hlWCmw9kepqBmM?si=1e810c62b06f431b');
   await launchUrl(songurl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Color.fromARGB(255, 31, 3, 66),
            body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 32.0, left: 24.0, right: 24.0, bottom: 24.0),
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 2,),
              Center(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 80,
                      foregroundColor: Color.fromARGB(255, 31, 3, 66),
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7dOZOxrKYqCghdVmliOGfA8rOI-dKyuvGNw&s'),
                    ),
                    const SizedBox(height: 10,),
                    const Text('Caffeinated Pixel',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                        color:Color(0xFFFAF0E6),
                      ),
                    ),
                    const SizedBox(height: 3,),
                    const Text('Building pixels into purpose',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color:Color(0xFFFAF0E6),

                      ),
                    )
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(onPressed: (){},
                      icon: Icon(Icons.web),
                      color:Color(0xFFFAF0E6),
                    iconSize: 25,
                  ),
                  IconButton(onPressed: (){},
                    icon: Icon(Icons.mail),
                    color:Color(0xFFFAF0E6),
                    iconSize: 25,
                  ),
                  IconButton(onPressed: (){},
                    icon: Icon(Icons.phone),
                    color:Color(0xFFFAF0E6),
                    iconSize: 25,
                  ),
                ],
              ),

              Text('About Me',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                  color:Color(0xFFFAF0E6),
                ),
              ),
              const SizedBox(height: 10,),
              const Text(
                'Half logic, half latte — that’s me.I’m the Caffeinated Pixel, a curious developer fueled by sleepless nights, endless debugging, and way too much caffeine. I love giving purpose to pixels and turning ideas into clean, creative code.A developer-in-progress, I’m exploring C++, Python, and Flutter — one semicolon and one playlist at a time — believing every bug fixed is a small step toward something extraordinary.',
                style: TextStyle(
                  fontSize: 16,
                  height: 1.5,
                  color:Color(0xFFFAF0E6),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                'My Skills',
                style:TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color:Color(0xFFFAF0E6),
                ),
              ),
              const SizedBox(height:16),
              Wrap(
                runSpacing:8,
                spacing:8,
                children:[
                  Chip(label:Text('C Language',style:TextStyle(color:Color(0xFFFAF0E6),),),
                  backgroundColor:Color.fromARGB(255, 55, 143, 186),),
                  Chip(label:Text('C++(work in progress))',style:TextStyle(color:Color(0xFFFAF0E6),),),
                  backgroundColor:Color.fromARGB(255, 33, 101, 135),),
                  Chip(label:Text('Debugging(emotional + logical)',style:TextStyle(color:Color(0xFFFAF0E6),),),
                  backgroundColor:Color.fromARGB(255, 55, 143, 186),),
                  Chip(label:Text('Python(Basics)',style:TextStyle(color:Color(0xFFFAF0E6),),),
                  backgroundColor:Color.fromARGB(255, 33, 101, 135),),
                  Chip(label:Text('Googling Skills',style:TextStyle(color:Color(0xFFFAF0E6),),),
                  backgroundColor:Color.fromARGB(255, 55, 143, 186),),
                ],
              ),
              const SizedBox(height:20),
              const Divider(color:Color.fromARGB(255, 226, 148, 99)),
              const SizedBox(height:20),
              const Text(
                'Vibes.exe',
                style: TextStyle(
                  fontSize:22,
                  fontWeight:FontWeight.bold,
                  color:Colors.white,

                ),
              ),
              const SizedBox(height:20),
              SongBox(launchUrlCallback:(){}),

            ],
          ),
        ),
      ),
    );
  }
}
Widget SongBox({required VoidCallback launchUrlCallback}){
  return InkWell( 
    onTap: launchUrlCallback, 
    child: Container(
      padding: EdgeInsets.only(left: 10 , right: 10 , top: 10 , bottom: 10),
      decoration: BoxDecoration( 
        color: Colors.white10,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ListTile( 
            leading: Icon(Icons.music_note_outlined, color: Color.fromARGB(255, 66, 188, 176),),
            title:  Text('Mischeif Managed',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text('powered by: Caffeine & Spells',),
            trailing: IconButton( 
              icon: Icon(Icons.play_circle_fill, color: Colors.teal, size: 40),
              onPressed: launchUrlCallback, 
            ),
          ),
          const SizedBox(height:20),
              const Text(
                'Made in Flutter🤍',
                style: TextStyle(
                  fontSize:15,
                  fontWeight:FontWeight.bold,
                  color:Colors.white,

                ),
              ),
        ],
      ),
    ),
  );
}