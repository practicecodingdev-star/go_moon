import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_button_dropdown.dart';

class HomePage extends StatelessWidget {
  final double deviceHeight, deviceWidth;
  const HomePage({super.key, required this.deviceHeight, required this.deviceWidth});
  Widget _astronautImageAsset() {
    return Container(
      width: deviceWidth * 0.64,
      height: deviceHeight * 0.64,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitWidth,
          image: AssetImage("assets/images/astro_moon.png"),
        ),
      ),
    );
  }

  Widget _pageTitle() {
    return const Text(
      "#GoMoon",
      style: TextStyle(
        color: Colors.white,
        fontSize: 70,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Widget _bookRideWidget() {
    return SizedBox(
      height: deviceHeight * 0.25,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _destinationDropDownWidget(),
          _travellersInformationWidget(),
          _rideButton(),
        ],
      ),
    );
  }

  Widget _destinationDropDownWidget() {
    List<String> items = ["James Webb Station", "Preneure Station"];
    return CustomButtonDropdown(items: items, width: deviceWidth);
  }

  Widget _travellersInformationWidget() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CustomButtonDropdown(
          items: const ['1', '2', '3', '4'],
          width: deviceWidth * 0.45,
        ),
        CustomButtonDropdown(
          items: const ['Economy', 'Business', 'First', 'Private'],
          width: deviceWidth * 0.40,
        ),
      ],
    );
  }

  Widget _rideButton() {
    return Container(
      width: deviceWidth,
      margin: EdgeInsets.only(bottom: deviceHeight * 0.02),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10)
      ),
      child: MaterialButton(
        onPressed: (){},
        child: Text(
          'Book Ride!', 
          style: TextStyle(
            color: Colors.black
          ),)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: deviceHeight,
          width: deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: deviceWidth * 0.05),
          child: Stack(
            children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [_pageTitle(), _bookRideWidget(), ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: _astronautImageAsset(),
            )
           ]
          ),
        ),
      ),
    );
  }
}
