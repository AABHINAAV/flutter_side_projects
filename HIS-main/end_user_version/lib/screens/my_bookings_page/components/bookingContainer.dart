import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BookingContainer extends StatelessWidget {
  final int index;
  const BookingContainer({
    Key key,
    @required this.myAllBookings,
    @required this.size,
    this.index,
  }) : super(key: key);

  final List<Map<String, String>> myAllBookings;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.blue[200],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          imageSectionLeft(),
          detailsSectionRight(),
        ],
      ),
    );
  }

  SvgPicture imageSectionLeft() {
    return SvgPicture.asset(
      myAllBookings[index]['specialistImage'],
      height: size.height * 0.06,
    );
  }

  Container detailsSectionRight() {
    return Container(
      width: size.width * 0.75,
      child: ListView.builder(
        shrinkWrap: true,
        physics: ScrollPhysics(),
        itemCount: myAllBookings[index].length - 1,
        itemBuilder: (context, i) {
          String key = myAllBookings[index].keys.elementAt(i);
          return Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  key.toString() + " : ",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
                Text(
                  myAllBookings[index][key],
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
