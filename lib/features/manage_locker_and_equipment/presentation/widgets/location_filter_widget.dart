import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:frontend/core/presentation/widgets/bottom_sheet_single_select.dart';
import 'package:frontend/core/presentation/widgets/button.dart';
import 'package:frontend/core/presentation/widgets/button_outline_widget.dart';
import 'package:frontend/core/presentation/widgets/input_text.dart';

class LocationFilterWidget extends HookWidget {
  final List<Map<String, dynamic>> listChoices;

  const LocationFilterWidget({required this.listChoices});
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints:
          BoxConstraints(maxHeight: MediaQuery.of(context).size.height * 0.9),
      child: Container(
        color: const Color(0xFF737373),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(24),
              topRight: Radius.circular(24),
            ),
          ),
          child: _buildBody(context),
        ),
      ),
    );
  }

  Widget _buildBody(
    BuildContext context,
  ) {
    final screenSize = MediaQuery.of(context).size;
    return StatefulBuilder(
      builder: (BuildContext context, void Function(void Function()) setState) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 12),
                  width: 40,
                  height: 5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(224, 224, 224, 1),
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '?????????????????????',
                  style: Theme.of(context).primaryTextTheme.headline2,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      BottomSheetSingleSelect(
                        label: '???????????????',
                        placeHolder: '???????????????',
                        onChanged: (_) {},
                        listChoice: const [
                          {'displayText': '??????????????? 1', 'value': 1},
                          {'displayText': '??????????????? 2', 'value': 2},
                          {'displayText': '??????????????? 3', 'value': 3},
                          {'displayText': '??????????????? 4', 'value': 4},
                          {'displayText': '??????????????? 5', 'value': 5},
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      BottomSheetSingleSelect(
                        label: '????????????',
                        placeHolder: '????????????',
                        onChanged: (_) {},
                        listChoice: const [
                          {'displayText': '???????????? 1', 'value': 1},
                          {'displayText': '???????????? 2', 'value': 2},
                          {'displayText': '???????????? 3', 'value': 3},
                          {'displayText': '???????????? 4', 'value': 4},
                          {'displayText': '???????????? 5', 'value': 5},
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      BottomSheetSingleSelect(
                        label: '????????????',
                        placeHolder: '????????????',
                        onChanged: (_) {},
                        listChoice: const [
                          {'displayText': '???????????? 1', 'value': 1},
                          {'displayText': '???????????? 2', 'value': 2},
                          {'displayText': '???????????? 3', 'value': 3},
                          {'displayText': '???????????? 4', 'value': 4},
                          {'displayText': '???????????? 5', 'value': 5},
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  width: 20,
                ),
                ButtonOutlineWidget('?????????????????????', onPressed: () {}),
                const SizedBox(
                  width: 20,
                ),
                Button(
                  '???????????????',
                  onPressed: () {},
                ),
                const SizedBox(
                  width: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        );
      },
    );
  }
}
