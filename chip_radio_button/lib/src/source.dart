import 'package:flutter/material.dart';

// =============================================================================

///
/// Filter entity
///
class Filter {
  ///
  /// Displayed label
  ///
  final String label;

  ///
  /// The displayed icon when selected
  ///
  final IconData icon;

  const Filter({required this.label, required this.icon});
}

// =============================================================================

///
/// The filter widget
///
class ChipsFilter extends StatefulWidget {
  ///
  /// The list of the filters
  ///
  final List<Filter> filters;

  ///
  /// The default selected index starting with 0
  ///
  final int selected;

  final ValueChanged<dynamic>? onTap;


  ChipsFilter({ Key? key, required this.filters, required this.selected, required this.onTap}) : super(key: key);

  @override
  _ChipsFilterState createState() => _ChipsFilterState();
}

class _ChipsFilterState extends State<ChipsFilter> {
  ///
  /// Currently selected index
  ///
  late var selectedIndex = null;

  @override
  void initState() {
    // When [widget.selected] is defined, check the value and set it as
    // [selectedIndex]
    if (widget.selected != null &&
        widget.selected >= 0 &&
        widget.selected < widget.filters.length) {
      this.selectedIndex = widget.selected;
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: this.chipBuilder,
        itemCount: widget.filters.length,
        scrollDirection: Axis.vertical,
      ),
    );
  }

  ///
  /// Build a single chip
  ///
  Widget chipBuilder(context, currentIndex) {
    Filter filter = widget.filters[currentIndex];
    bool isActive = this.selectedIndex == currentIndex;

    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = currentIndex;
        });
        if (widget.onTap != null) {
          widget.onTap!(currentIndex);
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 10),
        margin: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.blueAccent : Colors.white,
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (isActive)
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Icon(filter.icon),
              ),
            Text(
              filter.label,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}