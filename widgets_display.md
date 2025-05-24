# Display Widgets

Widgets used for displaying information and content.

## HeartMeter

*   **Description:** A widget that displays a meter with heart icons, representing health or lives.
*   **Parameters:**
    *   `value`: (`int`, required) - The number of hearts to display as filled.
    *   `total`: (`int`, optional, defaults to 10) - The total number of hearts to display.
    *   `icon`: (`Widget`, optional) - The icon to use for filled hearts.
    *   `emptyIcon`: (`Widget`, optional) - The icon to use for empty hearts.
*   **Example:**

```dart
HeartMeter(
  value: 7,
  total: 10,
)
```

## PickaxeAvatar

*   **Description:** A widget that displays a user avatar with a Minecraft-style pixelated look.
*   **Parameters:**
    *   `image`: (`ImageProvider`, optional) - The image to use for the avatar.
    *   `size`: (`double`, optional, defaults to 48.0) - The size of the avatar.
    *   `backgroundColor`: (`Color`, optional) - The background color of the avatar.
*   **Example:**

```dart
PickaxeAvatar(
  image: NetworkImage('https://example.com/avatar.png'),
  size: 64.0,
)
```

## PickaxeBadge

*   **Description:** A badge widget with a Minecraft-style appearance, typically used for displaying notifications or status.
*   **Parameters:**
    *   `child`: (`Widget`, required) - The content of the badge.
    *   `color`: (`Color`, optional) - The background color of the badge.
    *   `padding`: (`EdgeInsets`, optional) - The padding around the badge's content.
*   **Example:**

```dart
PickaxeBadge(
  color: Colors.red,
  child: Text('99+', style: TextStyle(color: Colors.white)),
)
```

## PickaxeCard

*   **Description:** A card widget with a textured background and pixelated border.
*   **Parameters:**
    *   `child`: (`Widget`, required) - The content of the card.
    *   `backgroundColor`: (`Color`, optional) - The background color of the card.
    *   `padding`: (`EdgeInsets`, optional) - The padding around the card's content.
*   **Example:**

```dart
PickaxeCard(
  child: Column(
    children: [
      PickaxeText('Card Title'),
      Text('Some card content'),
    ],
  ),
)
```

## PickaxeDivider

*   **Description:** A divider widget with a pixelated style.
*   **Parameters:**
    *   `color`: (`Color`, optional) - The color of the divider.
    *   `thickness`: (`double`, optional) - The thickness of the divider.
    *   `indent`: (`double`, optional) - The amount of space to indent the divider.
    *   `endIndent`: (`double`, optional) - The amount of space to indent the divider at the end.
*   **Example:**

```dart
PickaxeDivider(
  color: Colors.grey[600],
  thickness: 2.0,
)
```

## PickaxeProgressBar

*   **Description:** A progress bar widget with a Minecraft-inspired style.
*   **Parameters:**
    *   `value`: (`double`, required) - The current progress value (between 0.0 and 1.0).
    *   `backgroundColor`: (`Color`, optional) - The background color of the progress bar.
    *   `valueColor`: (`Color`, optional) - The color of the progress bar's filled portion.
    *   `height` : (`double`, optional) - The height of the progress bar.
*   **Example:**

```dart
PickaxeProgressBar(
  value: 0.75,
  backgroundColor: Colors.grey[300],
  valueColor: Colors.green,
)
```

## PickaxeText

*   **Description:** A text widget that uses the Minecraft font.
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

## XpBar

*   **Description:** A widget to display an experience bar, commonly seen in games.
*   **Parameters:**
    *   `value`: (`double`, required) - The current xp value (between 0.0 and 1.0).
    *   `backgroundColor`: (`Color`, optional) - The color of the background bar.
    *   `valueColor`: (`Color`, optional) - The color of the xp bar.
    *   `height`: (`double`, optional) - Height of the bar.
*   **Example**:
```dart
XpBar(
 value: 0.3
)
```