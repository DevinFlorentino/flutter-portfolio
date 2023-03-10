import 'package:flutter/material.dart';

import '../resume/theme/text.dart';

Text appBarText(String text) {
  return Text(
    text,
    style: rampartOneTextStyle,
    maxLines: 2,
    softWrap: true,
  );
}

Text headerText(String text) {
  return Text(
    text,
    style: genosParagraphStyle,
    maxLines: 2,
    softWrap: true,
    strutStyle: StrutStyle.fromTextStyle(genosHeaderStyle),
  );
}

Text paragraphText(String text) {
  return Text(
    text,
    overflow: TextOverflow.fade,
    style: genosParagraphStyle,
  );
}
