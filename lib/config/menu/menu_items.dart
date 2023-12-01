import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title, 
    required this.subTitle, 
    required this.link, 
    required this.icon
  });
}

const appMenuItems = <MenuItems> [
 
  MenuItems(
    title: 'Riverpod Counter', 
    subTitle: 'Introducción a Riverpod', 
    link: '/counter-riverpod', 
    icon: Icons.add
  ),

  MenuItems(
    title: 'Botones', 
    subTitle: 'Varios botones en Flutter', 
    link: '/buttons', 
    icon: Icons.smart_button_outlined
  ),

  MenuItems(
    title: 'Tarjetas', 
    subTitle: 'Un contenedor estilizado', 
    link: '/cards', 
    icon: Icons.credit_card
  ),

  MenuItems(
    title: 'Progress Indicators', 
    subTitle: 'Generales y controlados', 
    link: '/progress', 
    icon: Icons.refresh
  ),

  MenuItems(
    title: 'Snackbars y diálogos', 
    subTitle: 'Indicadores en pantalla', 
    link: '/snackbars', 
    icon: Icons.info_outline
  ),

  MenuItems(
    title: 'Animaciones', 
    subTitle: 'Elementos con animaciones', 
    link: '/animated', 
    icon: Icons.animation
  ),

  MenuItems(
    title: 'UI Controls + Tiles', 
    subTitle: 'Una serie de controles de Flutter', 
    link: '/ui-controls', 
    icon: Icons.car_rental_outlined
  ),

  MenuItems(
    title: 'Introducción a la aplicación', 
    subTitle: 'Pequeño tutorial introductorio', 
    link: '/tutorial', 
    icon: Icons.accessibility_rounded
  ),

  MenuItems(
    title: 'InfiniteScroll & Pull', 
    subTitle: 'Listas infinitas y pull to refresh', 
    link: '/infinite', 
    icon: Icons.list_alt_rounded
  ),

  MenuItems(
    title: 'Cambiar tema', 
    subTitle: 'Cambiar tema de la aplicación', 
    link: '/theme-changer', 
    icon: Icons.color_lens_outlined
  ),
 


];