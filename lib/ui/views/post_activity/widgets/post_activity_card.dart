import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PostActivityCard extends StatelessWidget {
  const PostActivityCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //TODO ACTUAL TIME OF POST
    String date = DateTime.now().day.toString() + '/' + DateTime.now().month.toString() + '/' + DateTime.now().year.toString() + ' - ' + DateTime.now().hour.toString() + ':' + DateTime.now().minute.toString();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: InkWell(
        onTap: () {
          //TODO
        },
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 110,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xffFFD683).withOpacity(0.5),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      date,
                      style: TextStyle(color: Color(0xff59344F), fontWeight: FontWeight.w300, fontSize: 13),
                    ),
                    Center(
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRn9pdTSmjBgAb8SkBRQzWoLSctU30pe2SFZg&usqp=CAU'), fit: BoxFit.fill),
                              shape: BoxShape.circle,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            width: 250,
                            child: Text(
                              'Mohammed wants to Adopt Sameer.. Click for information',
                              style: TextStyle(color: Color(0xff59344F), fontWeight: FontWeight.w400, fontSize: 14),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
