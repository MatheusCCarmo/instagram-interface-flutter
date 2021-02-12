import 'package:flutter/material.dart';

class ProfilePanel extends StatelessWidget {
  Widget panelData(String title, int value) {
    return Container(
      width: 62,
      child: Column(
        children: [
          Text(
            value.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(title),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 15, right: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 36,
                backgroundImage: NetworkImage(
                    'https://spassodourado.com.br/wp-content/uploads/2015/01/default-placeholder.png'),
              ),
              panelData('Posts', 66),
              panelData('Followers', 857),
              panelData('Following', 843),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'John Doe',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('Software Developer'),
          Text('Brazil'),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(5),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Colors.black26),
            ),
            child: Text('Edit Profile'),
          ),
        ],
      ),
    );
  }
}
