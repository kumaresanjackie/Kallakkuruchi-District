import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class LocalBodies extends StatelessWidget {
  const LocalBodies({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data = [
      ['1', 'Manalurpet'],
      ['2', 'Unundurpettai'],
      ['3', 'Thiyagadurgam'],
      ['4', 'Vadakkanandal'],
      ['5', 'Chinnaselam'],
      ['6', 'Sankarapuram'],
      ['7', 'Tirukoilur'],
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Local Bodies"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                  color: Colors.grey,
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "Municipalities in Kallakurichi District",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: DataTable2(
                  columnSpacing: 1,
                  horizontalMargin: 15,
                  headingRowHeight: 30,
                  dataRowHeight: 30,
                  headingRowColor: MaterialStateProperty.all(
                      Color.fromRGBO(222, 118, 111, 0.5)),
                  minWidth: 100,
                  columns: [
                    DataColumn2(
                        label: Center(
                            child: Text(
                          'Sl.no',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        size: ColumnSize.S),
                    DataColumn2(
                        label: Text(
                          'Name Of Municipality',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        size: ColumnSize.L),
                  ],
                  rows: List<DataRow>.generate(
                      1,
                      (index) => DataRow(cells: [
                            DataCell(Center(child: Text('1'))),
                            DataCell(Text('Kallakurichi')),
                          ]))),
            ),
            Divider(
              height: 2,
              color: Colors.black,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                  color: Colors.grey,
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "Block Panchayats in Kallakurichi District",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: DataTable2(
                  columnSpacing: 1,
                  horizontalMargin: 15,
                  dataRowHeight: 30,
                  headingRowHeight: 40,
                  headingRowColor: MaterialStateProperty.all(
                      Color.fromRGBO(111, 118, 220, 0.5)),
                  minWidth: 100,
                  columns: [
                    DataColumn2(
                        label: Center(
                            child: Text(
                          'Sl.no',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        size: ColumnSize.S),
                    DataColumn2(
                        label: Text(
                          'Name Of Town Panchayat',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        size: ColumnSize.L),
                  ],
                  rows: List<DataRow>.generate(
                      data.length,
                      (index) => DataRow(cells: [
                            DataCell(Center(child: Text(data[index][0]))),
                            DataCell(Text(data[index][1])),
                          ]))),
            ),
            Divider(
              height: 2,
              color: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}
