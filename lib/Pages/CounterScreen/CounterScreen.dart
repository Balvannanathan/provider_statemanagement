import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/Pages/CounterScreen/CounterScreenVM.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => CounterScreenVM(),
      child: Consumer<CounterScreenVM>(
        builder: (context, vm, _) {
          // final vm = context.watch<CounterScreenVM>();

          return Scaffold(
            appBar: AppBar(title: const Text('Counter')),
            body: Center(
              child: Text(
                vm.count.toString(),
                style: const TextStyle(fontSize: 40),
              ),
            ),
            floatingActionButton: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FloatingActionButton(
                  onPressed: vm.increment,
                  child: const Icon(Icons.add),
                ),
                const SizedBox(height: 10),
                FloatingActionButton(
                  onPressed: vm.decrement,
                  child: const Icon(Icons.remove),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
