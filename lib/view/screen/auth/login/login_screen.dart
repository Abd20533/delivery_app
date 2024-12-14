import 'package:delivery_app/core/mycore/extentions.dart';
import 'package:delivery_app/core/shaerd/shared_whit_getx.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      appBar: AppBar(title: const Text(" Login "),centerTitle: true,),
      body: Container(child: const Text("enter").center().onTap(() {
        CashHelperWithGetX.test();

      },),),

    );
  }
}
