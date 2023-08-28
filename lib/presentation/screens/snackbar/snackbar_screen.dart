import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';



class SnackbarScreen extends StatelessWidget {

  static const name = 'snackbar_screen';

  const SnackbarScreen({super.key});

  void showCustomSnackbars( BuildContext context) {

    ScaffoldMessenger.of(context).clearSnackBars();

    final snackbar = SnackBar(
      content: const Text('Hola mundo'),
      action: SnackBarAction(label: 'Ok!', onPressed: () {},),
      duration: const Duration(seconds: 2),
    );

    ScaffoldMessenger.of(context).showSnackBar( snackbar );
  }


  void openDialog( BuildContext context ) {
    showDialog(
      context: context, 
      barrierDismissible: false,
      builder: (context) => AlertDialog(
        title: const Text('Estás seguro?'),
        content: const Text('Excepteur pariatur dolore laborum laborum ex velit veniam velit eiusmod. In quis non sit fugiat mollit aliqua mollit in dolore labore magna aliqua do fugiat. Culpa adipisicing et fugiat dolor aliqua consequat laboris consequat adipisicing dolor. Culpa culpa labore esse nostrud et ut enim esse deserunt cupidatat et non. Consectetur nisi deserunt enim dolore ea cillum eiusmod laboris enim.'),
        actions: [
          TextButton(onPressed: ()=> context.pop(), child: const Text('Cancelar')),
          FilledButton(onPressed: ()=> context.pop(), child: const Text('Aceptar')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbars y Diálogos'),
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton.tonal(
              onPressed: () {
                showAboutDialog(
                  context: context,
                  children: [
                    const Text('Dolore mollit proident officia est consequat enim est nisi sunt ipsum voluptate. Ullamco laborum velit voluptate exercitation sint aute amet sint reprehenderit velit velit ad sit eiusmod. Nisi est nisi adipisicing magna pariatur proident fugiat enim velit occaecat esse quis duis aute. Nisi consectetur culpa quis in voluptate mollit nisi minim elit enim.')
                  ]
                );
              }, 
              child: const Text('Licencias usadas')
            ),
            FilledButton.tonal(
              onPressed: () => openDialog(context), 
              child: const Text('Mostrar diálogo')
            ),
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Mostrar Snackbars'),
        icon: const Icon(Icons.remove_red_eye_outlined),
        onPressed: () => showCustomSnackbars(context)
      ),
    );
  }
}