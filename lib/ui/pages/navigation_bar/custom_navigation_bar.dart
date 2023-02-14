import 'package:application/ui/pages/blog/blog_page.dart';
import 'package:application/ui/pages/catalog/catalog_page.dart';
import 'package:application/ui/pages/favorites/favorites_page.dart';
import 'package:application/ui/pages/notes/notes_page.dart';
import 'package:application/ui/pages/profile/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'bloc/navigation_bar_cubit.dart';
import 'utils/item_utils.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BlocBuilder<NavigationBarCubit, NavigationBarState>(
        builder: (context, state) {
          return BottomNavigationBar(
            backgroundColor: const Color(0xFF2B2B2B),
            type: BottomNavigationBarType.fixed,
            elevation: 0.4,
            unselectedItemColor: const Color(0xFFF6F7FB),
            unselectedFontSize: 10.0,
            selectedItemColor: const Color(0xFFFFC107),
            selectedFontSize: 10.0,
            currentIndex: state.index,
            onTap: (index) {
              if (index == 0) {
                BlocProvider.of<NavigationBarCubit>(context).getNavBarItem(ItemUtils.catalog);
              } else if (index == 1) {
                BlocProvider.of<NavigationBarCubit>(context).getNavBarItem(ItemUtils.favorites);
              } else if (index == 2) {
                BlocProvider.of<NavigationBarCubit>(context).getNavBarItem(ItemUtils.notes);
              } else if (index == 3) {
                BlocProvider.of<NavigationBarCubit>(context).getNavBarItem(ItemUtils.blog);
              } else if (index == 4) {
                BlocProvider.of<NavigationBarCubit>(context).getNavBarItem(ItemUtils.profile);
              }
            },
            items: [
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: SvgPicture.asset(
                    'assets/icons/search.svg',
                    height: 18.0,
                    width: 18.0,
                    color: state.index == 0 ? const Color(0xFFFFC107) : const Color(0xFFF6F7FB),
                  ),
                ),
                label: 'Каталог',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: SvgPicture.asset(
                    'assets/icons/heart.svg',
                    height: 18.0,
                    width: 18.0,
                    color: state.index == 1 ? const Color(0xFFFFC107) : const Color(0xFFF6F7FB),
                  ),
                ),
                label: 'Избранное',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: SvgPicture.asset(
                    'assets/icons/notes.svg',
                    height: 18.0,
                    width: 18.0,
                    color: state.index == 2 ? const Color(0xFFFFC107) : const Color(0xFFF6F7FB),
                  ),
                ),
                label: 'Записи',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: SvgPicture.asset(
                    'assets/icons/blog.svg',
                    height: 18.0,
                    width: 18.0,
                    color: state.index == 3 ? const Color(0xFFFFC107) : const Color(0xFFF6F7FB),
                  ),
                ),
                label: 'Блог',
              ),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(bottom: 6.0),
                  child: SvgPicture.asset(
                    'assets/icons/profile.svg',
                    height: 18.0,
                    width: 18.0,
                    color: state.index == 4 ? const Color(0xFFFFC107) : const Color(0xFFF6F7FB),
                  ),
                ),
                label: 'Профиль',
              ),
            ],
          );
        },
      ),
      body: BlocBuilder<NavigationBarCubit, NavigationBarState>(
        builder: (context, state) {
          if (state.item == ItemUtils.catalog) {
            return const CatalogPage();
          } else if (state.item == ItemUtils.favorites) {
            return const FavoritesPage();
          } else if (state.item == ItemUtils.notes) {
            return const NotesPage();
          } else if (state.item == ItemUtils.blog) {
            return const BlogPage();
          } else if (state.item == ItemUtils.profile) {
            return const ProfilePage();
          }

          return Container();
        },
      ),
    );
  }
}
