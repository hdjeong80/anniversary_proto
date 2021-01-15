import 'package:anniversary_proto/theme/theme.dart';
import 'package:flutter/material.dart';

class TabToday extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 60, 30, 60),
      child: Column(
        children: [
          Row(
            children: [
              Text('Days', style: CustomTextStyles.heading1),
              Spacer(),
              IconButton(icon: Icon(Icons.search), onPressed: () => {}),
            ],
          ),
          Expanded(
            child: Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () => {},
                      child: Text(
                        'Days',
                        style: CustomTextStyles.content,
                      ),
                    ),
                    TextButton(
                      onPressed: () => {},
                      child: Text(
                        'Insiders',
                        style: CustomTextStyles.content,
                      ),
                    ),
                    TextButton(
                      onPressed: () => {},
                      child: Text(
                        'All',
                        style: CustomTextStyles.content,
                      ),
                    ),
                  ],
                ),
                // PreferredSize(
                //   preferredSize: Size.infinite,
                //   child: Center(
                //     child: PageView(
                //       children: <Widget>[
                //         Container(
                //           color: Colors.pink,
                //         ),
                //         Container(
                //           color: Colors.cyan,
                //         ),
                //         Container(
                //           color: Colors.deepPurple,
                //         ),
                //       ],
                //     )
                //   ),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
