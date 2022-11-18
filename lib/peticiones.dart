import 'package:cloud_firestore/cloud_firestore.dart';

class Peticiones{
  final List lstHorarios = [];



  void obtenerHorarios() async {
    CollectionReference collectionHorarios =
        FirebaseFirestore.instance.collection("horarios");
    QuerySnapshot horarios = await collectionHorarios.get();
    print("horarios: " + horarios.docs.length.toString());

    if (horarios.docs.length > 0) {
      for (var h in horarios.docs) {
        lstHorarios.add(h.data());
        print(h.data());
      }
    }
  }



}