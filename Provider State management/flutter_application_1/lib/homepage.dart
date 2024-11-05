import 'package:flutter/material.dart';
import 'package:flutter_application_1/counter_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //int _count = 0; now data will not be handled here as we are seprating the data from the UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Home')),
      ),
      body: Center(child: Consumer<CounterProvider>(builder: (ctx, _, __) {
        // here we are using the consumer to make sure that only the requried widget build agian other the whole screen will rebuild
        return Text(
          "${Provider.of<CounterProvider>(ctx, listen: true).getCount()}",
          //{Provider.of(context)} this function is used to fetch the data
          //context is used for calling the ancestor widget
          //<CounterProvider> is the type of the widget which we are getting
          //if we are getting the value than set the listen property to true

          style: TextStyle(fontSize: 30),
        );
      })),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Provider.of<CounterProvider>(context, listen: false).incrementCount();
          //here we have set the listen to false because we are making changes in the data using the events this is not the observable function

          //here we are using the another method to call the provider
          context.read<CounterProvider>().incrementCount();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
