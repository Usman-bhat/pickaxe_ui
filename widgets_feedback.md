# Feedback Widgets

Widgets used for providing feedback to the user, such as dialogs and notifications.

## CreeperAlertDialog

*   **Description:** An alert dialog with a Creeper-themed design.
*   **Parameters:**
    *   `title`: (`Widget`, optional) - The title of the dialog.
    *   `content`: (`Widget`, optional) - The content of the dialog.
    *   `actions`: (`List<Widget>`, optional) - The actions to display in the dialog.
*   **Example:**

```dart
showDialog(
  context: context,
  builder: (BuildContext context) {
    return CreeperAlertDialog(
      title: Text('Boom!'),
      content: Text('A Creeper exploded!'),
      actions: [
        TextButton(
          child: Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  },
);
```

## PickaxeDialog

*   **Description:** A customizable dialog with a Minecraft-style appearance.
*   **Parameters:**
    *   `title`: (`Widget`, optional) - The title of the dialog.
    *   `content`: (`Widget`, optional) - The content of the dialog.
    *   `actions`: (`List<Widget>`, optional) - The actions to display in the dialog.
*   **Example:**

```dart
showDialog(
  context: context,
  builder: (BuildContext context) {
    return PickaxeDialog(
      title: Text('Information'),
      content: Text('This is a Pickaxe dialog.'),
      actions: [
        TextButton(
          child: Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  },
);
```

## PickaxeDialogBox

*   **Description:** A dialog box widget with customizable content and actions.
*   **Parameters:**
    *   `title`: (`Widget`, optional) - The title of the dialog box.
    *   `content`: (`Widget`, required) - The main content of the dialog box.
    *   `actions`: (`List<Widget>`, optional) - A list of widgets to display as actions (e.g., buttons).
*   **Example:**

```dart
PickaxeDialogBox(
  title: Text('Confirmation'),
  content: Text('Are you sure you want to proceed?'),
  actions: [
    ElevatedButton(onPressed: () {}, child: Text('Yes')),
    TextButton(onPressed: () {}, child: Text('No')),
  ],
)
```

## PickaxeSnackBar

*   **Description:** A snack bar with a Minecraft-style appearance.
*   **Parameters:**
    *   `content`: (`Widget`, required) - The content of the snack bar.
    *   `backgroundColor`: (`Color`, optional) - The background color of the snack bar.
    *   `duration`: (`Duration`, optional) - The duration for which the snack bar is displayed.
*   **Example:**

```dart
ScaffoldMessenger.of(context).showSnackBar(
  PickaxeSnackBar(
    content: Text('Item added to inventory!'),
    duration: Duration(seconds: 3),
  ),
);
```

## PickaxeTooltip

*   **Description:** A tooltip widget with a Minecraft-style appearance.
*   **Parameters:**
    *   `message`: (`String`, required) - The text to display in the tooltip.
    *   `child`: (`Widget`, required) - The widget to attach the tooltip to.
*   **Example:**

```dart
PickaxeTooltip(
  message: 'This is a tooltip',
  child: Icon(Icons.info),
)
```