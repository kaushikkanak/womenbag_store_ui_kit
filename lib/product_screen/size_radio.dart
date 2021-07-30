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
      height: size.height * 0.1,
      child: ListView.builder(
          itemCount: sizeRadio.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                setState(() {
                  sizeRadio.forEach((element) => element.isSelected = false);
                  sizeRadio[index].isSelected = true;
                });
              },
              child: RadioItem(sizemodel: sizeRadio[index]),
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
    return Container(
      margin: EdgeInsets.all(15.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          new Container(
            height: 50.0,
            width: 50.0,
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
