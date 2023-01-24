import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPage();
}

class _SettingsPage extends State<SettingsPage> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 225, 225, 225),
                  border: Border.all(
                    color: const Color.fromARGB(255, 225, 225, 225),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.star_border_outlined,
                          color: Colors.orange,
                          size: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                ' Todoist Pro',
                              ),
                              Text(
                                ' Until Jul 8 2022',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.orange,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 225, 225, 225),
                  border: Border.all(
                    color: const Color.fromARGB(255, 225, 225, 225),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SettingsList(iconL: Icons.account_box, titleL: '  Account'),
                    const Divider(),
                    SettingsList(iconL: Icons.settings, titleL: '  General'),
                    const Divider(),
                    SettingsList(iconL: Icons.color_lens, titleL: '  Theme'),
                    const Divider(),
                    SettingsList(iconL: Icons.book_online_rounded, titleL: '  App Icon'),
                    const Divider(),
                    SettingsList(iconL: Icons.chat_rounded, titleL: '  Productivity'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 225, 225, 225),
                  border: Border.all(
                    color: const Color.fromARGB(255, 225, 225, 225),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SettingsList(iconL: Icons.watch_later_outlined, titleL: '  Reminders'),
                    const Divider(),
                    SettingsList(iconL: Icons.notifications, titleL: '  Notifications'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 225, 225, 225),
                  border: Border.all(
                    color: const Color.fromARGB(255, 225, 225, 225),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SettingsList(iconL: Icons.space_bar_outlined, titleL: '  Siri'),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 225, 225, 225),
                  border: Border.all(
                    color: const Color.fromARGB(255, 225, 225, 225),
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SettingsList(iconL: Icons.question_mark, titleL: '  Help & Feedback'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

class SettingsList extends StatelessWidget {
  IconData iconL;
  String titleL = '';

  SettingsList({required this.iconL, required this.titleL});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(
              iconL,
              color: Colors.orange,
              size: 20,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    titleL,
                  ),
                ],
              ),
            ),
          ],
        ),
        const Icon(
          Icons.arrow_forward,
          color: Colors.orange,
          size: 20,
        ),
      ],
    );
  }
}
