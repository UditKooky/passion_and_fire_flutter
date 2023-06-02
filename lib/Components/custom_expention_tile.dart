import 'package:flutter/material.dart';

class CustomExpansionTile extends StatefulWidget {
  final Widget title;
  final Widget leading;
  final Widget trailing;
  final bool rlt;
  final bool expanded;
  final List<Widget> children;

  const CustomExpansionTile({
    Key? key,
    required this.title,
    required this.leading,
    required this.trailing,
    required this.children, required this.rlt, required this.expanded,
  }) : super(key: key);

  @override
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}
class _CustomExpansionTileState extends State<CustomExpansionTile>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );

    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_animationController);
    setState((){
      _isExpanded = widget.expanded;
      _isExpanded
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: _isExpanded?BoxDecoration(
        color: Colors.black.withOpacity(0.8),
        borderRadius: BorderRadius.circular(10)
      ):null,
      child: Column(
        children: [
          InkWell(
            onTap: () {
              setState(() {
                _isExpanded = !_isExpanded;
                _isExpanded
                    ? _animationController.forward()
                    : _animationController.reverse();
              });
            },
            child:
            Row(
              children: [
                if (widget.leading != null) widget.leading!,
                Expanded(child: widget.title),
                if (widget.trailing != null) widget.trailing!,

              ],
            ),
          ),
          SizeTransition(
            sizeFactor: _animation,
            child: Column(
              children: widget.children,
            ),
          ),
        ],
      ),
    );
  }
}
