import 'package:bmi_calc/icon_content.dart';
import 'package:bmi_calc/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

double bottomContainerHeight = 60.0;
Color bottomContainerColor = const Color(0xFFEB1555);
Color inactiveCardColor = const Color(0xFF111328);
Color activeCardColor = const Color(0XFF1D1E33);

enum Gender { male, female, none }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.none;

  // Color startingMaleCardColor = inactiveCardColor;
  // Color startingFemaleCardColor = inactiveCardColor;

  // void updateCardColor(Gender selectedGender) {
  //   if (selectedGender == Gender.male) {
  //     if (startingMaleCardColor == inactiveCardColor) {
  //       startingMaleCardColor = activeCardColor;
  //       startingFemaleCardColor = inactiveCardColor;
  //     } else {
  //       startingMaleCardColor = inactiveCardColor;
  //     }
  //   } else if (selectedGender == Gender.female) {
  //     if (startingFemaleCardColor == inactiveCardColor) {
  //       startingFemaleCardColor = activeCardColor;
  //       startingMaleCardColor = inactiveCardColor;
  //     } else {
  //       startingFemaleCardColor = inactiveCardColor;
  //     }
  //   }
  // }

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
                    onPress: () {
                      setState(
                        () {
                          selectedGender = Gender.male;
                        },
                      );
                    },
                    containerColor: selectedGender == Gender.male
                        ? activeCardColor
                        : inactiveCardColor,
                    cardChild: const IconWithBottomText(
                        icon: FontAwesomeIcons.mars, label: "MALE"),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(
                        () {
                          selectedGender = Gender.female;
                        },
                      );
                    },
                    containerColor: selectedGender == Gender.female
                        ? activeCardColor
                        : inactiveCardColor,
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
                    containerColor: activeCardColor,
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
                    containerColor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    containerColor: activeCardColor,
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
