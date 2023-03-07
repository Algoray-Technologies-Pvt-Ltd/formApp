// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class KDateSet extends StatelessWidget {
  final TextEditingController? controller;
  final Function()? onTap;
  final Widget label;
  const KDateSet({Key? key, this.controller, this.onTap, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SizedBox(
        width: 400,
        child: Builder(
          builder: (context) {
            return TextFormField(
              controller: controller,
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: 'Date',
                label: label,
                prefixIcon: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16 * 0.75),
                  child: Icon(
                    Icons.calendar_month,
                    color: Theme.of(context)
                        .textTheme
                        .bodyLarge!
                        .color!
                        .withOpacity(0.3),
                  ),
                ),
              ),
              onTap: onTap,
              readOnly: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Please Select Date';
                }
                return null;
              },
            );
          },
        ),
      ),
    );
  }
}
