import 'package:flutter/material.dart';
import 'package:snapix_test_app/config/config.dart';
import 'package:snapix_test_app/design/theme.dart';
import 'package:snapix_test_app/widgets/logo_container.dart';
import 'package:snapix_test_app/widgets/text_field_holder.dart';
import 'package:snapix_test_app/widgets/widgets.dart';

class NotesScreen extends StatelessWidget {
  static String id = 'note_screen';
  const NotesScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> data = List.generate(
        10,
        (index) =>
            'hellowdddddddddddddddddddddddddddddddddddddddddddddddddddddsa');
    SizeConfig().init(context);
    final defaultSize = SizeConfig.defaultSize;
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: false,
              // stretch: true,
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(defaultSize * 2.4),
                child: SizedBox.shrink(),
              ), // Add this code

              flexibleSpace: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LogoContainer(
                    title: 'Notes',
                  ),
                  SizedBox(
                    height: defaultSize * 3,
                  ),
                  Container(
                    // margin: EdgeInsets.only(right: 100),
                    width: SizeConfig.blockSizeHorizontal * 70,
                    child: TextFieldHolder(
                      title: 'Text',
                      screenDefiner: ScreenDefiner.notes,
                    ),
                  ),
                ],
              ),
              expandedHeight: SizeConfig.blockSizeHorizontal * 80,
              backgroundColor: Colors.transparent,
              elevation: 0,
            ),
            SliverToBoxAdapter(),
            SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return ListTile(
                  trailing: Icon(Icons.close),
                  // contentPadding: EdgeInsets.only(left: defaultSize * 1),
                  leading: Container(
                    constraints: BoxConstraints(
                      maxWidth: SizeConfig.blockSizeHorizontal * 60,
                    ),
                    padding: EdgeInsets.symmetric(horizontal: defaultSize * 2),
                    color: DesignTheme.colors.mainColor,
                    child: Wrap(
                      children: [
                        Text(data[index],
                            style: DesignTheme.text.textNotesHolder),
                      ],
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
