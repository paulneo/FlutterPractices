import 'package:flutter/material.dart';

class SelectCity extends StatefulWidget {
  SelectCity({Key key}) : super(key: key);

  @override
  _SelectCityState createState() => _SelectCityState();
}

class _SelectCityState extends State<SelectCity> {

  String dropdownValue = 'Puno';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/Back1.png')
              )
            )
          ),
          Container(
            margin: EdgeInsets.only(
              top: MediaQuery.of(context).size.height * 0.55,
              
            ),
            child: Column(
              children: <Widget>[
                Container(
                  alignment: Alignment(0.4, 0),
                  child:RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.normal
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'E', style: TextStyle(color: Color(0xFFFB0512))),
                        TextSpan(text: 'vent'),
                        TextSpan(text: 'H', style: TextStyle(color: Color(0xFFFB0512))),
                        TextSpan(text: 'eart'),
                      ],
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment(0.2, 0),
                  child: Text(
                    'LOS EVENTOS EN TUS MANOS',
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  )
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    top: 90, 
                  ),
                  child: Text(
                    'selecciona tu ciudad',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                  ),
                ),
                Container(
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: Colors.white,
                              
                            ),
                            iconSize: 24,
                            elevation: 16,
                            style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),
                            dropdownColor: Colors.white,
                            underline: Container(
                              height: 1.5,
                              color: Colors.white,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>['Puno', 'Arequipa', 'Lima']
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value,),
                              );
                            }).toList(),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(vertical: 30.0),
                          child: InkWell(
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Container(
                                  margin: EdgeInsets.only(
                                    right: 20
                                  ),
                                  child: Text(
                                    'Buscar evento',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_forward,
                                  color: Color(0xFFFB0512),
                                  size: 25,
                                )
                              ],
                            ),
                            onTap: (){
                              Navigator.pushNamed(context, '/home');
                            },
                          )
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}