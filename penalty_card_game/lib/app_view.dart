import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:penalty_card_game/blocs/authentication_bloc/authentication_bloc.dart';
import 'package:penalty_card_game/screens/auth/welcome_screen.dart';
import 'package:penalty_card_game/screens/home/draft_screen.dart'; // Importa DraftScreen
import 'package:penalty_card_game/screens/home/home_screen.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Penalty Card Game',
      home: BlocBuilder<AuthenticationBloc, AuthenticationState>(
        builder: (context, state) {
          if (state.status == AuthenticationStatus.authenticated) {
            // Cambia temporalmente a DraftScreen para desarrollo
            return const DraftScreen(); // Muestra la pantalla de Draft directamente
          } else {
            return const WelcomeScreen(); // Mantén la lógica para la pantalla de bienvenida si no está autenticado
          }
        },
      ),
    );
  }
}
