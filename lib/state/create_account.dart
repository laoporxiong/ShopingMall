import 'package:flutter/material.dart';
import 'package:shopingmall/utility/my_constant.dart';
import 'package:shopingmall/widget/show_title.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  Row buildName(double size) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.only(top: 16),
          width: size * 0.6,
          child: TextFormField(
            decoration: InputDecoration(
              labelStyle: MyConstant().h2Style(),
              labelText: 'Name :',
              prefixIcon: Icon(
                Icons.face,
                color: MyConstant.ligth,
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyConstant.dart),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: MyConstant.ligth),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create New Account',
        ),
        backgroundColor: MyConstant.primary,
      ),
      body: ListView(padding: EdgeInsets.all(16), children: [
        buildTitle('ຂໍ້ມູນທົ່ວໄປ:'),
        buildName(size),
        buildTitle('Type of User:')
      ]),
    );
  }

  Container buildTitle(String title) {
    return Container(
      margin: EdgeInsets.all(16),
      child: ShowTitle(
        title: title,
        textStyle: MyConstant().h2Style(),
      ),
    );
  }
}
