import 'package:block/dimensions.app.dart';
import "package:flutter/material.dart";

class BlockItem extends StatelessWidget {

  GlobalKey _dismiss = GlobalKey();

  String title;
  String subtitle;
  Widget? leading;
  Function(DismissDirection)? onDismissed;

  BlockItem({
    Key? key,
    required this.title,
    required this.subtitle,
    this.leading,
    this.onDismissed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: _dismiss,
      child: _item(),
      background: _background(),
      onDismissed: onDismissed,
    );
  }

  factory BlockItem.application({
        Key? key,
        required String title,
        required String subtitle,
        Function(DismissDirection)? onDismissed
      }) {
    return BlockItem(
      key: key,
      title: title,
      subtitle: subtitle,
      leading: Container(
        width: 50,
        height: 50,
        child: Icon(
          Icons.android,
          color: Colors.white,
        ),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.green,
          shape: BoxShape.circle,
        ),
      ),
      onDismissed: onDismissed,
    );
  }

  Widget _item() {
    return ListTile(
      title: Text(title),
      subtitle: Text(subtitle),
      leading: leading,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(BlockDimensions.borderGeneral),
        ),
      ),
    );
  }

  Widget _background() {
    return Builder(builder: (context) => Container(
      padding: EdgeInsets.all(20),
      child: Align(
        alignment: Alignment.centerRight,
        child: Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      decoration: BoxDecoration(
        color: Theme.of(context).errorColor,
        borderRadius: BorderRadius.all(Radius.circular(BlockDimensions.borderGeneral)),
      ),
    ));
  }
}
