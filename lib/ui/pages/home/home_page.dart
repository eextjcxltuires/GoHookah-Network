import 'package:flutter/material.dart';
import 'components/panel_button.dart';
import 'components/tab_bar_institution.dart';
import 'components/text_field_search.dart';

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

                  title(),
                  const SizedBox(height: 15.0),

                  // description:
                  // Tab Bar: Hookah Places feat. Shops.

                  const TabBarInstitution(),
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
              // description:
              // other pages..

              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: <Widget>[
                  // description:
                  // List: Hookah Place Card.

                  Center(child: Text('Text 1.')),

                  // description:
                  // List: Hookah Shop Card.

                  Center(child: Text('Text 2.')),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget title() => const Padding(
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
      );
}
