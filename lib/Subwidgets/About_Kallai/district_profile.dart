import 'package:flutter/material.dart';

class DistrictProfile extends StatefulWidget {
  DistrictProfile({Key? key}) : super(key: key);

  @override
  _DistrictProfileState createState() => _DistrictProfileState();
}

class _DistrictProfileState extends State<DistrictProfile> {
  final dp = [
    'Name of the District ',
    'District Head Quarters ',
    'Area  ',
    'Population ',
    'Revenue Divisions(02) ',
    'Taluks',
    'No. of Firkas',
    'No. of Revenue Villages',
    'No. of Village Panchayats',
    'Assembly Constituencies',
    '''Parliamentary 
    Constituencies''',
    'Municipalities ',
    'Panchayat Unions',
    'Town Panchayats',
    '''The village far away
from the district head 
quarters''',
    '''
Government Schools

  1.Primary Schools
  2.Middle Schools
  3.High Schools
  4.Higher Secondary Schools
''',
    '''
Adi Dravidar Welfare School

  1.Primary Schools
  2.Middle Schools
  3.High Schools
  4.Higher Secondary Schools
    ''',
    '''
Tribal Welfare School 

  1.Primary Schools
  2.Middle Schools
  3.High Schools
  4.Higher Secondary Schools
    ''',
    'Anganvadis',
    '''
Government Hospitals

                                      
                                      
                                      
                                        
                                      
  ''',
    'No. of Primary Health Centres ',
    'No. of Health Sub Centres',
    'Dispensary',
    '''
River's

                                      
                                      
                                      
                                      
                                      
                                      
                                      
  ''',
    '''
Dams


  1.Gomukhi
  2.Manimukhtha
  ''',
    '''

Pwd Tanks 
Sub Division Name

  1.Vellar Basin 
  2.Lower Pennaiyar
    Basin
  ''',
    '''
  Rural Developmen
   (Minor Irrigation Tanks)
  ''',
    'State Highways',
    'Major Districts Roads',
    'Other Districts Roads ',
    'Sugarcane Development Roads',
    'Food grain production',
    'Horticulture Production',
    'Cattle Population',
  ];

  final dpd = [
    'Kallakurichi ',
    'Kallakurichi ',
    '3530.58 sq.km.',
    '13,77,494',
    '02',
    '06',
    '24',
    '562',
    '412',
    '05',
    '''
    
    Kallakurichi(Part)
    Viluppuram(Part)
 ''',
    'Kallakurichi ',
    '09',
    '07',
    '''
    Varam Village (80km)
   in Kalvarayan Hills
   Taluk
    ''',
    '''
    No.

    469
    167
    60
    69
    ''',
    '''
    No.

    20
    05
    03
    0
    ''',
    '''
    No.

    26
    13
    04
    07
    ''',
    '1121',
    '''
Location

  1.Kallakkurichi
  2.Chinnaksalem
  3.SankaraPuram
  4.Thiukoilur
  5.Ulundurpet
    ''',
    '45',
    '215',
    'Thoradipattu',
    '''
Name

  1.Gomukhi River
  2.Mani River
  3.Muktha River
  4.Thirumanimuktha 
  5.Mayura River
  6.Kedilam River
  7.Sesha Nathi
    ''',
    '''
Height  Capacity
(feet)    (mcft)

  46        560
  36        737
    ''',
    '''
No Of   Capacity  No Of
Tanks    (mcft)   Anicuts

  212    3514.13     74
  119    1778.715    01
    ''',
    '''

    359
    ''',
    '312.946 km.',
    '289.150 km.',
    '874.202 km.',
    '118.750 km.',
    '6.25 lakh metric tonne.',
    '3.14 lakh metric tonne.',
    '4,14,715'
  ];
  @override
  Widget build(
    BuildContext context,
  ) {
    return Scaffold(
        appBar: AppBar(
          title: Text('District Profile'),
          centerTitle: true,
        ),
        body: ListView.builder(
            itemCount: dp.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      dp[index],
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    Text(dpd[index],
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                  ],
                ),
              );
            }));
  }
}
// Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 // Text("Name of the District : "),
//                 // Text("Kallakurichi"),
//                 Text('${dp}'),
//                 Text('${dpd}')
//               ],
//             ),
//           )
//         ],
//       ),
