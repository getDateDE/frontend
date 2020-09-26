import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:openapi/api.dart';
import 'package:timeline_tile/timeline_tile.dart';

class InstituteTimelineElement extends StatelessWidget {
  final Slot slot;

  InstituteTimelineElement(this.slot);

  @override
  Widget build(BuildContext context) {
    return TimelineTile(
      alignment: TimelineAlign.start,
      endChild: Card(),
    );
  }
}
