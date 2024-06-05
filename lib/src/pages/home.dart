import "package:flutter/material.dart";

import "package:template/models.dart";
import "package:template/widgets.dart";

/// The home page.
class HomePage extends ReactiveWidget<HomeModel> {
  @override
  HomeModel createModel() => HomeModel();

  @override
  Widget build(BuildContext context, HomeModel model) => Scaffold(
    appBar: AppBar(title: Text(model.title)),
    body: Center(
      child: Text(
        "You have pressed the button ${model.count} times",
        style: context.textTheme.headlineMedium,
      ),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: model.increment,
      child: const Icon(Icons.add),
    ),
  );
}
