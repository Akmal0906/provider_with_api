import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_with_api/presentation/providers/user_provider.dart';

class ShowData extends StatefulWidget {
  const ShowData({super.key});

  @override
  State<ShowData> createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
  @override
  void initState() {
    super.initState();
    Provider.of<UserProvider>(context,listen: false).getCurrentUser();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer<UserProvider>(
              builder: (BuildContext context, value, Widget? child) {
                return Text(value.userModel.last_name.toString());
              },

            ),
            
          ],
        ),
      ),
    );
  }
}
