import 'package:flutter/material.dart';
import 'package:instagram/widgets/profile/profile_panel_button.dart';

class ProfilePanel extends StatelessWidget {
  Widget panelData(String title, int value) {
    return Container(
      // width: 62,
      child: Column(
        children: [
          Text(
            value.toString(),
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            title,
          ),
        ],
      ),
    );
  }

  Widget nameText(String name) {
    return Text(
      name,
      style: TextStyle(fontWeight: FontWeight.bold, height: 1.2),
    );
  }

  Widget biographyText(String text) {
    return Text(
      text,
      style: TextStyle(height: 1.2),
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
              Expanded(
                child: Container(
                  // margin: EdgeInsets.only(right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      panelData('Posts', 66),
                      panelData('Followers', 857),
                      panelData('Following', 843),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          nameText('John Doe'),
          biographyText('Software Developer \nBrazil'),
          Container(
            margin: EdgeInsets.only(top: 15),
            child: Column(
              children: [
                ProfilePanelButton('Edit Profile'),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      flex: 20,
                      child: ProfilePanelButton(
                        'Promotions',
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Flexible(
                      flex: 20,
                      child: ProfilePanelButton(
                        'Insights',
                      ),
                    ),
                    Spacer(
                      flex: 1,
                    ),
                    Flexible(
                      flex: 20,
                      child: ProfilePanelButton(
                        'Saved',
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
