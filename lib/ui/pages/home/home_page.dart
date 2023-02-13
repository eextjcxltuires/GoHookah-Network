import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController search = TextEditingController();

    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      body: DefaultTabController(
        length: 2,
        child: CustomScrollView(
          physics: const NeverScrollableScrollPhysics(),
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // description:
                  // Text: Title Text.

                  const Padding(
                    padding: EdgeInsets.fromLTRB(16.0, 60.0, 16.0, 0),
                    child: Text(
                      'Главная',
                      style: TextStyle(
                        fontFamily: 'SFProDisplayBold',
                        color: Color(0xFFF6F7FB),
                        fontSize: 34.0,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 0.37,
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),

                  // description:
                  // Tab Bar: Hookahs feat. Mag-s.

                  const TabBarinstitution(),
                  const SizedBox(height: 20.0),

                  // description:
                  // Text Form: Search.

                  TextFieldSearch(
                    hint: 'Напишите название..',
                    icon: Icons.search_outlined,
                    controller: search,
                    type: TextInputType.text,
                  ),
                  const SizedBox(height: 15.0),

                  // description:
                  // Panel: Buttons (Map, Filter).

                  const PanelButton(),
                  const SizedBox(height: 20.0),
                ],
              ),
            ),
            const SliverFillRemaining(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  Center(child: Text('Text 1.')),
                  Center(child: Text('Text 2.')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TextFieldSearch extends StatelessWidget {
  const TextFieldSearch({
    Key? key,
    required this.hint,
    required this.icon,
    required this.controller,
    required this.type,
  }) : super(key: key);

  final String hint;
  final IconData icon;
  final TextEditingController controller;
  final TextInputType? type;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.06,
      width: MediaQuery.of(context).size.width * 0.95,
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      margin: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      decoration: BoxDecoration(
        color: const Color(0xFF333333),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: TextField(
        textAlignVertical: TextAlignVertical.center,
        keyboardType: type,
        cursorColor: const Color(0xFF767676),
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          hintStyle: const TextStyle(
            fontFamily: 'SFProTextRegular',
            color: Color(0xFF767676),
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.41,
          ),
          prefixIcon: Icon(
            icon,
            color: const Color(0xFF767676),
            size: 25.0,
          ),
        ),
        style: const TextStyle(
          fontFamily: 'SFProTextRegular',
          color: Color(0xFFF6F7FB),
          fontSize: 18.0,
          fontWeight: FontWeight.w400,
          letterSpacing: -0.41,
        ),
      ),
    );
  }
}

class TabBarinstitution extends StatelessWidget {
  const TabBarinstitution({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      child: Material(
        color: const Color(0xFF333333),
        borderRadius: BorderRadius.circular(10.0),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
          width: MediaQuery.of(context).size.width * 0.95,
          child: TabBar(
            tabs: const [
              Tab(text: 'Кальянные'),
              Tab(text: 'Магазины'),
            ],
            indicator: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: const Color(0xFFF6F7FB),
            ),
            unselectedLabelColor: const Color(0xFFF6F7FB),
            labelColor: const Color(0xFF000000),
          ),
        ),
      ),
    );
  }
}

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.link,
    required this.text,
    required this.onChange,
    required this.height,
    required this.width,
  }) : super(key: key);

  final String link;
  final String text;
  final Function() onChange;
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * height,
      width: MediaQuery.of(context).size.width * width,
      child: ElevatedButton.icon(
        icon: SvgPicture.asset(
          link,
          height: 18.0,
          width: 18.0,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF333333),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 0,
        ),
        onPressed: onChange,
        label: Text(
          text,
          style: const TextStyle(
            fontFamily: 'SFProDisplayRegular',
            color: Color(0xFFF6F7FB),
            fontSize: 17.0,
            fontWeight: FontWeight.w400,
            letterSpacing: -0.41,
          ),
        ),
      ),
    );
  }
}

class PanelButton extends StatelessWidget {
  const PanelButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Button(
            link: 'assets/icons/explore.svg',
            text: 'Карта',
            onChange: () {},
            height: 0.05,
            width: 0.45,
          ),
          Button(
            link: 'assets/icons/tune.svg',
            text: 'Фильтры',
            onChange: () {},
            height: 0.05,
            width: 0.45,
          ),
        ],
      ),
    );
  }
}
