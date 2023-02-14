import 'package:application/ui/pages/navigation_bar/utils/item_utils.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'navigation_bar_state.dart';

class NavigationBarCubit extends Cubit<NavigationBarState> {
  NavigationBarCubit() : super(const NavigationBarState(ItemUtils.catalog, 0));

  void getNavBarItem(ItemUtils item) {
    switch (item) {
      case ItemUtils.catalog:
        emit(const NavigationBarState(ItemUtils.catalog, 0));
        break;
      case ItemUtils.favorites:
        emit(const NavigationBarState(ItemUtils.favorites, 1));
        break;
      case ItemUtils.notes:
        emit(const NavigationBarState(ItemUtils.notes, 2));
        break;
      case ItemUtils.blog:
        emit(const NavigationBarState(ItemUtils.blog, 3));
        break;
      case ItemUtils.profile:
        emit(const NavigationBarState(ItemUtils.profile, 4));
        break;
    }
  }
}
