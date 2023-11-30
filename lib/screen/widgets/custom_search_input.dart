import 'package:artistic_app/constant/constant.dart';
import 'package:flutter/material.dart';

class CustomSearchTextField extends StatefulWidget {
  const CustomSearchTextField({
    Key? key,
    required this.hintText,
    required this.onChanged,
  }) : super(key: key);

  final String hintText;
  final Function(String) onChanged;

  @override
  State<CustomSearchTextField> createState() => _CustomSearchTextFieldState();
}

class _CustomSearchTextFieldState extends State<CustomSearchTextField> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      widget.onChanged(_controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: BoxDecoration(
        color: Constant.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 10),
            child: Icon(Icons.search, color: Constant.black),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: const TextStyle(
                    color: Constant.black,
                    fontFamily: Constant.nunitoRegular400),
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
