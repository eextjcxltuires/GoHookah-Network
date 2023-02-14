import 'package:application/ui/pages/navigation_bar/bloc/navigation_bar_cubit.dart';
import 'package:application/ui/pages/navigation_bar/custom_navigation_bar.dart';
import 'package:application/ui/widgets/button_widget.dart';
import 'package:application/ui/pages/authorization/authorization_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LowerPanelButtons extends StatelessWidget {
  const LowerPanelButtons({Key? key}) : super(key: key);

  // description:

  // the transition function,
  // which allows from one page to another.

  void catalog(context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BlocProvider<NavigationBarCubit>(
          create: (context) => NavigationBarCubit(),
          child: const CustomNavigationBar(),
        ),
      ),
    );
  }

  // description:

  // the transition function,
  // which allows from one page to another.

  void authorization(context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AuthorizationPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          // description:
          // custom button widget.

          ButtonWidget(
            onPressed: () => authorization(context),
            title: 'Авторизация',
            color: const Color(0xFFFFC107),
          ),
          const SizedBox(height: 10.0),

          // description:
          // custom button widget.

          ButtonWidget(
            onPressed: () => catalog(context),
            title: 'Продолжить',
            color: const Color(0xFF767676),
          ),
        ],
      ),
    );
  }
}
