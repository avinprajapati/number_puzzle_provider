import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:number_puzzle_provider/data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => controller(),
        child: Home(),
      )));
}

class Home extends StatelessWidget {
  // const Home({super.key});

  @override
  Widget build(BuildContext context) {
    controller d = Provider.of(context);

    return Scaffold(body: Consumer<controller>(
      builder: (context, value, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: () => d.first(), child: fun(d, 0)),
                InkWell(onTap: () => d.second(),child: fun(d, 1)),
                InkWell(onTap: () => d.third(),child: fun(d, 2)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: () => d.four(), child: fun(d, 3)),
                InkWell(onTap: () => d.five(),child: fun(d, 4)),
                InkWell(onTap: () => d.six(),child: fun(d, 5)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(onTap: () => d.seven(), child: fun(d, 6)),
                InkWell(onTap: () => d.eight(),child: fun(d, 7)),
                InkWell(onTap: () => d.nine(),child: fun(d, 8)),
              ],
            ),
            ElevatedButton(onPressed: () {
              d.reset();
            }, child: Text("RESET")),
            Text("${d.msg}")
          ],
        );
      },
    ));
  }

  Widget fun(controller d, int i) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: 100,
          color: Colors.cyan,
          child: Text("${d.l[i]}"),
        ),
      ),
    );
  }
}
