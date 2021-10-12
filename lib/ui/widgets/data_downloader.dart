import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sicilia_mafia/bloc/auth_cubit/auth_cubit.dart';
import 'package:sicilia_mafia/bloc/players_cubit/players_cubit.dart';

class DataDownloader extends StatelessWidget {
  DataDownloader({
    required this.child,
  });

  final Widget child;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _store = FirebaseFirestore.instance;


  @override
  Widget build(BuildContext context) {

    return MultiBlocProvider(providers: <BlocProvider<dynamic>>[
      BlocProvider<PlayersCubit>(
          create: (BuildContext context) => PlayersCubit(_auth, _store)),
      BlocProvider<AuthCubit>(
          create: (BuildContext context) => AuthCubit(_auth)),
    ], child: child);
  }
}
