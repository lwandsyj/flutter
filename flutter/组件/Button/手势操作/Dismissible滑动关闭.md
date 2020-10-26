Dismissible 手势滑动关闭，比如购物车

        Dismissible(
            // Each Dismissible must contain a Key. Keys allow Flutter to
            // uniquely identify widgets.
            key: Key(item),
            // Provide a function that tells the app
            // what to do after an item has been swiped away.
            onDismissed: (direction) {
                // Remove the item from the data source.
                setState(() {
                items.removeAt(index);
                });

                // Show a snackbar. This snackbar could also contain "Undo" actions.
                Scaffold
                    .of(context)
                    .showSnackBar(SnackBar(content: Text("$item dismissed")));
            },
            child: ListTile(title: Text('$item')),
        );
