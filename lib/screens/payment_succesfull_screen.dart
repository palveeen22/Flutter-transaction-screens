import 'package:flutter/material.dart';

class PaymentSuccses extends StatefulWidget {
  const PaymentSuccses({Key? key}) : super(key: key);

  @override
  State<PaymentSuccses> createState() => _PaymentSuccsesState();
}

class _PaymentSuccsesState extends State<PaymentSuccses> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF1F4F8),
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Color(0xFF3E414C),
              size: 20,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: Text(
            'Transaction Details',
            style: TextStyle(
              fontFamily: 'Roboto',
              color: Color(0xFF3E414C),
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
          elevation: 2,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Wrap(
                  spacing: 10,
                  runSpacing: 10,
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.start,
                  direction: Axis.horizontal,
                  runAlignment: WrapAlignment.start,
                  verticalDirection: VerticalDirection.down,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: 213,
                      constraints: BoxConstraints(
                        maxWidth: 750,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.check_circle_outlined,
                              color: Color(0xFF18B368),
                              size: 80,
                            ),
                            Align(
                              alignment: AlignmentDirectional(0, 0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Rp',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  Text(
                                    '455.000',
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: Color(0xFF3E414C),
                                      fontSize: 32,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 4, 0, 12),
                              child: Text(
                                'Pembayaran Berhasil',
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF18B368),
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 128,
                      constraints: BoxConstraints(
                        maxWidth: 430,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Provider',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: Color(0xFF3E414C),
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        'Nethome',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: Color(0xFF3E414C),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'ID Pelanggan',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: Color(0xFF3E414C),
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        '1123645718921',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: Color(0xFF3E414C),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Paket Layanan',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: Color(0xFF3E414C),
                                          fontSize: 14,
                                        ),
                                      ),
                                      Text(
                                        'Nethome 100 Mbps',
                                        textAlign: TextAlign.end,
                                        style: TextStyle(
                                          fontFamily: 'Roboto',
                                          color: Color(0xFF3E414C),
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Container(
                    width: double.infinity,
                    height: 284,
                    constraints: BoxConstraints(
                      maxWidth: 430,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(0),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(16, 16, 16, 24),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'No. Transaksi',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: Color(0xFF3E414C),
                                      fontSize: 14,
                                    ),
                                  ),
                                  Text(
                                    'BC444724669887648110',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontFamily: 'Roboto',
                                      color: Color(0xFF3E414C),
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                thickness: 0.5,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Waktu Transaksi',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF3E414C),
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                '15 Feb 2024 10:32',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF3E414C),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 0.5,
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Jumlah Tagihan',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF3E414C),
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Rp450.000',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF3E414C),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 0.5,
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Convenience Fee',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF3E414C),
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'Rp5.000',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF3E414C),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 0.5,
                            color: Colors.grey,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Payment Method',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF3E414C),
                                  fontSize: 14,
                                ),
                              ),
                              Text(
                                'BCA Virtual Account',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF3E414C),
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 0.5,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Text(
                    'Proses verifikasi transaksi dapat memakan waktu\nhingga 1x24 jam.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      color: Color(0xFF838799),
                    ),
                  ),
                ),
              ]
                  .map((widget) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 5),
                      child: widget))
                  .toList(),
            ),
          ),
        ),
      ),
    );
  }
}
