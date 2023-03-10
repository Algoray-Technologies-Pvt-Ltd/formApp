import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class KNumberTextField extends StatefulWidget {
  KNumberTextField(
      {super.key,
      required this.initialText,
      this.icon,
      this.width,
      this.onTap,
      this.hintText,
      this.readonly = false,
      this.validation,
      this.multiline = false,
      this.textcontrollerextra,
      this.onChanged});
  final IconData? icon;
  String? hintText;
  bool? readonly;
  bool? multiline;
  double? width;
  String initialText;
  TextEditingController? textcontrollerextra;

  Function(String value)? onChanged;
  String? Function(String? value)? validation;
  VoidCallback? onTap;

  @override
  State<KNumberTextField> createState() => _KNumberTextFieldState();
}

class _KNumberTextFieldState extends State<KNumberTextField> {
  late TextEditingController textcontroller;

  @override
  void initState() {
    print('Initializeing ${widget.hintText} with text : ${widget.initialText}');
    textcontroller = TextEditingController();
    textcontroller.text = widget.initialText;

    super.initState();
  }

  @override
  void dispose() {
    print('Text disposed ${widget.hintText}');
    textcontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    print('t :${widget.initialText}   Current Tezt : ${textcontroller.text}');
    if (widget.initialText.isEmpty) textcontroller.clear();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          width: 400,
          child: Builder(builder: (context) {
            return TextFormField(
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.digitsOnly
              ],
              keyboardType: TextInputType.number,
              maxLines: null,
              readOnly: widget.readonly!,
              validator: widget.validation,
              onTap: widget.onTap,
              controller: textcontroller,
              onChanged: widget.onChanged,
              decoration: InputDecoration(
                fillColor: Colors.white,
                label: Text(widget.hintText.toString()),
                hintText: widget.hintText,
                prefixIcon: widget.icon == null
                    ? null
                    : Padding(
                        padding:
                            const EdgeInsets.symmetric(vertical: 16 * 0.75),
                        child: Icon(
                          widget.icon,
                          color: Theme.of(context)
                              .textTheme
                              .bodyLarge!
                              .color!
                              .withOpacity(0.3),
                        ),
                      ),
              ),
            );
          })),
    );
  }
}
