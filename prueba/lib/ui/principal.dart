import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prueba/data/covid_provider.dart';
import 'package:client_dart_plugin/src/messages/respCurrent.dart';
import 'package:client_dart_plugin/src/messages/rqCovid.dart';


class PrincipalPage extends StatefulWidget {
  const PrincipalPage({ Key key }) : super(key: key);

  @override
  State<PrincipalPage> createState() => _PrincipalPageState();
}

class _PrincipalPageState extends State<PrincipalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          _covidCurrent(),
          //_card()

        ],
      ),
    );
  }


  Widget _covidCurrent() {
    final provider = Provider.of<CovidCurrentProvider>(context);

    return FutureBuilder(
      future: provider.datosCovid(),
      builder: (_, AsyncSnapshot<RespCurrent> snapshot){
        if(snapshot.hasData){
          final covid = snapshot.data;

          return ListView.builder(
            itemCount: covid.rp.length,
            itemBuilder: (_, int i){
              return _card();
            },
          );
        }else{
          return Center(
            child: CircularProgressIndicator()
          );
        }
      },
    );
  }

  Widget _card(){
    return Card(
      child: ListTile(
        title: Text("Covid App"),
      ),
      elevation: 8,
      shadowColor: Colors.lightBlue,
      margin: EdgeInsets.all(20),
      shape:  OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.lightBlue, width: 1)
      ),
    );
  }
}