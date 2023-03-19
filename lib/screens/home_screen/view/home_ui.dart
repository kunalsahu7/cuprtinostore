import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../provider/homeprovider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<HomeScreen> {
  HomeProvider? homeproviderfalse;
  HomeProvider? homeprovidertrue;

  @override
  Widget build(BuildContext context) {
    homeproviderfalse = Provider.of<HomeProvider>(context, listen: false);
    homeprovidertrue = Provider.of<HomeProvider>(context, listen: true);
    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Apple Store",
                style: TextStyle(
                    color: CupertinoColors.black,
                    letterSpacing: 1,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
            ),
            Expanded(
              child: Container(
                child: ListView.builder(
                    itemBuilder: (context, index) => productBox(
                      homeproviderfalse!.Images[index],
                      homeproviderfalse!.Name[index],
                      homeproviderfalse!.Price[index],
                    ),
                    itemCount: homeproviderfalse!.Images.length,
                    shrinkWrap: true),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget productBox(String images, String name,String price) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: CupertinoColors.white,
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(
              "${images}",
              width: 70,
              height: 70,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(
                    color: CupertinoColors.inactiveGray.elevatedColor,
                    width: 1,
                  ),
                ),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$name",
                          style: TextStyle(fontSize: 15,),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "\$ $price",
                          style: TextStyle(
                            fontSize: 12,
                            letterSpacing: 1,
                            color: CupertinoColors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      CupertinoIcons.add_circled,
                      color: CupertinoColors.activeBlue,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}