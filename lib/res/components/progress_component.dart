import 'package:flutter/material.dart';

import 'package:step_progress_indicator/step_progress_indicator.dart';

class ProgressIndicatorComponent extends StatelessWidget {
  final List<ProgressIndicatorData> progressIndicators;

  const ProgressIndicatorComponent(
      {required this.progressIndicators, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: progressIndicators.map((progressIndicator) {
        return Container(
          padding: const EdgeInsets.all(5),
          margin: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: Colors.indigoAccent[100],
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color:
                    Colors.black.withOpacity(0.2), // Adjust opacity as needed
                spreadRadius: 2,
                blurRadius: 2,
                offset: const Offset(3, 8), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0),
                child: Text(
                  progressIndicator.title,
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                child: StepProgressIndicator(
                  totalSteps: 6,
                  currentStep: progressIndicator.currentStep,
                  size: 24,
                  selectedColor: Colors.lightGreen,
                  unselectedColor: Colors.redAccent,
                  customStep: (index, color, _) => color == Colors.lightGreen
                      ? Container(
                          decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.check,
                            color: Colors.white,
                          ),
                        )
                      : Container(
                          decoration: BoxDecoration(
                              color: color,
                              borderRadius: BorderRadius.circular(10)),
                          child: const Icon(
                            Icons.remove,
                          ),
                        ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}

class ProgressIndicatorData {
  final String title;
  final int currentStep;

  ProgressIndicatorData({required this.title, required this.currentStep});
}
