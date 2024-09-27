import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:integra_espoir/02-home/database/drawer_isar.dart';
import 'package:integra_espoir/02-home/services/drawer_provider.dart';
import 'package:integra_espoir/config/constants/font_awesome_icons.dart';
import 'package:integra_espoir/config/screens.dart';
import 'package:integra_espoir/config/service/web_server.dart';

class HomeDrawerWidget extends ConsumerStatefulWidget {
  const HomeDrawerWidget({super.key});

  @override
  HomeDrawerWidgetState createState() => HomeDrawerWidgetState();
}

class HomeDrawerWidgetState extends ConsumerState<HomeDrawerWidget> {
  void checkDatabase() async {
    final op = await DrawerIsar().getAllDrawer();
    if (op.isEmpty) {
      ref.read(drawerProvider.notifier).onEventDrawer();
    } else {
      ref.read(drawerProvider.notifier).copyIsarData(drawerData: op.first.drawer);
    }
  }

  @override
  void initState() {
    super.initState();
    checkDatabase();
  }

  @override
  Widget build(BuildContext context) {
    final providerDrawer = ref.watch(drawerProvider);

    return Drawer(
      surfaceTintColor: Colors.white,
      child: RefreshIndicator(
        onRefresh: () => ref.read(drawerProvider.notifier).onEventDrawer(),
        child: ListView(
          children: [
            const UserAccountsDrawerHeader(
                accountName: Center(
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.amber,
                    child: Image(
                      image: AssetImage('assets/images/logo_integra.png'),
                      width: 125,
                    ),
                  ),
                ),
                accountEmail: Center(
                  child: Text(
                    'Integra',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                )),
            const _ItemDrawer(
              argIcon: FontAwesomeIcons.house,
              argTitle: 'Inicio',
              argRuta: HomeScreen.nameScreen,
            ),
            const Divider(),
            if (providerDrawer.isLoading) const Center(child: CircularProgressIndicator()),
            if (!providerDrawer.isLoading)
              for (var item in providerDrawer.dataDrawer)
                _ItemDrawer(
                  argIcon: GetFontAwesome.getFontAwesomeList(item.menIcono),
                  argTitle: item.menNombre ?? '',
                  argRuta: item.menRuta ?? '',
                ),
            const Divider(),
            const _ItemDrawer(
              argIcon: FontAwesomeIcons.rightFromBracket,
              argTitle: 'Cerrar',
              argRuta: 'LoginScreen',
            ),
          ],
        ),
      ),
    );
  }
}

class _ItemDrawer extends StatelessWidget {
  final IconData argIcon;
  final String argTitle;
  final String argRuta;
  const _ItemDrawer({required this.argIcon, required this.argTitle, required this.argRuta});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        argIcon,
        size: 25,
      ),
      title: Text(
        argTitle,
        style: const TextStyle(fontSize: 20),
      ),
      onTap: () async {
        if (argTitle == "Cerrar" && argRuta == 'LoginScreen') {
          await DrawerIsar().deleteDrawer();
          const storage = FlutterSecureStorage();
          await storage.deleteAll();
        }
        WebServer().conectToLogsAuditoria(argLog: 5, argEntrada: argTitle, argResultado: 'Ok');
        // ignore: use_build_context_synchronously
        context.go('/$argRuta');
      },
    );
  }
}
