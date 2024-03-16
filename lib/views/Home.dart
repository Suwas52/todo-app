import 'package:flutter/material.dart';
import 'package:todo_app/constants/colors.dart';


class Home extends StatelessWidget {
  const Home({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Todo Manager",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(7),
        child: ListView(
          children: [
            Container(
              child: ListTile(
                onTap: () {

                },
                contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 3),
                leading: Icon(Icons.check_box_outline_blank,color: Colors.black,),
                title: Text(
                  "Sent Reminder email to client",
                  style: TextStyle(
                      fontSize: 16,
                      color: tdBlack,

                  ),
                ),
                trailing: IconButton(
                  color: Colors.red,
                  iconSize: 24,
                  icon: Icon(Icons.delete),
                  onPressed: (){

                  },
                ),
              ),
            ),
            Container(
              child: ListTile(
                onTap: () {

                },
                contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 3),
                leading: Icon(Icons.check_box,color: Colors.red,),
                title: Text(
                  "Clean the table",
                  style: TextStyle(
                      fontSize: 16,
                      color: tdBlack,
                      decoration: TextDecoration.lineThrough
                  ),
                ),
                trailing: IconButton(
                  color: Colors.red,
                  iconSize: 24,
                  icon: Icon(Icons.delete),
                  onPressed: (){

                  },
                ),
              ),
            ),
            Container(
              child: ListTile(
                onTap: () {

                },
                contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 3),
                leading: Icon(Icons.check_box,color: Colors.red,),
                title: Text(
                  "Enquire jack's Health",
                  style: TextStyle(
                      fontSize: 16,
                      color: tdBlack,
                      decoration: TextDecoration.lineThrough
                  ),
                ),
                trailing: IconButton(
                  color: Colors.red,
                  iconSize: 24,
                  icon: Icon(Icons.delete),
                  onPressed: (){

                  },
                ),
              ),
            ),
            Container(
              child: ListTile(
                onTap: () {

                },
                contentPadding: EdgeInsets.symmetric(horizontal: 20,vertical: 3),
                leading: Icon(Icons.check_box_outline_blank,color: Colors.black,),
                title: Text(
                  "Learn to solves Rubiks cube",
                  style: TextStyle(
                      fontSize: 16,
                      color: tdBlack,
                  ),
                ),
                trailing: IconButton(
                  color: Colors.red,
                  iconSize: 24,
                  icon: Icon(Icons.delete),
                  onPressed: (){

                  },
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        onPressed: () {
          _showInputDialog(context);
        },
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  void _showInputDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5), // No rounded corners
          ),
          title: Text('Add Task'),
          content: TextField(
            style: TextStyle(color: Colors.blue), // Change text color here
            decoration: InputDecoration(
              hintText: 'Type your todo',
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.blue, width: 2), // Change underline color here
              ),
            ),
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel',style: TextStyle(
                color: Colors.blue,
              ),),
            ),
            ElevatedButton(
              onPressed: () {
                // Add your logic to save the todo
                Navigator.of(context).pop();
              },

              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              child: Text('Save',style: TextStyle(
                color: Colors.white
              ),),
            ),
          ],
        );
      },
    );
  }
}
