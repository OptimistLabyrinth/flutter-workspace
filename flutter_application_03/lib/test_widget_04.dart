import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_03/providers/counter.dart';

class TestWidget04 extends StatelessWidget {
  const TestWidget04({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Provider Example'),
        ),
        body: Column(
          children: const [
            Expanded(
              child: WidgetAbove(),
            ),
            Expanded(
              child: WidgetBelow(),
            ),
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              key: const Key('decrement_floatingActionButton'),
              onPressed: () => context.read<Counter>().decrement(),
              tooltip: 'Decrement',
              child: const Icon(Icons.remove),
            ),
            const SizedBox(
              width: 10.0,
            ),
            FloatingActionButton(
              key: const Key('reset_floatingActionButton'),
              onPressed: () => context.read<Counter>().reset(),
              tooltip: 'Reset',
              child: const Icon(Icons.exposure_zero),
            ),
            const SizedBox(
              width: 10.0,
            ),
            FloatingActionButton(
              key: const Key('increment_floatingActionButton'),
              onPressed: () => context.read<Counter>().increment(),
              tooltip: 'Increment',
              child: const Icon(Icons.add),
            ),
          ],
        ),
      ),
    );
  }
}

class WidgetAbove extends StatelessWidget {
  const WidgetAbove({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: const [
          Expanded(
            child: Center(
              child: Text(
                'Above Counter:',
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: CountView(),
            ),
          ),
        ],
      ),
    );
  }
}

class WidgetBelow extends StatelessWidget {
  const WidgetBelow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: const [
          Expanded(
            child: Center(
              child: Text(
                'Below Counter:',
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: CountView(),
            ),
          ),
        ],
      ),
    );
  }
}

class CountView extends StatelessWidget {
  const CountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '${context.watch<Counter>().count}',
      key: const Key('counterState'),
      style: Theme.of(context).textTheme.headline4,
    );
  }
}
