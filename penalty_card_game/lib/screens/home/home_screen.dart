import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:penalty_card_game/blocs/sign_in_bloc/sign_in_bloc.dart';
import 'package:penalty_card_game/screens/home/mvp_screen.dart';
import 'package:penalty_card_game/screens/home/draft_screen.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 60, 59, 59), // Color de fondo para resaltar la imagen
      body: Stack(
        children: [
          // Fondo de campo de fútbol
          Positioned.fill(
            child: Opacity(
              opacity: 0.3, // Ajusta la opacidad para que el fondo sea más tenue
              child: Image.asset(
                'assets/fondo_menu.jpg', // Asegúrate de que esta ruta sea correcta
                fit: BoxFit.cover, // La imagen cubrirá toda la pantalla
              ),
            ),
          ),

          // Botón de cuenta
          Align(
            alignment: AlignmentDirectional(0.98, -0.98),
            child: IconButton(
              iconSize: 40.0,
              icon: Icon(
                Icons.account_circle,
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
              onPressed: () {
                print('Account button pressed');
              },
            ),
          ),

          // Texto "CARD SHOOTOUT"
          Align(
            alignment: AlignmentDirectional(-0.95, -0.93),
            child: Text(
              'CARD SHOOTOUT',
              style: TextStyle(
                fontFamily: 'Fugaz One',
                fontSize: 10.0,
                fontWeight: FontWeight.w800,
                letterSpacing: 2.0,
                color: const Color.fromARGB(255, 255, 255, 255),
                shadows: [
                  Shadow(
                    color: Colors.black,
                    offset: Offset(5.0, 5.0),
                    blurRadius: 20.0,
                  ),
                ],
              ),
            ),
          ),
          // Container de "RECORD"
          Align(
            alignment: const Alignment(-0.65, -0.4),
            child: Container(
              width: 352.0,
              height: 194.0,
              decoration: BoxDecoration(
                color: const Color(0xD60B1415),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 15.0,
                    color: const Color.fromARGB(252, 63, 139, 143).withOpacity(0.5),
                    offset: const Offset(0.0, 2.0),
                    spreadRadius: 8.0,
                  )
                ],
                border: Border.all(
                  color: const Color.fromARGB(168, 146, 151, 151),
                  width: 0.5,
                ),
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: const Alignment(0.0, 0.5),
                    child: Text(
                      '5 - 1',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'Lekton',
                        color: Colors.white,
                        fontSize: 70.0,
                        letterSpacing: 10.0,
                        fontWeight: FontWeight.w800,
                        fontStyle: FontStyle.italic,
                        shadows: [
                          Shadow(
                            color: Colors.red,
                            offset: const Offset(3.0, 2.0),
                            blurRadius: 0.0,
                          )
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const Alignment(0.01, -0.89),
                    child: Text(
                      'RECORD',
                      style: TextStyle(
                        fontFamily: 'Foldit',
                        color: Colors.yellow,
                        fontSize: 40.0,
                        letterSpacing: 5.0,
                        fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Imagen del Jugador
          Align(
            alignment: const Alignment(0.5, -0.31),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(14.0),
              child: Image.asset(
                'assets/cristiano.jpg',
                width: 121.0,
                height: 175.0,
                fit: BoxFit.fill,
              ),
            ),
          ),

          // Texto "ONE TO WATCH"
          Align(
            alignment: const Alignment(0.87, -0.1),
            child: Text(
              'ONE\nTO\nWATCH',
              style: TextStyle(
                fontFamily: 'Fugaz One',
                color: const Color(0xFFFFE73D),
                fontSize: 25.0,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w600,
                shadows: [
                  Shadow(
                    color: const Color(0xC0EE8B60),
                    offset: const Offset(-2.5, 0.0),
                    blurRadius: 0.0,
                  )
                ],
                height: 1.8,
              ),
            ),
          ),
          // Botones del Menú: CPU, ONLINE, FRIEND
          Align(
            alignment: const Alignment(-0.53, 0.8),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PenaltyGame()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 38, 45, 52),
                foregroundColor: const Color.fromARGB(255, 255, 230, 0),
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  side: BorderSide(
                    color: const Color.fromARGB(255, 88, 197, 255),
                    width: 2.0,
                  ),
                ),
              ),
              child: const Text(
                'CPU',
                style: TextStyle(
                  fontFamily: 'Foldit',
                  fontSize: 20.0,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.0, 0.8),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PenaltyGame()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 38, 45, 52),
                foregroundColor: const Color.fromARGB(255, 255, 230, 0),
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  side: BorderSide(
                    color: const Color.fromARGB(255, 88, 197, 255),
                    width: 2.0,
                  ),
                ),
              ),
              child: const Text(
                'ONLINE',
                style: TextStyle(
                  fontFamily: 'Foldit',
                  fontSize: 20.0,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
          Align(
            alignment: const Alignment(0.61, 0.8),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DraftScreen()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 38, 45, 52),
                foregroundColor: const Color.fromARGB(255, 255, 230, 0),
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(14.0),
                  side: BorderSide(
                    color: const Color.fromARGB(255, 88, 197, 255),
                    width: 2.0,
                  ),
                ),
              ),
              child: const Text(
                'FRIEND',
                style: TextStyle(
                  fontFamily: 'Foldit',
                  fontSize: 20.0,
                  letterSpacing: 3.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}