import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:movies_app_clone/utils/constants.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({Key? key, required this.padding}) : super(key: key);
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          color: kGreyColor.withOpacity(0.15),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            SizedBox(
              width: 8,
            ),
            Icon(Ionicons.search,color: Colors.white,),
            SizedBox(
              width: 8,
            ),
            Expanded(
              child: TextField(
                style: TextStyle(
                  color: kWhiteColor.withOpacity(0.7),
                  fontSize: 17,
                  letterSpacing: -0.41,
                ),
                decoration: InputDecoration(
                    hintText: "Search",
                    isDense: true,
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: kWhiteColor.withOpacity(0.3),
                      fontSize: 17,
                      letterSpacing: -0.41,
                    )),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Icon(Ionicons.mic,color: Colors.white,),
            const SizedBox(
              width: 8,
            ),
          ],
        ),
      ),
    );
  }
}
