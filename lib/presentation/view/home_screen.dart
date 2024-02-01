import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_with_api/presentation/providers/user_provider.dart';
import 'package:provider_with_api/presentation/view/show_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    Provider.of<UserProvider>(context, listen: false).getCurrentUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Consumer<UserProvider>(
          builder: (BuildContext context, value, Widget? child) {
            return ListTile(
              title: value.userModel.id != null
                  ? Text(value.userModel.id.toString())
                  :const Center(
                child: CircularProgressIndicator(),
              ),
              subtitle:
                  Text(value.userModel.position.toString())

            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child:const Icon(Icons.add),
        onPressed: () {
          context.read<UserProvider>().getCurrentUser();
          Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ShowData()));
        },
      ),
    );
  }
}
