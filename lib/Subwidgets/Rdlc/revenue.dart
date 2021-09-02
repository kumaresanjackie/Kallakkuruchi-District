import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

class Revenue extends StatelessWidget {
  const Revenue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data = [
      ['Revenue Divisions', '2'],
      ['Revenue Taluks', '6'],
      ['Revenue Firkas', '24'],
      ['Revenue Villages', '562']
    ];
    List data1 = [
      ['1', 'Tirukoilur'],
      ['2', 'Kallakurichi']
    ];
    List data2 = [
      [
        '1',
        'Tirukoilur',
        '''
      1.Tirukoilur
      2.Ulundurpet
      '''
      ],
      [
        '2',
        'Kallakurichi',
        ''' 1.Kallakurichi 2.Sankarapura 3.Chinnaselam 4.Kalvarayan_Hills
      '''
      ]
    ];

    List data3 = [
      ['1', 'Tirukoilur', '2', '10'],
      ['2', 'Kallakurichi', '4', '14']
    ];

    List data4 = [
      ['1', 'Tirukoilur', '74'],
      ['2', 'Ulundurpet', '151'],
      ['3', 'Kallakurichi', '93'],
      ['4', 'Sankarapuram', '133'],
      ['5', 'ChinnaSelam', '63'],
      ['6', 'Kalvarayan Hills', '44']
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text("Revenue Administration"),
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
                        "Revenue Administration",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
              Container(
                width: 250,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: DataTable2(
                      columnSpacing: 5,
                      horizontalMargin: 15,
                      dataRowHeight: 40,
                      headingRowHeight: 30,
                      headingRowColor: MaterialStateProperty.all(
                          Color.fromRGBO(196, 133, 75, 0.5)),
                      minWidth: MediaQuery.of(context).size.width,
                      columns: [
                        DataColumn2(
                            label: Text(
                              'Name',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            size: ColumnSize.L),
                        DataColumn2(
                            label: Text(
                              'Total',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            size: ColumnSize.L),
                      ],
                      rows: List<DataRow>.generate(
                          data.length,
                          (index) => DataRow(cells: [
                                DataCell(Text(data[index][0])),
                                DataCell(Text(data[index][1])),
                              ]))),
                ),
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
                        "Revenue Divisions-2",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
              Container(
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: DataTable2(
                      columnSpacing: 1,
                      horizontalMargin: 15,
                      dataRowHeight: 40,
                      headingRowColor: MaterialStateProperty.all(
                          Color.fromRGBO(222, 218, 120, 0.5)),
                      headingRowHeight: 30,
                      minWidth: MediaQuery.of(context).size.width,
                      columns: [
                        DataColumn2(
                            label: Text(
                              'Sl.no',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            size: ColumnSize.L),
                        DataColumn2(
                            label: Text(
                              'Revenue Division Name',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            size: ColumnSize.L),
                      ],
                      rows: List<DataRow>.generate(
                          data1.length,
                          (index) => DataRow(cells: [
                                DataCell(Text(data1[index][0])),
                                DataCell(Text(data1[index][1])),
                              ]))),
                ),
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
                        "Revenue Taluks-2",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
              Container(
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: DataTable2(
                      columnSpacing: 1,
                      horizontalMargin: 15,
                      dataRowHeight: 80,
                      headingRowHeight: 30,
                      headingRowColor: MaterialStateProperty.all(
                          Color.fromRGBO(166, 222, 120, 0.5)),
                      minWidth: MediaQuery.of(context).size.width,
                      columns: [
                        DataColumn2(
                            label: Text(
                              'Sl.no',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            size: ColumnSize.S),
                        DataColumn2(
                            label: Text(
                              'Division Name',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            size: ColumnSize.L),
                        DataColumn2(
                            label: Text(
                              'Taluk Name',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            size: ColumnSize.L),
                      ],
                      rows: List<DataRow>.generate(
                          data2.length,
                          (index) => DataRow(cells: [
                                DataCell(Text(data2[index][0])),
                                DataCell(Text(data2[index][1])),
                                DataCell(Text(data2[index][2])),
                              ]))),
                ),
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
                        "Revenue Firkas-24",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
              Container(
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: DataTable2(
                      columnSpacing: 1,
                      horizontalMargin: 15,
                      dataRowHeight: 50,
                      headingRowHeight: 60,
                      headingRowColor: MaterialStateProperty.all(
                          Color.fromRGBO(120, 222, 186, 0.5)),
                      minWidth: MediaQuery.of(context).size.width,
                      columns: [
                        DataColumn2(
                            label: Text(
                              'Sl.no',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            size: ColumnSize.L),
                        DataColumn2(
                            label: Text(
                              '''Revenue 
Division
Name''',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            size: ColumnSize.L),
                        DataColumn2(
                            label: Center(
                              child: Text(
                                '''No of 
Taluks''',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            size: ColumnSize.L),
                        DataColumn2(
                            label: Center(
                              child: Text(
                                '''No of 
Firkas''',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            size: ColumnSize.L),
                      ],
                      rows: List<DataRow>.generate(
                          data3.length,
                          (index) => DataRow(cells: [
                                DataCell(Text(data3[index][0])),
                                DataCell(Text(data3[index][1])),
                                DataCell(Center(child: Text(data3[index][2]))),
                                DataCell(Center(child: Text(data3[index][2]))),
                              ]))),
                ),
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
                        "Revenue Villages – 562",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    )),
              ),
              Container(
                width: 350,
                child: Padding(
                  padding: const EdgeInsets.all(0),
                  child: DataTable2(
                      columnSpacing: 1,
                      horizontalMargin: 15,
                      dataRowHeight: 45,
                      headingRowHeight: 60,
                      headingRowColor: MaterialStateProperty.all(
                          Color.fromRGBO(104, 139, 227, 0.5)),
                      minWidth: MediaQuery.of(context).size.width,
                      columns: [
                        DataColumn2(
                            label: Text(
                              'Sl.no',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            size: ColumnSize.L),
                        DataColumn2(
                            label: Text(
                              'Name of Taluk',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            size: ColumnSize.L),
                        DataColumn2(
                            label: Center(
                              child: Text(
                                '''No Of Revenue
   Villages''',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                            size: ColumnSize.L),
                      ],
                      rows: List<DataRow>.generate(
                          data4.length,
                          (index) => DataRow(cells: [
                                DataCell(Text(data4[index][0])),
                                DataCell(Text(data4[index][1])),
                                DataCell(Center(child: Text(data4[index][2]))),
                              ]))),
                ),
              ),
            ],
          ),
        ));
  }
}
