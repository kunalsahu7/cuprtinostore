import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import '../../home_screen/provider/homeprovider.dart';
import '../provider/cart_provider.dart';

class Cartscreen extends StatefulWidget {
  const Cartscreen({Key? key}) : super(key: key);

  @override
  State<Cartscreen> createState() => _CartscreenState();
}

class _CartscreenState extends State<Cartscreen> {
  CartScreenProvider? cartScreenProviderfalse;
  CartScreenProvider? cartScreenProvidertrue;
  HomeProvider? homeProviderfalse;

  @override
  Widget build(BuildContext context) {
    cartScreenProviderfalse =
        Provider.of<CartScreenProvider>(context, listen: false);
    cartScreenProvidertrue =
        Provider.of<CartScreenProvider>(context, listen: true);
    homeProviderfalse = Provider.of<HomeProvider>(context, listen: false);
    return SafeArea(
      child: CupertinoPageScaffold(
        backgroundColor: CupertinoColors.white,
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Shoping Cart",
                style: TextStyle(
                    color: CupertinoColors.black,
                    letterSpacing: 1,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
            ),
            CupertinoTextField(
              decoration: BoxDecoration(
                color: CupertinoColors.white,
                border: Border.all(color: CupertinoColors.systemGrey),
              ),
              prefix: Icon(CupertinoIcons.person,
                  color: CupertinoColors.systemGrey),
            ),
            SizedBox(
              height: 5,
            ),
            CupertinoTextField(
              decoration: BoxDecoration(
                color: CupertinoColors.white,
                border: Border.all(color: CupertinoColors.systemGrey),
              ),
              prefix:
              Icon(CupertinoIcons.mail, color: CupertinoColors.systemGrey),
            ),
            SizedBox(
              height: 5,
            ),
            CupertinoTextField(
              decoration: BoxDecoration(
                color: CupertinoColors.white,
                border: Border.all(color: CupertinoColors.systemGrey),
              ),
              prefix: Icon(CupertinoIcons.location,
                  color: CupertinoColors.systemGrey),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: CupertinoTextField.borderless(
                prefix: Icon(
                  CupertinoIcons.time,
                  color: CupertinoColors.black,
                ),
                placeholder: "Delivery Time",
                suffix: Text(
                    " ${cartScreenProvidertrue!.dateTime.day}-${cartScreenProvidertrue!.dateTime.month}-${cartScreenProvidertrue!.dateTime.year} ${cartScreenProvidertrue!.dateTime.hour}:${cartScreenProvidertrue!.dateTime.minute} "),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 200,
              child: CupertinoDatePicker(
                onDateTimeChanged: (value) {
                  cartScreenProviderfalse!.changedate(value);
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            productBox(homeProviderfalse!.Images[2],homeProviderfalse!.Name[2],homeProviderfalse!.Price[2]),
            productBox(homeProviderfalse!.Images[4],homeProviderfalse!.Name[4],homeProviderfalse!.Price[4]),
            productBox(homeProviderfalse!.Images[8],homeProviderfalse!.Name[8],homeProviderfalse!.Price[8]),
          ],
        ),
      ),
    );
  }

  Widget productBox(String images,String name,String price) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 60,
      width: double.infinity,
      decoration: BoxDecoration(
        color: CupertinoColors.white,
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset("${images}", fit: BoxFit.cover),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            child: Container(
              height: 60,
              width: 60,
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
                    child: Text(
                      "\$ 120",
                      style: TextStyle(
                          fontSize: 12,
                          letterSpacing: 1,
                          color: CupertinoColors.systemGrey),
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