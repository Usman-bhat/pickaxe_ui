# Input Widgets

Widgets used for getting input from the user.

## PickaxeCheckbox

*   **Description:** A checkbox with a Minecraft-style appearance.
*   **Parameters:**
    *   `value`: (`bool`, required) - Whether the checkbox is checked or not.
    *   `onChanged`: (`Function(bool?)`, required) - Called when the checkbox is tapped.
    *   `activeColor`: (`Color`, optional) - The color of the checkbox when it is checked.
*   **Example:**

```dart
PickaxeCheckbox(
  value: _isChecked,
  onChanged: (bool? newValue) {
    setState(() {
      _isChecked = newValue ?? false;
    });
  },
)
```

## PickaxeSlider

*   **Description:** A slider with a Minecraft-style appearance.
*   **Parameters:**
    *   `value`: (`double`, required) - The current value of the slider.
    *   `onChanged`: (`Function(double)`, required) - Called when the slider value changes.
    *   `min`: (`double`, optional, defaults to 0.0) - The minimum value of the slider.
    *   `max`: (`double`, optional, defaults to 1.0) - The maximum value of the slider.
    *   `divisions`: (`int`, optional) - The number of discrete divisions the slider has.
    *   `label`: (`String`, optional) - A label to display above the slider.
*   **Example:**

```dart
PickaxeSlider(
  value: _sliderValue,
  onChanged: (double newValue) {
    setState(() {
      _sliderValue = newValue;
    });
  },
  min: 0.0,
  max: 100.0,
  divisions: 10,
  label: 'Volume',
)
```

## PickaxeSwitch

*   **Description:** A switch with a Minecraft-style appearance.
*   **Parameters:**
    *   `value`: (`bool`, required) - Whether the switch is on or off.
    *   `onChanged`: (`Function(bool)`, required) - Called when the switch is toggled.
    *   `activeColor`: (`Color`, optional) - The color of the switch when it is on.
    *   `inactiveColor`: (`Color`, optional) - The color of the switch when it is off.
*   **Example:**

```dart
PickaxeSwitch(
  value: _isToggled,
  onChanged: (bool newValue) {
    setState(() {
      _isToggled = newValue;
    });
  },
)
```

## PickaxeTextField

*   **Description:** A text field with a textured background.
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
)
```

## PickaxeToggleButton

*   **Description:** A toggle button with a Minecraft-style appearance.
*   **Parameters:**
    *   `isSelected`: (`bool`, required) - Whether the button is selected or not.
    *   `onPressed`: (`VoidCallback`, required) - Called when the button is pressed.
    *   `child`: (`Widget`, required) - The widget to display inside the button.
*   **Example:**

```dart
PickaxeToggleButton(
  isSelected: _isButtonSelected,
  onPressed: () {
    setState(() {
      _isButtonSelected = !_isButtonSelected;
    });
  },
  child: Text('Toggle'),
)
```

## RedstoneSwitch

*   **Description:** A switch resembling a Redstone switch from Minecraft.
*   **Parameters**:
    *   `value`: (`bool`, required) - Whether the switch is on or off.
    *   `onChanged`: (`Function(bool)`, required) - Called when the switch is toggled.
    *   `activeColor`: (`Color`, optional) - The color of the switch when it is on.
    *   `inactiveColor`: (`Color`, optional) - The color of the switch when it is off.
*   **Example**:

```dart
RedstoneSwitch(
 value: _lightsOn,
 onChanged: (bool newValue) {
  setState(() {
  _lightsOn = newValue;
  });
 },
)
```