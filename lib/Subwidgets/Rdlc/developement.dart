import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class Developement extends StatelessWidget {
  const Developement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data = [
      ['1', 'Chinnaselam'],
      ['2', 'Kallakurichi'],
      ['3', 'Rishivandhiyam'],
      ['4', 'Thiagadurgam'],
      ['5', 'Thirunavalur'],
      ['6', 'Ulundurpet'],
      ['7', 'Kalrayan Hills'],
      ['8', 'Sankarapuram'],
      ['9', 'Tirukoilur'],
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text("Developement"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                  // color: Colors.grey,
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "No of Blocks : 9",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )),
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
                  headingRowColor: MaterialStateProperty.all(
                      Color.fromRGBO(222, 118, 220, 0.5)),
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
                          'Name Of Block Panchayat',
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
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "No of Village Panchayats : 412",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Container(
                  color: Colors.grey,
                  height: 30,
                  width: MediaQuery.of(context).size.width,
                  child: Center(
                    child: Text(
                      "Village Panchayats- Blockwise",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(4),
              child: DataTable2(
                  columnSpacing: 5,
                  horizontalMargin: 15,
                  dataRowHeight: 40,
                  minWidth: 100,
                  headingRowColor: MaterialStateProperty.all(
                      Color.fromRGBO(122, 218, 120, 0.5)),
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
                          'Block/Panchayat Union',
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
          ],
        ),
      ),
    );
  }
}
