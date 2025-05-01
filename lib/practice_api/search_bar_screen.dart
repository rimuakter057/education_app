import 'package:education_app/services/network_caller.dart';
import 'package:flutter/material.dart';


class SearchBarScreen extends StatefulWidget {
  const SearchBarScreen({super.key});

  @override
  State<SearchBarScreen> createState() => _SearchBarScreenState();
}

class _SearchBarScreenState extends State<SearchBarScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("search bar"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(height: 100,),

          SearchBar(
            hintText: "Search",
            leading: Icon(Icons.search),
            onChanged: (value){

            },
          ),

        ],),
      ),
    );
  }


  Future <void> getData()async{
      final response= await NetworkCaller.getRequest("https://freeipapi.com/api/json/103.72.61.177");
  if(response.isSuccess && response.responseData!=null){
    debugPrint(response.responseData.toString());
  }

  }











}
