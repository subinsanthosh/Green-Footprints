import 'package:flutter/material.dart';

class CatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(25.0),
        child: Text('Calculation Page', style: TextStyle(fontSize: 36.0)));
  }
}

class CalPage extends StatefulWidget {
  @override
  _CalPageState createState() => _CalPageState();
}

List<String> _locations = [
  'Very Frequently',
  'Frequently',
  'Occasionally',
  'Rarely',
  'Very Rarely'
]; // Option 2
String _selectedLocation; // Option 2

List<String> _locations1 = [
  'Very Frequently',
  'Frequently',
  'Occasionally',
  'Rarely',
  'Very Rarely'
]; // Option 2
String _selectedLocation1;

List<String> _locations2 = [
  'Very Frequently',
  'Frequently',
  'Occasionally',
  'Rarely',
  'Very Rarely'
]; // Option 2
String _selectedLocation2; // Option 2

List<String> _locations3 = [
  'Very Frequently',
  'Frequently',
  'Occasionally',
  'Rarely',
  'Very Rarely'
]; // Option 2
String _selectedLocation3;

class _CalPageState extends State<CalPage> {
  bool short = false, long = false;
  @override
  void initState() {
    super.initState();
    setState(() {
      short = false;
      long = false;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 35),
          alignment: Alignment.topCenter,
          child: Column(
            children: <Widget>[
              Text(
                "Footprints Calculator",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal),
              ),
              Divider(
                height: 30,
                color: Colors.grey[50],
                thickness: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('⠀⠀⠀Car/Bike Used :     '),
                  Container(width: 8),
                  DropdownButton(
                    hint: Text('Select'), // Not necessary for Option 1
                    value: _selectedLocation,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedLocation = newValue;
                      });
                    },
                    items: _locations.map((location) {
                      return DropdownMenuItem(
                        child: new Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('⠀⠀⠀Plastic Used :         '),
                  Container(width: 8),
                  DropdownButton(
                    hint: Text('Select'), // Not necessary for Option 1
                    value: _selectedLocation1,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedLocation1 = newValue;
                      });
                    },
                    items: _locations1.map((location) {
                      return DropdownMenuItem(
                        child: new Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                ],
              ),
              Divider(
                height: 30,
                color: Colors.grey[50],
                thickness: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('   Recycled/Reused :     '),
                  Container(width: 8),
                  DropdownButton(
                    hint: Text('Select'), // Not necessary for Option 1
                    value: _selectedLocation2,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedLocation2 = newValue;
                      });
                    },
                    items: _locations2.map((location) {
                      return DropdownMenuItem(
                        child: new Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Public Transport Used :'),
                  Container(width: 8),
                  DropdownButton(
                    hint: Text('Select'), // Not necessary for Option 1
                    value: _selectedLocation3,
                    onChanged: (newValue) {
                      setState(() {
                        _selectedLocation3 = newValue;
                      });
                    },
                    items: _locations3.map((location) {
                      return DropdownMenuItem(
                        child: new Text(location),
                        value: location,
                      );
                    }).toList(),
                  ),
                ],
              ),
              Divider(
                height: 30,
                color: Colors.grey[50],
                thickness: 20,
              ),
              RaisedButton(
                child: const Text('Submit'),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: Colors.teal,
                textColor: Colors.white,
                onPressed: () async {
                  setState(() {
                    short = true;
                  });
                },
                onLongPress: () async {
                  setState(() {
                    long = true;
                  });
                },
              ),
              short == true
                  ? Imagegreen()
                  : long == true
                      ? Imageblack()
                      : Container(),
            ],
          ),
        ),
      ),
    );
  }
}

class Imagegreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/images/greenn.png');
    Image image = Image(
      image: assetImage,
      width: 200.0,
      height: 200.0,
    );
    return Container(
      alignment: Alignment.bottomCenter,
      child: image,
    );
  }
}

class Imageblack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('assets/images/blacks.png');
    Image image = Image(
      image: assetImage,
      width: 250.0,
      height: 250.0,
    );
    return Container(
      child: image,
    );
  }
}
