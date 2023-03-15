// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class PrefferedSizeKAutoGenerateText extends StatefulWidget {
  final IconData? icon;
  String? hintText;
  bool? multiline;
  double? width;
  String initialText;
  TextEditingController? textcontrollerextra;
  Function(String value)? onChanged;
  int nextNumber;
  PrefferedSizeKAutoGenerateText({
    Key? key,
    this.icon,
    this.hintText,
    this.width,
    required this.initialText,
    required this.nextNumber,
    this.textcontrollerextra,
    this.onChanged,
  }) : super(key: key);
  @override
  _PrefferedSizeKAutoGenerateTextState createState() =>
      _PrefferedSizeKAutoGenerateTextState();
}

class _PrefferedSizeKAutoGenerateTextState
    extends State<PrefferedSizeKAutoGenerateText> {
  // int _nextNumber = 1;
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = widget.nextNumber.toString();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 150,
        child: TextField(
          controller: _controller,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            label: Text(widget.hintText.toString()),
            hintText: widget.hintText,
            fillColor: Colors.white,
          ),
          readOnly: true,
          // onTap: () {
          //   setState(() {
          //     widget.nextNumber++;
          //     _controller.text = widget.nextNumber.toString();
          //   });
          // },
          onSubmitted: (value) {
            setState(() {
              widget.nextNumber++;
              _controller.text = widget.nextNumber.toString();
            });
          },
        ),
      ),
    );
  }
}
