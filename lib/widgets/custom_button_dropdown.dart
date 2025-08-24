import 'package:flutter/material.dart';

class CustomButtonDropdown extends StatefulWidget {
  final List<String> items;
  final double width;

  const CustomButtonDropdown({
    super.key,
    required this.items,
    required this.width,
  });

  @override
  State<CustomButtonDropdown> createState() => _CustomButtonDropdownState();
}

class _CustomButtonDropdownState extends State<CustomButtonDropdown> {
  late String _selectedItem;

  @override
  void initState() {
    super.initState();
    _selectedItem = widget.items.first;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: widget.width,
      padding: EdgeInsets.symmetric(horizontal: widget.width * 0.05),
      decoration: BoxDecoration(
        color: Color.fromRGBO(53, 53, 53, 1.0),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DropdownButton(
        items: widget.items.map((e) {
          return DropdownMenuItem(value: e, child: Text(e));
        }).toList(),
        onChanged: (value) {
          setState(() {
            _selectedItem = value!;
          });
        },
        underline: Container(),
        value: _selectedItem,
        dropdownColor: Color.fromRGBO(53, 53, 53, 1.0),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
