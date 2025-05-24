# Pickaxe UI Library

A Flutter UI library inspired by the Minecraft aesthetic.

## Features

- Authentic Minecraft-style textures and pixelated design.
- Pre-built widgets for common UI elements (buttons, text fields, containers, etc.).
- Theming capabilities to easily apply the Minecraft look and feel.
- Utility classes for easily accessing common textures and backgrounds.

## Getting Started

To use this library, add `pickaxe_ui` to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter:
    sdk: flutter

  pickaxe_ui: ^0.1.0 # Replace with the actual version from pub.dev
```

Then, run `flutter pub get` in your project directory.

## Usage

Import the main library export in your Dart files:

```dart
import 'package:pickaxe_ui/pickaxe_ui.dart';
```

### Theming

Wrap your `MaterialApp` with `PickaxeTheme` to apply the library's theme. You can choose between `PickaxeTheme.light` and `PickaxeTheme.dark` (if available/implemented) or define your own using `PickaxeColors` and `PickaxeTypography`.

```dart
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Minecraft App',
      theme: PickaxeTheme.light, // Apply the Minecraft theme
      home: const MyHomePage(),
    );
  }
}
```

### Widgets

The library provides several pre-built widgets with the Minecraft aesthetic. For more detailed information about each category of widgets, see the following files:

- [Display Widgets](widgets_display.md)
- [Feedback Widgets](widgets_feedback.md)
- [Input Widgets](widgets_input.md)
- [Layout Widgets](widgets_layout.md)
- [Navigation Widgets](widgets_navigation.md)

#### PickaxeText

A text widget that uses the Minecraft font.

*   **Description:** A text widget styled with the library's default Minecraft-inspired font and text styles.
*   **Parameters:**
    *   `text`: (`String`, required) - The text to display.
    *   `style`: (`TextStyle`, optional) - An optional `TextStyle` to override the default text style.
*   **Example:**

```dart
const PickaxeText('Hello, World!');

const PickaxeText(
  'Game Over',
  style: TextStyle(
    fontSize: 24,
    color: PickaxeColors.error,
  ),
);
```

#### PickaxeButton

A button widget with a textured appearance.

*   **Description:** A button with a Minecraft-style appearance. It uses a `GestureDetector` internally and can be customized with textures.
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
);

// Button with a custom texture
PickaxeButton(
  onPressed: () {
    // ...
  },
  child: PickaxeTexture(
    assetPath: PickaxeTextures.defaultStone, // Use a specific texture
    repeat: ImageRepeat.repeat,
    child: const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: PickaxeText('Stone Button'),
    ),
  ),
);
```

#### PickaxeTextField

A text field with a textured background.

*   **Description:** A customizable text field with the library's default styles and textures.
*   **Parameters:**
    *   `controller`: (`TextEditingController`, optional) - An optional `TextEditingController` to control the text field's input.
    *   `decoration`: (`InputDecoration`, optional) - An `InputDecoration` object to customize the appearance of the text field (hint text, border, etc.).
    *    `style`: (`TextStyle`, optional) - An optional `TextStyle` to override the default text style.
    *   `onChanged`: (`Function(String)`, optional) - Called when the text changes.
*   **Example:**

```dart
PickaxeTexture(
  assetPath: PickaxeTextures.defaultDirt, // Dirt texture for the background
  repeat: ImageRepeat.repeat,
  opacity: 0.6, // Adjust opacity to see the text field
  child: const Padding(
    padding: EdgeInsets.symmetric(horizontal: 8.0),
    child: PickaxeTextField(
      decoration: InputDecoration(
        hintText: 'Enter text...',
        border: InputBorder.none,
        isDense: true,
        contentPadding: EdgeInsets.zero,
      ),
    ),
  ),
);
```

#### PickaxeContainer

A container that can be easily textured.

*   **Description**: A container widget that allows applying background images and textures for creating visually appealing layouts.
*   **Parameters**:
    *   `child`: (`Widget`, optional) - The content of the container.
    *   `backgroundImage`: (`ImageProvider`, optional) - An `ImageProvider` for setting a background image.
    *   `decoration`: (`BoxDecoration`, optional) - A `BoxDecoration` for more advanced styling.
*   **Example**:

```dart
PickaxeContainer(
  backgroundImage: const AssetImage(PickaxeBackgrounds.backgroundPond),
  child: Center(
    child: PickaxeText('Container with Background', style: TextStyle(color: Colors.white)),
  ),
)
```

#### PickaxeTexture

A widget that applies a texture to its child.

*   **Description:** Applies a texture from an image asset to its child widget. Useful for creating the Minecraft-like blocky appearance.
*   **Parameters:**
    *   `child`: (`Widget`, required) - The widget to apply the texture to.
    *   `assetPath`: (`String`, required) - The path to the texture image asset.
    *   `fit`: (`BoxFit`, optional, defaults to `BoxFit.cover`) - How the texture should be fitted into the child's bounds.
    *   `repeat`: (`ImageRepeat`, optional, defaults to `ImageRepeat.repeat`) - How the texture should be repeated.
    *   `opacity`: (`double`, optional, defaults to 0.2) - The opacity of the texture.
*   **Example:**

```dart
PickaxeTexture(
  assetPath: PickaxeTextures.defaultCobble,
  child: Image.asset('assets/my_image.png'),
)
```

#### PickaxeColumn

A column widget with the library's styles.

*   **Description**: A column widget that uses `Column` internally and offers some styling option related to the library.
*   **Parameters**:
    *   `children`: (`List<Widget>`, required) - The widgets to display in the column.
    *   `mainAxisAlignment`: (`MainAxisAlignment`, optional) - How the children should be aligned vertically.
    *    `crossAxisAlignment`: (`CrossAxisAlignment`, optional) - How the children should be aligned horizontally.
*   **Example:**

```dart
PickAxeColumn(
 children: [
  PickaxeText('Item 1'),
  PickaxeText('Item 2'),
 ],
)
```

#### PickaxeRow

A row widget with the library's styles.

*   **Description**: A row widget that uses `Row` internally and offers some styling option related to the library.
*   **Parameters**:
    *   `children`: (`List<Widget>`, required) - The widgets to display in the row.
    *   `mainAxisAlignment`: (`MainAxisAlignment`, optional) - How the children should be aligned horizontally.
    *    `crossAxisAlignment`: (`CrossAxisAlignment`, optional) - How the children should be aligned vertically.
*   **Example:**

```dart
PickaxeRow(
 children: [
  PickaxeText('Item 1'),
  PickaxeText('Item 2'),
 ],
)
```

### Textures and Backgrounds

Use the `PickaxeTexture` widget to apply textures to any widget. The `PickaxeTextures` and `PickaxeBackgrounds` classes provide convenient access to predefined texture asset paths.

```dart
// Applying a texture to an image
PickaxeTexture(
  assetPath: PickaxeTextures.defaultCobble,
  child: Image.asset('assets/my_image.png'),
)

// Applying a background texture to a screen
PickaxeTexture(
  assetPath: PickaxeBackgrounds.backgroundMountain,
  fit: BoxFit.cover,
  child: Scaffold(
    // ... your screen content
  ),
)
```

### Utility Classes

- **`PickaxeColors`**: Provides a set of predefined colors inspired by Minecraft.
- **`PickaxeTypography`**: Defines the text styles and font family used in the library.
- **`PickaxeTextures`**: Contains static constants for common in-game texture asset paths.
- **`PickaxeBackgrounds`**: Contains static constants for larger background image asset paths.

## Example

Refer to the `example/lib/main.dart` file for a complete, runnable example showcasing various widgets and features.

## Contributing

Contributions are welcome! Please read the [CONTRIBUTING.md](CONTRIBUTING.md) for details on how to contribute.

## License

TODO: Add your license here. Choose a license at [https://choosealicense.com/](https://choosealicense.com/) and update the LICENSE file accordingly. This project is currently unlicensed, so all rights are reserved.
