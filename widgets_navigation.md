# Navigation Widgets

Widgets used for navigation and user interaction.

## PickaxeButton

*   **Description:** A button widget with a textured appearance.
*   **Parameters:**
    *   `onPressed`: (`VoidCallback`, required) - The callback function executed when the button is pressed.
    *   `child`: (`Widget`, required) - The widget to display inside the button (e.g., `PickaxeText`, `Icon`).
*   **Example:**

```dart
PickaxeButton(
  onPressed: () {
    // Do something when the button is pressed
  },
  child: const PickaxeText('Click Me'),
)
```

## PickaxeIconButton

*   **Description:** An icon button with a Minecraft-style appearance.
*   **Parameters:**
    *   `onPressed`: (`VoidCallback`, required) - The callback function executed when the button is pressed.
    *   `icon`: (`Widget`, required) - The icon to display inside the button.
*   **Example:**

```dart
PickaxeIconButton(
  onPressed: () {
    // Do something when the button is pressed
  },
  icon: Icon(Icons.add),
)
```

## PickaxeTabBar

*   **Description:** A tab bar with a Minecraft-style appearance.
*   **Parameters:**
    *   `tabs`: (`List<Widget>`, required) - The tabs to display in the tab bar (typically `Tab` widgets).
    *   `controller`: (`TabController`, optional) - A `TabController` to control the currently selected tab.
*   **Example:**

```dart
TabBar(
  tabs: [
    Tab(text: 'Tab 1'),
    Tab(text: 'Tab 2'),
  ],
)
```