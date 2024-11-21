import 'package:awesome_extensions/awesome_extensions.dart';
import 'package:bus_booking/core/theme/custom_colors.dart';
import 'package:bus_booking/gen/assets.gen.dart';
import 'package:bus_booking/presentation/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
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
                  child: Container(
                    padding: const EdgeInsets.all(38.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(38),
                      boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 3, spreadRadius: 1, offset: const Offset(0, 4))],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Image.asset(Assets.images.telegram.path, width: 40),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('FROM', style: context.bodyMedium),
                                    Text('Location 1', style: context.bodyLarge),
                                  ],
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Image.asset(Assets.images.location.path, width: 40),
                                const SizedBox(width: 10),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('TO', style: context.bodyMedium),
                                    Text('Location 2', style: context.bodyLarge),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Image.asset(Assets.images.swapVert.path),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(20.0),
            margin: const EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(38),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  blurRadius: 3,
                  spreadRadius: 1,
                  offset: const Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 39,
                      height: 32,
                      decoration: BoxDecoration(
                        color: CustomColors.secondaryColor,
                        borderRadius: BorderRadius.circular(169),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      children: [
                        Text('PASSENGER', style: context.bodyLarge?.copyWith(color: CustomColors.bodyMediumColor)),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            const CustomIconButton(icon: Icons.remove),
                            Text('01', style: context.bodyLarge),
                            const CustomIconButton(icon: Icons.add),
                          ],
                        )
                      ],
                    ),
                    const Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Type', style: context.bodyLarge?.copyWith(color: CustomColors.bodyMediumColor)),
                        Text('TYPE', style: context.bodyLarge),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      width: 39,
                      height: 32,
                      decoration: BoxDecoration(
                        color: CustomColors.primaryColor,
                        borderRadius: BorderRadius.circular(169),
                      ),
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('DEPART', style: context.bodyLarge?.copyWith(color: CustomColors.bodyMediumColor)),
                        Text('Sun 14 Jul 2024', style: context.bodyLarge),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(229, 59),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(41)),
              padding: const EdgeInsets.all(20.0),
            ),
            child: Text('SEARCH', style: context.bodyLarge?.copyWith(color: Colors.white)),
          ),
        ],
      ),
    );
  }
}
