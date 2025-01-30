import 'package:bmi_calc/icon_content.dart';
import 'package:bmi_calc/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

double bottomContainerHeight = 60.0;
Color bottomContainerColor = const Color(0xFFEB1555);
Color reusableCardColor = const Color(0XFF1D1E33);

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);
    final ColorScheme colorScheme = theme.colorScheme;
    return Scaffold(
      appBar: AppBar(
        // Put specify to use the theme data here
        backgroundColor: colorScheme.onPrimary,
        foregroundColor: colorScheme.tertiary,
        title: const Center(
          child: Text('BMI CALCULATOR'),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    containerColor: reusableCardColor,
                    cardChild: const IconWithBottomText(
                        icon: FontAwesomeIcons.mars, label: "MALE"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    containerColor: reusableCardColor,
                    cardChild: const IconWithBottomText(
                        icon: FontAwesomeIcons.venus, label: "FEMALE"),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    containerColor: reusableCardColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    containerColor: reusableCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    containerColor: reusableCardColor,
                  ),
                )
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {},
      ),
    );
  }
}
