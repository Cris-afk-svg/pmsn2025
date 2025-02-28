import 'package:dark_light_button/dark_light_button.dart';
import 'package:flutter/material.dart';
import 'package:pmsn2025/utils/global_values.dart';
import 'package:pmsn2025/utils/theme_settings.dart';
import 'package:practica_figma/screens/home_screen.dart';

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
      drawerEnableOpenDragGesture: false,
      drawerEdgeDragWidth: 0,
      drawer: Drawer(
        child: ListView(children: [
          const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://lh3.googleusercontent.com/a/ACg8ocK4jeHz5qptwBYF3OdBgSeLVJWtZkzivsVOOoSU63FCJGj3qDA=s288-c-no')),
              accountName: Text('Cristian Quintana Villicaña'),
              accountEmail: Text('crisitgaan@mail.com')),
          ListTile(
            onTap: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                '/homeScreen', // Nueva pantalla
                (route) => false, // Elimina todas las pantallas anteriores
              );
            },
            leading: Icon(Icons.design_services),
            title: Text('Practica Figma'),
            subtitle: Text('Frontend App'),
            trailing: Icon(Icons.chevron_right),
          ),
          ListTile(
            onTap: () {
              Navigator.pushNamed(context, 'todo');
            },
            leading: Icon(Icons.task),
            title: Text('Todo App'),
            subtitle: Text('Task List'),
            trailing: Icon(Icons.chevron_right),
          ),
        ]),
      ),

      // endDrawer: Drawer(),
      body: Center(
        child: Text('Dashboard'),
      ),
    );
  }
}
