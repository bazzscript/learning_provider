import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prvlearn2/providers/stateobject.dart';

void main() {
  runApp(const HomePage(
    title: 'Flutter App',
  ));
}

class HomePage extends StatelessWidget {
  final String title;
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => StateObject(),
      child: CustomWidget(
        title: title,
      ),
    );
  }
}

class CustomWidget extends StatelessWidget {
  final String title;
  const CustomWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Consumer<StateObject>(
                builder: (context, state, child) => Text(
                  state.textData(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline4,
                ),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Provider.of<StateObject>(context, listen: false)
                          .increase();
                    },
                    child: Row(
                      children: const [Icon(Icons.add), Text('Increase')],
                    ),
                  ),

                  //Decrease
                  ElevatedButton(
                    onPressed: () {
                      Provider.of<StateObject>(context, listen: false)
                          .decrease();
                    },
                    child: Row(
                      children: const [Icon(Icons.remove), Text('Decrease')],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
