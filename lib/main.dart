import 'package:flutter/material.dart';
import 'myprojects.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Maed Technologies',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController =TabController(length: 2, vsync: this);
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text('MaedTech', style: TextStyle(color: Colors.black, fontWeight: FontWeight.w200),),
            leading: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black,), onPressed: (){}),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: IconButton(icon: Icon(Icons.edit,color: Colors.black,), onPressed: (){}),
          )
        ],
      ),
      body: ListView(

        children: <Widget>[
          Container(
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 15),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(image: AssetImage('assets/maed.png'),
                          fit: BoxFit.cover

                        )
                      ),
                    ),
                  ),

                ),
              
              ],
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
              
              children: <Widget>[
                SizedBox(height: 20),
                Text('Maed Technologies',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.pink[200],
                    ),
                  ),
                SizedBox(height: 10,child: Container(
                  color: Colors.white,
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.location_on, size: 17,),
                    Text('Adama,Ethiopia',
                      style: TextStyle(
                          fontSize: 10,
                          color: Colors.black.withOpacity(0.6)
                      ),)

                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 15,child: Container(
            color: Colors.white,
          ),),
          Container(
            color: Colors.white,
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(25, 10, 25, 10),
                  height: 100,
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink[200],

                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 10.0,
                        spreadRadius: 2,

                      )
                    ]
                  ),
                  

                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text('112 k',
                          style: TextStyle(fontSize: 14, color: Colors.black),),
                          SizedBox(height: 5,),
                          Text('followers', style: TextStyle( fontSize: 14, color: Colors.black.withOpacity(0.5)),)
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('100',
                            style: TextStyle(fontSize: 14, color: Colors.black),),
                          SizedBox(height: 5,),
                          Text('Customers', style: TextStyle( fontSize: 14, color: Colors.black.withOpacity(0.5)),)
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Text('1500',
                            style: TextStyle(fontSize: 14, color: Colors.black),),
                          SizedBox(height: 5,),
                          Text('Projects', style: TextStyle( fontSize: 14, color: Colors.black.withOpacity(0.5)),)
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5,),
          SizedBox(height: 20,child: Container(
            color: Colors.pink.withOpacity(0.2),
          ),),
          Container(
            color: Colors.white,
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.pink.withOpacity(0.5),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text('Finished ', style: TextStyle(fontSize: 20),),
                ),
                Tab(
                  child: Text('Started', style: TextStyle(fontSize: 20),),
                  
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            height: MediaQuery.of(context).size.height -450.0,
            child: TabBarView(
                controller: tabController,
              children: <Widget>[
                new Myprojects(),
                new Myprojects(),
              ],
                ),
          ),

        ],
      )
    );
  }
}
