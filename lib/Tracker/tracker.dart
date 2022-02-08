import 'dart:convert';
import 'package:dt_app/NavigationDrawer.dart';
import 'package:dt_app/Tracker/notification.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pie_chart/pie_chart.dart';

class TrackerPage extends StatefulWidget {
  const TrackerPage({Key? key}) : super(key: key);

  @override
  _TrackerPageState createState() => _TrackerPageState();
}

class _TrackerPageState extends State<TrackerPage> {
  int alertValue = 2500;
  NotificationService note = NotificationService();

  List<Item> item = [];
  String dropdownValue = "Others";
  int total = 0;

  double otherTotal = 0;
  double foodTotal = 0;
  double entertainmentTotal = 0;
  double selfDevTotal = 0;
  double travelTotal = 0;

  // PieChart Data
  Map<String, double> dataMap = {};

  List<String> listItem = [
    "Others",
    "Food",
    "Entertainment",
    "Self Devlopment",
    "Travel"
  ];

  final _formKey = GlobalKey<FormState>();
  TextEditingController? _expenseName;
  TextEditingController? _expenseValue;

  @override
  void initState() {
    super.initState();
    note.intialize();
    _expenseName = TextEditingController();
    _expenseValue = TextEditingController();
    readData();
    dropdownValue = listItem[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // leading: IconButton(icon: Icon(Icons.menu), onPressed: () => SideDrawer()),
          toolbarHeight: 80,
          elevation: 0,
          backgroundColor: Color(0xff1C154C),
          centerTitle: true,
          title: Text(
                    "Tracker",
                    style: GoogleFonts.poppins(
                      fontSize: 28,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      // backgroundColor: Colors.red,
                    ),
                    textAlign: TextAlign.center,
                  ),
        ),
        drawer: SideDrawer(),
      backgroundColor: Color(0xff1C154C),
      body: Stack(
        // alignment: Alignment.bottomRight,
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                // PieChart Area
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    height: 290,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color(0xff1C154C)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              "EXPENSE GRAPH",
                              style: GoogleFonts.poppins(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left:3.0),
                              child: Container(
                                child: dataMap.isEmpty
                                    ? null
                                    : PieChart(
                                        dataMap: dataMap,
                                        legendOptions: LegendOptions(
                                            legendTextStyle: TextStyle(color: Colors.white),
                                            legendPosition:
                                                LegendPosition.right),
                                      ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 25),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Expense",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500, fontSize: 22),
                          ),
                          Text(
                            "Rs. $total",
                            style: GoogleFonts.poppins(
                                fontSize: 20, color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                SizedBox(
                  height: 15,
                ),

                //Display Area
                Container(
                    child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...item.map(
                        (element) => Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            height: 75,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(15)),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        element.expenseName,
                                        style: GoogleFonts.poppins(
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      Text(
                                        element.expenseType,
                                      )
                                    ],
                                  ),
                                  Text(
                                    "- Rs. ${element.expenseValue}",
                                    style: GoogleFonts.poppins(
                                      fontSize: 20,
                                      color: Colors.red,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
              ],
            ),
          ),

          //Add Button
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: FloatingActionButton(
                backgroundColor: Colors.deepPurple[900],
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Form(
                              key: _formKey,
                              child: ListView(
                                shrinkWrap: true,
                                children: [
                                  SizedBox(
                                    height: 15,
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                          color: Colors.grey,
                                        )),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15),
                                      child: DropdownButtonFormField<String>(
                                        value: dropdownValue,
                                        onChanged: (String? newValue) {
                                          setState(() {
                                            dropdownValue = newValue!;
                                          });
                                        },
                                        items: listItem
                                            .map<DropdownMenuItem<String>>(
                                                (String value) {
                                          return DropdownMenuItem(
                                              value: value, child: Text(value));
                                        }).toList(),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  TextFormField(
                                    validator: (expensename) {
                                      if (expensename!.isNotEmpty) {
                                        return null;
                                      } else {
                                        return "Enter a name";
                                      }
                                    },
                                    controller: _expenseName,
                                    decoration: InputDecoration(
                                        labelText: "Expense Name",
                                        hintText: "Name",
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)))),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                  TextFormField(
                                    validator: (expenseValue) {
                                      if (expenseValue!.isNotEmpty) {
                                        return null;
                                      } else {
                                        return "Please enter a price";
                                      }
                                    },
                                    controller: _expenseValue,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        labelText: "Price",
                                        hintText: "Value",
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)))),
                                  ),
                                  SizedBox(
                                    height: 15,
                                  ),
                                  ElevatedButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        item.add(
                                          Item(
                                              expenseType: dropdownValue,
                                              expenseName: _expenseName!.text,
                                              expenseValue:
                                                  _expenseValue!.text),
                                        );
                                        Navigator.of(context).pop();
                                        totalExpense();
                                        saveData();
                                        setState(() {
                                          _expenseName!.clear();
                                          _expenseValue!.clear();
                                        });
                                      }
                                    },
                                    child: Text("Add"),
                                    style: ElevatedButton.styleFrom(primary: Color(0xff1C154C)),
                                  ),
                                  SizedBox(
                                    height: 25,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                
                child: Text("+", style: GoogleFonts.poppins(fontSize: 35)),
              ),
            ),
          ),
        ],
      ),
    );
  }

  saveData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    List<String> spList =
        item.map((eachItem) => json.encode(eachItem.toMap())).toList();
    sharedPreferences.setStringList("list", spList);

    sharedPreferences.setInt("totalExpense", total);

    sharedPreferences.setDouble("otherTotalExpense", otherTotal);

    sharedPreferences.setDouble("foodTotalExpense", foodTotal);
    sharedPreferences.setDouble(
        "entertainmentTotalExpense", entertainmentTotal);

    sharedPreferences.setDouble("selfDevExpense", selfDevTotal);
    sharedPreferences.setDouble("travelTotalExpense", travelTotal);
  }

  readData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    List<String> spList = sharedPreferences.getStringList('list')!;
    item =
        spList.map((eachItem) => Item.fromMap(json.decode(eachItem))).toList();

    total = sharedPreferences.getInt("totalExpense")!;

    otherTotal = sharedPreferences.getDouble("otherTotalExpense") ?? 0;
    foodTotal = sharedPreferences.getDouble("foodTotalExpense") ?? 0;
    entertainmentTotal =
        sharedPreferences.getDouble("entertainmentTotalExpense") ?? 0;
    selfDevTotal = sharedPreferences.getDouble("selfDevExpense") ?? 0;
    travelTotal = sharedPreferences.getDouble("travelTotalExpense") ?? 0;
    totalExpense();

    // print("Datamap = $dataMap");

    setState(() {});
  }

  totalExpense() {
    // Total Expense
    total = item.fold(
        0,
        (previousValue, element) =>
            previousValue + (int.parse(element.expenseValue)));
    // print("Total = $total");

    // Excessive Alert Notification
    if(total >= alertValue){
      note.instantNotification();
    }


    // Total Expense of Other Type
    otherTotal = item.fold(
        0,
        (previousValue, element) =>
            previousValue +
            (element.expenseType == "Others"
                ? int.parse(element.expenseValue)
                : 0));
    // print("Other Total = $otherTotal");

    // Total Expense of Food Type
    foodTotal = item.fold(
        0,
        (previousValue, element) =>
            previousValue +
            (element.expenseType == "Food"
                ? double.parse(element.expenseValue)
                : 0));
    // print("Food Total = $foodTotal");

    // Total Expense of Entertainment Type
    entertainmentTotal = item.fold(
        0,
        (previousValue, element) =>
            previousValue +
            (element.expenseType == "Entertainment"
                ? double.parse(element.expenseValue)
                : 0));
    // print("Entertainment Total = $entertainmentTotal");

    // Total Expense of Self Devlopment Type
    selfDevTotal = item.fold(
        0,
        (previousValue, element) =>
            previousValue +
            (element.expenseType == "Self Devlopment"
                ? double.parse(element.expenseValue)
                : 0));
    // print("Self Devlopment Total = $selfDevTotal");

    // Total Expense of Travel Type
    travelTotal = item.fold(
        0,
        (previousValue, element) =>
            previousValue +
            (element.expenseType == "Travel"
                ? double.parse(element.expenseValue)
                : 0));
    // print("Travel Total = $travelTotal");

    dataMap = {
      "Other": otherTotal,
      "Food": foodTotal,
      "Entertainment": entertainmentTotal,
      "Self Devlopment": selfDevTotal,
      "Travel": travelTotal,
    };
  }
}

class Item {
  String expenseType;
  String expenseName;
  String expenseValue;

  Item(
      {required this.expenseType,
      required this.expenseName,
      required this.expenseValue});

  Item.fromMap(Map map)
      : this.expenseType = map['expenseType'],
        this.expenseName = map['expenseName'],
        this.expenseValue = map['expenseValue'];

  Map toMap() {
    return {
      'expenseType': this.expenseType,
      'expenseName': this.expenseName,
      'expenseValue': this.expenseValue,
    };
  }
}
