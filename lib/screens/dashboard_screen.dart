import 'package:dark_light_button/dark_light_button.dart';
import 'package:flutter/material.dart';
import 'package:pmsn2025/utils/global_values.dart';
import 'package:pmsn2025/utils/theme_settings.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenido'),
        actions: [
          DarlightButton(
            type: Darlights.DarlightFour,
            options: DarlightFourOption(),
            onChange: (value) {
              if (value == ThemeMode.light) {
                GlobalValues.themeApp.value = ThemeSettings.ligthTheme();
              } else {
                GlobalValues.themeApp.value = ThemeSettings.darkTheme();
              }

              // change your theme here
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(children: [
          const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://www.revistaeyn.com/binrepository/1201x960/0c0/1200d900/none/26086/QFFG/ia-yatra_3165354_20221208131211.jpg')),
              accountName: Text('Cristian Quintana Villicaña'),
              accountEmail: Text('crisitgaan@mail.com')),
          ListTile(
            onTap: () {},
            leading: Icon(Icons.design_services),
            title: Text('Practica Figma'),
            subtitle: Text('Frontend App'),
            trailing: Icon(Icons.chevron_right),
          )
        ]),
      ),
      // endDrawer: Drawer(),
      body: Center(
        child: Text('Dashboard'),
      ),
    );
  }
}
