

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:math_expressions/math_expressions.dart';
class Calc extends StatefulWidget {
  Calc({Key? key}) : super(key: key);

  @override
  State<Calc> createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  var a = "";
  int c = 0;
  var d = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator")),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$a"),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(onPressed: clear, child: Text("C")),
                FloatingActionButton(
                    onPressed: () {
                      enternumber("%");
                    },
                    child: Text("%")),
                FloatingActionButton(
                    onPressed: () {
                      enternumber(".");
                    },
                    child: Text(".")),
                FloatingActionButton(
                    onPressed: () {
                      enternumber("*");
                    },
                    child: Text("*")),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    onPressed: () {
                      enternumber("9");
                    },
                    child: Text("9")),
                FloatingActionButton(
                    onPressed: () {
                      enternumber("8");
                    },
                    child: Text("8")),
                FloatingActionButton(
                    onPressed: () {
                      enternumber("7");
                    },
                    child: Text("7")),
                FloatingActionButton(
                    onPressed: () {
                      enternumber("/");
                    },
                    child: Text("/")),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    onPressed: () {
                      enternumber("6");
                    },
                    child: Text("6")),
                FloatingActionButton(
                    onPressed: () {
                      enternumber("5");
                    },
                    child: Text("5")),
                FloatingActionButton(
                    onPressed: () {
                      enternumber("4");
                    },
                    child: Text("4")),
                FloatingActionButton(
                    onPressed: () {
                      enternumber("+");
                    },
                    child: Text("+")),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    onPressed: () {
                      enternumber("3");
                    },
                    child: Text("3")),
                FloatingActionButton(
                    onPressed: () {
                      enternumber("2");
                    },
                    child: Text("2")),
                FloatingActionButton(
                    onPressed: () {
                      enternumber("1");
                    },
                    child: Text("1")),
                FloatingActionButton(
                    onPressed: () {
                      enternumber("-");
                    },
                    child: Text("-")),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FloatingActionButton(
                    onPressed: () {
                      enternumber("0");
                    },
                    child: Text(
                      "0",
                    )),
                FloatingActionButton(
                    onPressed: () {
                      enternumber("{}");
                    },
                    child: Text("{}")),
                FloatingActionButton(
                    onPressed: () {
                      enternumber("[]");
                    },
                    child: Text("DEL")),
                FloatingActionButton(
                    onPressed: () {
                      calculate();
                    },
                    child: Text("=")),
              ],
            ),
          ),
        ],
      ),
    );
  }

  enternumber(var number) {
    setState(() {
      a += number;
    });
  }

  add() {
    setState(() {
      c += int.parse(a);
      a = '';
    });
  }

  clear() {
    setState(() {
      a = "";
    });
  }
  else if (index == 3) {
  return MyButton(
  buttontapped: () {
  setState(() {
  a =
  a.substring(0, a.length - 1);
  });

  calculate() {
    Parser p = Parser();
    Expression exp = p.parse(a);
    // Bind variables:
    ContextModel cm = ContextModel();
    // Evaluate expression:
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    print(eval); // = 1.0
    setState(() {
      a = eval.toString();
    });
  }

}

