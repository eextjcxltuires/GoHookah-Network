part of 'navigation_bar_cubit.dart';

class NavigationBarState extends Equatable {
  const NavigationBarState(this.item, this.index);

  final ItemUtils item;
  final int index;

  @override
  List<Object> get props => [item, index];
}
