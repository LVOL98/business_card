import 'package:flutter/cupertino.dart';

class MasterAlgorithmPage extends StatefulWidget {
  @override
  _MasterAlgorithmPageState createState() => _MasterAlgorithmPageState();
}

class _MasterAlgorithmPageState extends State<MasterAlgorithmPage> {
  @override
  Widget build(BuildContext context) {
    /* return Scaffold(
      appBar: AppBar(),
      body: OrientationBuilder(builder: (context, orientation) {
        
        if (MediaQuery.of(context).size.width > 600) {
          isLargeScreen = true;
        } else {
          isLargeScreen = false;
        }

        return Row(children: <Widget>[
          Expanded(
            child: ListWidget(10, (value) {
              if (isLargeScreen) {
                selectedValue = value;
                setState(() {});
              } else {
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return DetailPage(value);
                  },
                ));
              }
            }),
          ),
          isLargeScreen ? Expanded(child: DetailWidget(selectedValue)) : Container(),
        ]);
      }),
    );
  }
} */
  }
}
