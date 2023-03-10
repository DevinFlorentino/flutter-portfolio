import 'package:flutter/material.dart';

import '../resume/theme/text.dart';

Text appBarTextWidget(String text) => Text(
      text,
      textAlign: TextAlign.center,
      overflow: TextOverflow.fade,
      style: rampartOneTextStyle,
      maxLines: 2,
      softWrap: true,
    );

Text introTextWidget(String text) => centerTextWidget(text, genosIntroStyle);

Text headerTextWidget(String text) => centerTextWidget(text, genosHeaderStyle);

Text subHeaderTextWidget(String text) => textWidget(text, genosSubHeaderStyle);

Text paragraphTextWidget(String text) => textWidget(text, genosParagraphStyle);

Text textWidget(String text, TextStyle style) => Text(
      text,
      overflow: TextOverflow.fade,
      style: style,
    );

Text centerTextWidget(String text, TextStyle style) => Text(
      text,
      textAlign: TextAlign.center,
      overflow: TextOverflow.fade,
      style: style,
    );

dynamic buildDividerWidget(Color color) => Divider(
      thickness: 2,
      color: color,
      height: 20,
    );
