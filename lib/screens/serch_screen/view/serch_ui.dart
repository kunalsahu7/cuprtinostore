import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../home_screen/provider/homeprovider.dart';

class Searchscreen extends StatefulWidget {
  const Searchscreen({Key? key}) : super(key: key);

  @override
  State<Searchscreen> createState() => _SearchscreenState();
}

class _SearchscreenState extends State<Searchscreen> {
  HomeProvider? homeproviderfalse;
  HomeProvider? homeprovidertrue;

  @override
  Widget build(BuildContext context) {
    HomeProvider homeprovidertrue =
    Provider.of<HomeProvider>(context, listen: true);
    HomeProvider homeproviderfalse =
    Provider.of<HomeProvider>(context, listen: false);

    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.white,
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              margin: EdgeInsets.all(10),
              height: 40,
              width: double.infinity,
              decoration: BoxDecoration(
                color: CupertinoColors.systemGrey,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    CupertinoIcons.search,
                    color: CupertinoColors.black,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("Search",
                      style: TextStyle(
                          color: CupertinoColors.black, letterSpacing: 1)),
                  Spacer(),
                  Icon(CupertinoIcons.chevron_up_chevron_down,
                      color: CupertinoColors.black),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
            ),
            ListView.builder(
              itemBuilder: (context, index) => productBox(
                homeproviderfalse.Images[index + 2],
                homeproviderfalse.Name[index + 2],
                homeproviderfalse.Price[index + 2],
              ),
              shrinkWrap: true,
              itemCount: 5,
            ),
          ],
        ),
      ),
    );
  }

  Widget productBox(String images, String name, String price) {
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
              height: 70,
              width: 70,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(color: CupertinoColors.systemGrey, width: 1),
                  )),
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
                          style: TextStyle(fontSize: 15, letterSpacing: 1),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "\$ $price",
                          style: TextStyle(
                              fontSize: 12,
                              letterSpacing: 1,
                              color: CupertinoColors.systemGrey),
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