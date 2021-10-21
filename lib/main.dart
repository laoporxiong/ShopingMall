import 'package:flutter/material.dart';
import 'package:shopingmall/state/authen.dart';
import 'package:shopingmall/state/buyer_service.dart';
import 'package:shopingmall/state/create_account.dart';
import 'package:shopingmall/state/rider_service.dart';
import 'package:shopingmall/state/seller_service.dart';
import 'package:shopingmall/utility/my_constant.dart';


final Map<String,WidgetBuilder>map = {
'/authen':(BuildContext context)=>Authen(),
'/createAccount':(BuildContext context)=>CreateAccount(),
'/buyerService':(BuildContext context)=>BuyerService(),
'/sellerService':(BuildContext context)=>SellerService(),
'/riderService':(BuildContext context)=>RiderService(),
};
String? initailiRoute;

void main(){
  initailiRoute = MyConstant.rounteAuthen;
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: MyConstant.appName,
      routes: map,
      initialRoute: initailiRoute,
      
    );
  }
}