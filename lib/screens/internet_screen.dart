import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class InternetScreen extends StatefulWidget {
  const InternetScreen({Key? key}) : super(key: key);

  @override
  _InternetScreenState createState() => _InternetScreenState();
}

class _InternetScreenState extends State<InternetScreen> {
  bool showDetail1 = false;
  bool showDetail2 = false;
  bool checkboxValue1 = false;
  bool checkboxValue2 = false;
  bool checkboxValue3 = false;
  int totalPayment = 0;

  @override
  void initState() {
    super.initState();
    _updateTotalPayment();
  }

  void _updateTotalPayment() {
    int newTotal = 0;
    if (checkboxValue2) newTotal += 450000;
    if (checkboxValue3) newTotal += 450000;
    setState(() {
      totalPayment = newTotal;
    });
  }

  void _onChooseAllChanged(bool? newValue) {
    setState(() {
      checkboxValue1 = newValue!;
      checkboxValue2 = newValue;
      checkboxValue3 = newValue;
      _updateTotalPayment();
    });
  }

  void _onCardCheckboxChanged(bool? newValue, int cardNumber) {
    setState(() {
      if (cardNumber == 2) {
        checkboxValue2 = newValue!;
      } else if (cardNumber == 3) {
        checkboxValue3 = newValue!;
      }
      _updateTotalPayment();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new, color: Color(0xFF3E414C)),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Internet',
          style: TextStyle(
            color: Color(0xFF3E414C),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        elevation: 2,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Color(0xFFFFF5E6),
                        border: Border.all(color: Color(0xFFF3CC46), width: 2),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.info_outline, color: Color(0xFFF3CC46)),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              'Perlu diketahui, proses verifikasi transaksi dapat memakan waktu hingga 1x24 jam.',
                              style: TextStyle(
                                color: Color(0xFF3E414C),
                                fontSize: 12,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Choose All',
                          style: TextStyle(
                            color: Color(0xFF3E414C),
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Checkbox(
                          value: checkboxValue1,
                          onChanged: _onChooseAllChanged,
                          activeColor: Color(0xFFE12029),
                        ),
                      ],
                    ),
                    buildCard(
                      context,
                      'Rp450.000',
                      'Due date on 16 Feb 2024',
                      checkboxValue2,
                      (newValue) => _onCardCheckboxChanged(newValue, 2),
                      showDetail1,
                      () {
                        setState(() {
                          showDetail1 = !showDetail1;
                        });
                      },
                    ),
                    buildCard(
                      context,
                      'Rp450.000',
                      'Due date on 16 Feb 2024',
                      checkboxValue3,
                      (newValue) => _onCardCheckboxChanged(newValue, 3),
                      showDetail2,
                      () {
                        setState(() {
                          showDetail2 = !showDetail2;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
          details(context),
          buildBottomContainer(context),
        ],
      ),
    );
  }

  Widget buildCard(
    BuildContext context,
    String amount,
    String dueDate,
    bool checkboxValue,
    void Function(bool?) onChanged,
    bool showDetail,
    void Function() toggleDetail,
  ) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        border: Border.all(color: Colors.grey[300]!, width: 1),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.network(
                      'https://picsum.photos/seed/497/600',
                      width: 32,
                      height: 32,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        amount,
                        style: TextStyle(
                          color: Color(0xFF3E414C),
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        dueDate,
                        style: TextStyle(color: Color(0xFF838799)),
                      ),
                    ],
                  ),
                ],
              ),
              Checkbox(
                value: checkboxValue,
                onChanged: onChanged,
                activeColor: Color(0xFFE12029),
                checkColor: Colors.white,
              ),
            ],
          ),
          Divider(color: Colors.grey[300]),
          if (showDetail)
            Container(
              width: double.infinity,
              height: 128,
              constraints: BoxConstraints(
                maxWidth: 430,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
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
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Provider',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF3E414C),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                ),
                              ),
                              Text(
                                'Nethome',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF3E414C),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'ID Pelanggan',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF3E414C),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                ),
                              ),
                              Text(
                                '1123645718921',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF3E414C),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Paket Layanan',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF3E414C),
                                  fontSize: 14,
                                  letterSpacing: 0,
                                ),
                              ),
                              Text(
                                'Nethome 100 Mbps',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  fontFamily: 'Roboto',
                                  color: Color(0xFF3E414C),
                                  fontSize: 14,
                                  letterSpacing: 0,
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
          GestureDetector(
            onTap: toggleDetail,
            child: Text(
              showDetail ? 'Close' : 'See Details',
              style: TextStyle(color: Color(0xFFE12029)),
            ),
          ),
        ],
      ),
    );
  }

  Widget details(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
      width: 424,
      height: 64,
      decoration: BoxDecoration(
        color: Colors.white, // Use your desired color
        borderRadius: BorderRadius.circular(0),
        border: Border.all(color: Colors.grey), // Add border if needed
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Text(
              'Transaction History',
              style: TextStyle(
                fontFamily: 'Roboto',
                color: Color(0xFF3E414C),
                fontSize: 16,
                letterSpacing: 0,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 16, 0),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/transactionHistory');
              },
              icon: Icon(
                Icons.arrow_forward_ios_outlined,
                color: Color(0xFF1C1B1F),
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildBottomContainer(BuildContext context) {
    return Container(
      // color: Colors.grey[200],
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.receipt_long, color: Color(0xFFE12029)),
                  SizedBox(width: 8),
                  Text(
                    'Total Payment',
                    style: TextStyle(
                      color: Color(0xFF3E414C),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              Text(
                'Rp$totalPayment',
                style: TextStyle(
                  color: Color(0xFF244091),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/paymentSuccess');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFE12029),
              padding: EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              textStyle: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            child: Center(
                child: Text(
              'PAY NOW',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            )),
          ),
        ],
      ),
    );
  }
}
