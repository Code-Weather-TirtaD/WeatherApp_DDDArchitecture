import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weatherapp_ddd/application/Weather/weather_bloc.dart';

class ListOption extends StatelessWidget {
  const ListOption({
    super.key,
    required this.option,
    required this.optionTitle,
    required this.selection,
    required this.selectionText,
  });
  final num option;
  final String optionTitle;
  final List<Widget> selectionText;
  final List<bool> selection;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          border: Border(bottom: BorderSide(width: 1.0, color: Colors.black))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            optionTitle,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.left,
          ),
          ToggleButtons(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            direction: Axis.horizontal,
            isSelected: selection,
            color: Colors.black87,
            selectedColor: Colors.white,
            fillColor: Colors.blueGrey,
            constraints: const BoxConstraints(
              minHeight: 40.0,
              minWidth: 80.0,
            ),
            onPressed: (index) {
              context
                  .read<WeatherBloc>()
                  .add(WeatherEvent.unitChanged(index, option));
            },
            children: selectionText,
          ),
        ],
      ),
    );
  }
}
