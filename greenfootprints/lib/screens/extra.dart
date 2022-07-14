import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
//import 'package:firebase_core/firebase_core.dart';

class ExtraPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(25.0),
        child: Text('Extra Page', style: TextStyle(fontSize: 36.0)));
  }
}

_showInSnackBar(BuildContext context) {
  Scaffold.of(context).showSnackBar(SnackBar(
    content: Text('Successfully Submitted'),
  ));
}

class MrMultiLineTextFieldAndButton extends StatefulWidget {
  MrMultiLineTextFieldAndButton({Key key}) : super(key: key);

  @override
  createState() => _TextFieldAndButtonState();
}

class _TextFieldAndButtonState extends State<MrMultiLineTextFieldAndButton> {
  final TextEditingController _multiLineTextFieldcontroller =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),

      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      //color: Colors.grey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text(
            "Feedback",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          Divider(
            height: 40,
            color: Colors.grey[50],
            thickness: 20,
          ),
          TextField(
            controller: _multiLineTextFieldcontroller,
            maxLines: 7,
            decoration: InputDecoration(
              hintText: 'Type your feedback here',
            ),
            onChanged: (str) => print('Multi-line text change: $str'),
            onSubmitted: (str) =>
                print('This will not get called when return is pressed'),
          ),
          SizedBox(height: 10.0),
          FlatButton(
            onPressed: () async {
              _showInSnackBar(context);
              await FirebaseFirestore.instance.collection("Feedbacks").add({
                'feedback': _multiLineTextFieldcontroller.text,
              });
              _multiLineTextFieldcontroller.text = "";
            },
            child: const Text('Submit'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            color: Colors.teal,
            textColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
