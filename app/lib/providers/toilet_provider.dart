import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/toilets_model.dart';

// Exemples de données fictives
final List<Toilet> sampleToilets = [
  Toilet(
    id: 1,
    companyId: 101,
    isMaintenance: false,
    doorIsOpen: false,
    isLocked: false,
    name: 'Toilette 1',
    lat: 48.8566,
    long: 2.3522,
  ),
  Toilet(
    id: 2,
    companyId: 102,
    isMaintenance: true,
    doorIsOpen: false,
    isLocked: false,
    name: 'Toilette 2',
    lat: 48.8666,
    long: 2.3622,
  ),
  // Ajoutez d'autres exemples si nécessaire
];

// Créez un provider de liste de toilettes
final toiletProvider = Provider<List<Toilet>>((ref) {
  return sampleToilets;
});
