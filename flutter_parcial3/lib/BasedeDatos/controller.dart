import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';


 CollectionReference collectionReference = FirebaseFirestore.instance.collection("Cliente");

  //Slect
  void getCliente() async{
   
    QuerySnapshot Cliente = await collectionReference.get();
    if(Cliente.docs.length != 0){
      for(var documentos in Cliente.docs){
        print(documentos.data());
       // Clientes.add(documentos.data());
      }
    }
  }

  //insert

void InsertarConfiguracion() async{
  return collectionReference
  .add({'idc': '2','idusuario':'1','Nombre':'Nicole','valor':'No aplica'})
  .then((value) => print("Registro Agregado"))
  .catchError((error)=>print("Fallo en insertar:$error"));
}

void actualizarConfiguracion() async{
  return collectionReference.doc('ykHx0J0R9hLuREzcEK4i')
  .update({'idc': '2','idusuario':'1','Nombre':'Sarai','valor':'Si aplica'})
  .then((value) => print("Registro Actualizado"))
  .catchError((error)=>print("Fallo en actualizar:$error"));
}

void borrarConfiguracion() async{
  return collectionReference.doc('ykHx0J0R9hLuREzcEK4i')
  .delete().then((value) => print("Registro Borrado"))
  .catchError((error)=>print("Fallo en borrar:$error"));
}