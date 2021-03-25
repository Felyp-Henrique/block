import 'package:block/dimensions.app.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BlockBottomSheet extends StatefulWidget {

  Widget child;

  BlockBottomSheet({
    Key? key,
    required this.child,
  }): super(key: key);
  
  @override
  BlockBottomSheetState createState() {
    return BlockBottomSheetState();
  }
}
class BlockBottomSheetState extends State<BlockBottomSheet> {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: widget.child,
      padding: EdgeInsets.all(BlockDimensions.paddingContents),
      height: MediaQuery.of(context).size.height * 0.8,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 10,
            offset: Offset(0, -4),
            color: Colors.black.withOpacity(0.3),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(BlockDimensions.borderGeneral),
          topRight: Radius.circular(BlockDimensions.borderGeneral),
        ),
      ),
    );
  }
}
