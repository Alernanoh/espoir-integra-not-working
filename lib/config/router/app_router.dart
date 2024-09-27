import 'package:go_router/go_router.dart';
import 'package:integra_espoir/config/screens.dart';

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: CheckLoginScreen.nameScreen,
      builder: (context, state) => const CheckLoginScreen(),
    ),
    GoRoute(
      path: '/LoginScreen',
      name: LoginScreen.nameScreen,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/HomeScreen',
      name: HomeScreen.nameScreen,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/BuroRcoScreen',
      name: BuroRcoScreen.nameScreen,
      builder: (context, state) => const BuroRcoScreen(),
      routes: [
        GoRoute(
          path: 'BuroRcoInfoScreen',
          name: BuroRcoInfoScreen.nameScreen,
          builder: (context, state) => const BuroRcoInfoScreen(),
        ),
        GoRoute(
          path: 'BuroOpenInfoScreen',
          name: BuroOpenInfoScreen.nameScreen,
          builder: (context, state) => const BuroOpenInfoScreen(),
        ),
        GoRoute(
          path: 'BuroGraficoScreen',
          name: BuroGraficoScreen.nameScreen,
          builder: (context, state) => const BuroGraficoScreen(),
        ),
      ],
    ),
    GoRoute(
      path: '/ConsultaCarteraScreen',
      name: ConsultaCarteraScreen.nameScreen,
      builder: (context, state) => const ConsultaCarteraScreen(),
      routes: [
        GoRoute(
          path: 'ConsultaCarteraOpenScreen',
          name: ConsultaCarteraOpenScreen.nameScreen,
          builder: (context, state) => const ConsultaCarteraOpenScreen(),
        ),
        GoRoute(
          path: 'ConsultaCarteraInformationScreen',
          name: ConsultaCarteraInformationScreen.nameScreen,
          builder: (context, state) => const ConsultaCarteraInformationScreen(),
        ),
      ],
    ),
    GoRoute(
      path: '/ActualizarClienteScreen',
      name: ActualizarClienteScreen.nameScreen,
      builder: (context, state) => const ActualizarClienteScreen(),
      routes: [
        GoRoute(
          path: 'ActualizarClienteInformationScreen',
          name: ActualizarClienteInformationScreen.nameScreen,
          builder: (context, state) => const ActualizarClienteInformationScreen(),
        ),
        GoRoute(
          path: 'ActualizarClienteDireccionInfoScreen',
          name: ActualizarClienteDireccionInfoScreen.nameScreen,
          builder: (context, state) => const ActualizarClienteDireccionInfoScreen(),
        ),
        GoRoute(
          path: 'ActualizarClienteDireccionEditScreen',
          name: ActualizarClienteDireccionEditScreen.nameScreen,
          builder: (context, state) => const ActualizarClienteDireccionEditScreen(),
        ),
        GoRoute(
          path: 'ActualizarClienteDireccionMapsScreen',
          name: ActualizarClienteDireccionMapsScreen.nameScreen,
          builder: (context, state) => const ActualizarClienteDireccionMapsScreen(),
        ),
        GoRoute(
          path: 'ActualizarClienteDatosPersonalesInfoScreen',
          name: ActualizarClienteDatosPersonalesInfoScreen.nameScreen,
          builder: (context, state) => const ActualizarClienteDatosPersonalesInfoScreen(),
        ),
        GoRoute(
          path: 'ActualizarClienteDatosPersonalesEditScreen',
          name: ActualizarClienteDatosPersonalesEditScreen.nameScreen,
          builder: (context, state) => const ActualizarClienteDatosPersonalesEditScreen(),
        ),
        GoRoute(
          path: 'ActualizarClienteDatosTelefonicosInfoScreen',
          name: ActualizarClienteDatosTelefonicosInfoScreen.nameScreen,
          builder: (context, state) => const ActualizarClienteDatosTelefonicosInfoScreen(),
        ),
        GoRoute(
          path: 'ActualizarClienteDatosTelefonicosEditScreen',
          name: ActualizarClienteDatosTelefonicosEditScreen.nameScreen,
          builder: (context, state) => const ActualizarClienteDatosTelefonicosEditScreen(),
        ),
        GoRoute(
          path: 'ActualizarClienteEstadoFinancieroInfoScreen',
          name: ActualizarClienteEstadoFinancieroInfoScreen.nameScreen,
          builder: (context, state) => const ActualizarClienteEstadoFinancieroInfoScreen(),
        ),
        GoRoute(
          path: 'ActualizarClienteEstadoFinancieroEditScreen',
          name: ActualizarClienteEstadoFinancieroEditScreen.nameScreen,
          builder: (context, state) => const ActualizarClienteEstadoFinancieroEditScreen(),
        ),
        GoRoute(
          path: 'ActualizarClienteCuentasRecuperacionInfoScreen',
          name: ActualizarClienteCuentasRecuperacionInfoScreen.nameScreen,
          builder: (context, state) => const ActualizarClienteCuentasRecuperacionInfoScreen(),
        ),
        GoRoute(
          path: 'ActualizarClienteCuentasRecuperacionEditScreen',
          name: ActualizarClienteCuentasRecuperacionEditScreen.nameScreen,
          builder: (context, state) => const ActualizarClienteCuentasRecuperacionEditScreen(),
        ),
        GoRoute(
          path: 'ActualizarClienteActividadEconomicaInfoScreen',
          name: ActualizarClienteActividadEconomicaInfoScreen.nameScreen,
          builder: (context, state) => const ActualizarClienteActividadEconomicaInfoScreen(),
        ),
        GoRoute(
          path: 'ActualizarClienteActividadEconomicaEditScreen',
          name: ActualizarClienteActividadEconomicaEditScreen.nameScreen,
          builder: (context, state) => const ActualizarClienteActividadEconomicaEditScreen(),
        ),
      ],
    ),
    GoRoute(
      path: '/GrupalScreen',
      name: GrupalScreen.nameScreen,
      builder: (context, state) => const GrupalScreen(),
      routes: [
        GoRoute(
          path: 'GrupalSubidaDocumentosScreen',
          name: GrupalSubidaDocumentosScreen.nameScreen,
          builder: (context, state) => const GrupalSubidaDocumentosScreen(),
          routes: [
            GoRoute(
              path: 'GrupalSubidaDocumentosInfoScreen',
              name: GrupalSubidaDocumentosInfoScreen.nameScreen,
              builder: (context, state) => const GrupalSubidaDocumentosInfoScreen(),
            ),
            GoRoute(
              path: 'GrupalSubidaDocumentosInfoReprocesadosScreen',
              name: GrupalSubidaDocumentosInfoReprocesadosScreen.nameScreen,
              builder: (context, state) => const GrupalSubidaDocumentosInfoReprocesadosScreen(),
            ),
            GoRoute(
              path: 'GrupalSubidaDocumentosImagenScreen',
              name: GrupalSubidaDocumentosImagenScreen.nameScreen,
              builder: (context, state) => const GrupalSubidaDocumentosImagenScreen(),
            ),
            GoRoute(
              path: 'GrupalSubidaDocumentosImagenCambioScreen',
              name: GrupalSubidaDocumentosImagenCambioScreen.nameScreen,
              builder: (context, state) => const GrupalSubidaDocumentosImagenCambioScreen(),
            ),
          ],
        ),
      ],
    ),
  ],
);
