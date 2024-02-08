import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inc_dec_with_bloc/bloc/counter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: BlocBuilder<CounterBloc, CounterState>(
          builder: (context, state) {
            if (state is CounterSuccess) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    state.count.toString(),
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FilledButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(
                                CountDecrement(),
                              );
                        },
                        child: Text('-'),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      FilledButton(
                        onPressed: () {
                          context.read<CounterBloc>().add(
                                CountIncrement(),
                              );
                          print(state.count);
                        },
                        child: Text('+'),
                      ),
                    ],
                  ),
                ],
              );
            }
            return Center(
              child: GestureDetector(
                onTap:(){
                  print(state);
                },
                child: ColoredBox(
                  color: Colors.redAccent,
                  child: SizedBox.square(
                    dimension: 100,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
