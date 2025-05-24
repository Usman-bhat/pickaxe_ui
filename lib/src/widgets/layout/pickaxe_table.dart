import 'package:flutter/material.dart';
import '../../theme/pickaxe_colors.dart';


class PickaxeTable extends StatelessWidget {
  final List<String> headers;
  final List<List<String>> rows;

  const PickaxeTable({
    super.key,
    required this.headers,
    required this.rows,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
   child: DataTable(
  headingRowColor: WidgetStateProperty.all(PickaxeColors.surface),
  dataRowColor: WidgetStateProperty.all(PickaxeColors.background),
  columns: headers
      .map((header) => DataColumn(
            label: Text(header, style: TextStyle(color: PickaxeColors.textPrimary)),
          ))
      .toList(),
  rows: rows
      .map((row) => DataRow(
            cells: row
                .map((cell) => DataCell(
                      ConstrainedBox(
                        constraints: BoxConstraints(minWidth: 80),
                        child: Text(
                          cell,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: PickaxeColors.textPrimary),
                        ),
                      ),
                    ))
                .toList(),
          ))
      .toList(),
)
   
    );
  }
}

