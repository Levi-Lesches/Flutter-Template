import "package:flutter/material.dart";

import "package:template/models.dart";
import "package:template/pages.dart";
import "package:template/services.dart";

Future<void> main() async {
  await services.init();
  await models.init();
  runApp(const TemplateApp());
}

/// The main app widget.
class TemplateApp extends StatelessWidget {
  /// A const constructor.
  const TemplateApp();

  @override
  Widget build(BuildContext context) => MaterialApp.router(
    title: "Flutter Demo",
    theme: ThemeData(
      useMaterial3: true,
    ),
    routerConfig: router,
  );
}
