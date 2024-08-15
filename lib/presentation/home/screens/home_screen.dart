import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/getit.dart';
import '../../../core/router/app_router.dart';
import '../../../theme/app_colors.dart';
import '../../../theme/app_text_style.dart';
import '../../../theme/resources.dart';
import '../../app_cubit/app_cubit.dart';
import '../../widgets/app_primary_button.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Color(0xFF797F96),
            foregroundColor: Colors.white,
            child: Text("VL"),
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: SvgPicture.asset(AppIcons.bell)),
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(AppIcons.message)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppIcons.profile),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: AppPrimaryButton(
                  text: 'Logout',
                  onPressed: () {
                    getIt<AppCubit>().logout();
                    context.router.replaceAll([const LoginRoute()]);
                  }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        showSelectedLabels: true,
        selectedLabelStyle: AppTextStyle.tiny,
        selectedItemColor: AppColors.primaryColor,
        unselectedLabelStyle: AppTextStyle.tiny,
        unselectedItemColor: AppColors.labelColor,
        items: [
        BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.fund2), label: 'Active funds'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.users), label: 'Payees'),
        BottomNavigationBarItem(
            icon: SvgPicture.asset(AppIcons.moreServices), label: 'More'),
       
      ]),
    );
  }
}
