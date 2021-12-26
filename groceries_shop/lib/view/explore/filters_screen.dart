import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:groceries_shop/widget/buttons.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  _FilterScreenState createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {
  bool ValueCatergoryeggs = false;
  bool ValueCatergorypasta = false;
  bool ValueCatergorychip = false;
  bool ValueCatergoryfast = false;
  bool Brandcall = false;
  bool Brandcocola = false;
  bool Brandlfad = false;
  bool Brandkazi = false;

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset("asset/images/cancel.png"),
        title: const Center(
          child: Text("Filters",style: TextStyle(color: Colors.black),),
        ),
      ),
      body:  SingleChildScrollView(
        child: Container(
            padding: const EdgeInsets.only(left: 20,top: 20,right: 20),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
              color: Colors.black12,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("Categories",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,),),
                CheckboxListTile(
                  
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text("Eggs"),
                    checkColor: Colors.white,
                    activeColor: const Color(0xFF53B175),
                    value: ValueCatergoryeggs,
                    onChanged: (value) {
                      setState(() {
                        ValueCatergoryeggs = value!;
                      });
                    }),
                CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text("Noodles & Pasta"),
                    checkColor: Colors.white,
                    activeColor: const Color(0xFF53B175),
                    value: ValueCatergorypasta,
                    onChanged: (value) {
                      setState(() {
                        ValueCatergorypasta = value!;
                      });
                    }),
                CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text("Chips & Crisps"),
                    checkColor: Colors.white,
                    activeColor: const Color(0xFF53B175),
                    value: ValueCatergorychip,
                    onChanged: (value) {
                      setState(() {
                        ValueCatergorychip = value!;
                      });
                    }),
                CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text("Fast Food"),
                    checkColor: Colors.white,
                    activeColor: const Color(0xFF53B175),
                    value: ValueCatergoryfast,
                    onChanged: (value) {
                      setState(() {
                        ValueCatergoryfast = value!;
                      });
                    }),

                const Text("Brand",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,)),
                CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text("Individual Callection"),
                    checkColor: Colors.white,
                    activeColor: const Color(0xFF53B175),

                    value: Brandcall,
                    onChanged: (value) {
                      setState(() {
                        Brandcall= value!;
                      });
                    }),
                CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text("Cocola"),
                    checkColor: Colors.white,
                    activeColor: const Color(0xFF53B175),
                    value: Brandcocola,
                    onChanged: (value) {
                      setState(() {
                        Brandcocola= value!;
                      });
                    }),
                CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text("Ifad"),
                    checkColor: Colors.white,
                    activeColor: const Color(0xFF53B175),
                    value: Brandlfad,
                    onChanged: (value) {
                      setState(() {
                        Brandlfad = value!;
                      });
                    }),
                CheckboxListTile(
                    controlAffinity: ListTileControlAffinity.leading,
                    title: const Text("Kazi Farmas"),
                    checkColor: Colors.white,
                    activeColor: const Color(0xFF53B175),
                    value: Brandkazi,
                    onChanged: (value) {
                      setState(() {
                        Brandkazi = value!;
                      });
                    }),
                buttons(name: "Apply Filter", colors: const Color(0xFF53B175),heightbutton: 67),
                const Padding(padding: EdgeInsets.only(bottom: 10)),
              ],
            ),
          ),
      ),

    );
  }
}
