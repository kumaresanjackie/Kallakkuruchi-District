import 'package:flutter/material.dart';
import 'package:data_table_2/data_table_2.dart';

class AdminidtrativeSetup extends StatefulWidget {
  AdminidtrativeSetup({Key? key}) : super(key: key);

  @override
  _AdminidtrativeSetupState createState() => _AdminidtrativeSetupState();
}

class _AdminidtrativeSetupState extends State<AdminidtrativeSetup> {
  List data = [
    [
      '1',
      'Section “A”',
      'Huzur Sarishtadar, P.A(Gen)',
      'All Establishment Matters, Office Procedures',
    ],
    [
      '2',
      'Section “B”',
      'A.P.A(Lands), Deputy Tahsildar',
      'Land – Patta Transfer, Land Transfer, Land Lease and Encrochments',
    ],
    [
      '3',
      'Section “C”',
      'Huzur Sarishtadar(Magisterial), P.A(Gen)',
      'Law & Order, Magisterial (Court/Legal) matters, Detension Act.',
    ],
    [
      '4',
      'Section “D”',
      'P.A(Accounts), Dy. Tahsildar',
      'Accounts, Salary and other Bills',
    ],
    [
      '5',
      'Section “E”',
      'Special Dy. Collector(SDC), Dy. Tahsildar, Addl. Dy. Tahsildar',
      'Old Age Pension, C.M. Cell Petition, Public Grievences',
    ],
    [
      '6',
      'Section “F”',
      'Dy. Tahsildar',
      'Fair Copying, Inward Tappal Maintenance and Despatching',
    ],
    [
      '7',
      'Section “G”',
      'A.P.A(Lands), Dy. Tahsildar',
      'Stationery, Library, Maintenance of Gazette Publication, Birth/Death/Nativity Certificate genuiness verification',
    ],
    [
      '8',
      'Section “H”',
      'Dy. Tahsildar',
      'Jamabandi, Election, Census',
    ],
    [
      '9',
      'Section “I”',
      'Dy. Tahsildar',
      'VIP Visit, Independence/ Republic Day Celebrations arrangements, Department Exams, TNPSC etc',
    ],
    [
      '10',
      'Section “J”',
      'Dy. Collector(DBCW), Dy. Tahsildar, Spl. Dy.Tahsildar(Scholarship)',
      'District Backward class and Minority Welfare',
    ],
    [
      '11',
      'Section “K”',
      'District Supply Officer & P.A to D.S.O',
      'District Civil Supply Matters',
    ],
    [
      '12',
      'Section “L”',
      'Asst. Commissioner(Excise), Dy. Tahsildar',
      'Prohibition and Excise'
    ],
    [
      '13',
      'Section “M”',
      'DADWO, Supdt/Asst.Accounts Officer, Spl. Tahsildar',
      'District Adi-Dravidar Welfare',
    ],
    [
      '14',
      'Section “N”',
      'Dy. Tahsildar',
      'Village Administration, Record Room',
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Adminidtrative Setup"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(4),
        child: DataTable2(
            columnSpacing: 5,
            horizontalMargin: 15,
            dataRowHeight: 80,
            minWidth: 600,
            lmRatio: 50,
            columns: [
              DataColumn2(
                  label: Center(child: Text('Sl.no')), size: ColumnSize.L),
              DataColumn2(label: Text('Section Name'), size: ColumnSize.L),
              DataColumn2(label: Text('Section Head'), size: ColumnSize.L),
              DataColumn2(label: Text('Subject'), size: ColumnSize.L),
            ],
            rows: List<DataRow>.generate(
                data.length,
                (index) => DataRow(cells: [
                      DataCell(Center(child: Text(data[index][0]))),
                      DataCell(Text(data[index][1])),
                      DataCell(Text(data[index][2])),
                      DataCell(Text(data[index][3])),
                    ]))),
      ),
    );
  }
}
