# Layout Widgets

Widgets used for arranging and structuring the UI.

## BlockContainer

*   **Description:** A container widget designed to resemble a Minecraft block.
*   **Parameters:**
    *   `child`: (`Widget`, required) - The content of the container.
    *   `texture`:   (`String`, optional) - The path to texture image.
*   **Example:**

```dart
BlockContainer(
  child: Text('This is inside a block!'),
)
```

## ChestGrid

*   **Description:** A grid layout resembling a Minecraft chest inventory.
*   **Parameters:**
    *   `children`: (`List<Widget>`, required) - The widgets to display in the grid.
    *   `rows`: (`int`, optional, defaults to 3) - The number of rows in the grid.
    *   `columns`: (`int`, optional, defaults to 9) - The number of columns in the grid.
*   **Example:**

```dart
ChestGrid(
  children: List.generate(27, (index) => Text('Item ${index + 1}')),
)
```

## CraftingGrid

*   **Description:** A 3x3 grid layout resembling a Minecraft crafting table.
*   **Parameters:**
    *   `children`: (`List<Widget>`, required) - The widgets to display in the grid (must be exactly 9).
*   **Example:**

```dart
CraftingGrid(
  children: List.generate(9, (index) => Text('Material ${index + 1}')),
)
```

## InventorySlot

*   **Description:** Represents a single slot in an inventory, typically with a border.
*   **Parameters:**
    *   `child`: (`Widget`, optional) - The widget to display inside the slot (e.g., an item icon or quantity).
    *   `border`: (`Color`, optional) - The border color of the slot.
*   **Example:**

```dart
InventorySlot(
  child: Text('16'),
)
```

## PickaxeColumn

*   **Description**: A column widget that uses `Column` internally and offers some styling option related to the library.
*   **Parameters**:
    *   `children`: (`List<Widget>`, required) - The widgets to display in the column.
    *   `mainAxisAlignment`: (`MainAxisAlignment`, optional) - How the children should be aligned vertically.
    *    `crossAxisAlignment`: (`CrossAxisAlignment`, optional) - How the children should be aligned horizontally.
*   **Example**:

```dart
PickAxeColumn(
 children: [
  PickaxeText('Item 1'),
  PickaxeText('Item 2'),
 ],
)
```

## PickaxeContainer

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

## PickaxeGrid

*   **Description:** A grid layout widget with the library's styles.
*   **Parameters:**
    *   `children`: (`List<Widget>`, required) - The widgets to display in the grid.
    *   `gridDelegate`: (`SliverGridDelegate`, optional) - A delegate that controls the layout of the children in the grid.
*   **Example:**

```dart
PickaxeGrid(
  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
  children: List.generate(9, (index) => Text('Item ${index + 1}')),
)
```

## PickaxeList

*   **Description:** A list layout widget with the library's styles.
*   **Parameters:**
    *   `children`: (`List<Widget>`, required) - The widgets to display in the list.
    *   `scrollDirection`: (`Axis`, optional, defaults to `Axis.vertical`) - The axis along which the list scrolls.
*   **Example:**

```dart
PickaxeList(
  children: List.generate(5, (index) => Text('Item ${index + 1}')),
)
```

## PickaxeRow

*   **Description**: A row widget that uses `Row` internally and offers some styling option related to the library.
*   **Parameters**:
    *   `children`: (`List<Widget>`, required) - The widgets to display in the row.
    *   `mainAxisAlignment`: (`MainAxisAlignment`, optional) - How the children should be aligned horizontally.
    *    `crossAxisAlignment`: (`CrossAxisAlignment`, optional) - How the children should be aligned vertically.
*   **Example**:

```dart
PickaxeRow(
 children: [
  PickaxeText('Item 1'),
  PickaxeText('Item 2'),
 ],
)
```

## PickaxeTable

*   **Description:** A table widget with the library's styles.
*   **Parameters:**
    *   `children`: (`List<TableRow>`, required) - The rows of the table.
    *   `border`: (`TableBorder`, optional) - The border to draw around the table.
*   **Example:**

```dart
PickaxeTable(
 border: TableBorder.all(),
 children: [
  TableRow(
 children: [
  Text('Header 1'),
  Text('Header 2'),
 ])
 ],
)
```