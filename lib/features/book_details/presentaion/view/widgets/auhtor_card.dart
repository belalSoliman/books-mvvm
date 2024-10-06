import 'package:flutter/material.dart';

class AuhtorCard extends StatelessWidget {
  const AuhtorCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 4,
      color: Colors.white,
      child: Row(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: Container(
                child: const CircleAvatar(
              radius: 30,
              backgroundImage:
                  AssetImage('assets/images/delicious-sushi-rolls.jpg'),
              backgroundColor: Colors.white,
              //
            )),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "author",
                style: Theme.of(context).textTheme.titleSmall,
              ),
              Text("belal soliman elsadany"),
              Text(
                "best seller in new york",
                style: Theme.of(context).textTheme.titleSmall,
              ),
            ],
          ),
          Spacer(),
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
        ],
      ),
    );
  }
}
