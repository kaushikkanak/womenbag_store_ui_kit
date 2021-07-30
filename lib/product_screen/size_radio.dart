import 'package:flutter/material.dart';
import 'package:womenbag_store_ui_kit/models/size_model.dart';

class SizeRadio extends StatefulWidget {
  const SizeRadio({
    Key? key,
  }) : super(key: key);

  @override
  _SizeRadioState createState() => _SizeRadioState();
}

class _SizeRadioState extends State<SizeRadio> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.only(left: 8),
      height: size.height * 0.1,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: sizeRadioData.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  sizeRadioData
                      .forEach((element) => element.isSelected = false);
                  sizeRadioData[index].isSelected = true;
                });
              },
              child: RadioItem(sizemodel: sizeRadioData[index]),
            );
          }),
    );
  }
}

class RadioItem extends StatelessWidget {
  const RadioItem({Key? key, required this.sizemodel}) : super(key: key);
  final SizeModel sizemodel;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Container(
            height: size.height * 0.06,
            width: size.width * 0.12,
            child: Center(
              child: Text(sizemodel.buttonText,
                  style: TextStyle(
                      color: sizemodel.isSelected ? Colors.white : Colors.black,
                      fontSize: 18.0)),
            ),
            decoration: BoxDecoration(
              color:
                  sizemodel.isSelected ? Color(0xffC7051A) : Colors.transparent,
              border: Border.all(
                  width: 1.0,
                  color: sizemodel.isSelected
                      ? Color(0xffC7051A)
                      : Color(0xffC7051A).withOpacity(0.2)),
              borderRadius: const BorderRadius.all(const Radius.circular(10.0)),
            ),
          ),
        ],
      ),
    );
  }
}
