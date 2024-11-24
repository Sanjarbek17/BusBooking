import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:bus_booking/core/theme/custom_colors.dart';
import 'package:bus_booking/presentation/widgets/choose_location_widget.dart';
import 'package:bus_booking/presentation/widgets/passenger_type_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: CustomColors.scaffoldBackgroundColor,
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Icon(Icons.more_horiz, color: Colors.white, size: 50),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Icon(Icons.account_circle, color: Colors.white, size: 50),
          )
        ],
        elevation: 10,
        shadowColor: Colors.black,
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50))),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50)),
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: <Color>[Color(0xffFFCE00), Color(0xffFFA700), Color(0xffFF8D00), Color(0xffFF7400)],
              stops: <double>[0.0, 0.32, 0.66, 1],
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(270),
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Hi, Milap', style: context.displaySmall),
                    Text('Bus', style: context.displayLarge),
                  ],
                ),
                Transform.translate(
                  offset: const Offset(0, 90),
                  child: const ChooseLocationWidget(),
                )
              ],
            ),
          ),
        ),
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PassengerTypeWidget(),
        ],
      ),
    );
  }
}
