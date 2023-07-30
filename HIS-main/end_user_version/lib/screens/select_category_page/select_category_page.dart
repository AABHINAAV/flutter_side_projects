import 'package:endUser_version/screens/select_category_page/data.dart';
import 'package:endUser_version/screens/select_date_page/select_date_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SelectCategoryPage extends StatefulWidget {
  @override
  SelectCategoryPageState createState() => new SelectCategoryPageState();
}

class SelectCategoryPageState extends State<SelectCategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: categoriesList(),
    );
  }

  SingleChildScrollView categoriesList() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: allCategories.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SelectDatePage()));
            },
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue[100],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SvgPicture.asset(
                    allCategories[index].imageUrl,
                    height: 50,
                    width: 50,
                  ),
                  Text(
                    allCategories[index].categoryName,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text(
        'Select Category',
        style: TextStyle(
          fontSize: 30,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.teal,
    );
  }
}
