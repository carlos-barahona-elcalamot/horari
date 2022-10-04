import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const Horari(title: 'Flutter Demo Home Page'),
    );
  }
}

class Horari extends StatelessWidget {
  const Horari({super.key, required this.title});

  final String title;
  final List<String> weekDays = const ["Mon", "Tue", "Wed", "Thu", "Fri"];

  final List<SlotHora> horas = const [
    SlotHora(hora: TimeOfDay(hour: 15, minute: 00)),
    SlotHora(hora: TimeOfDay(hour: 16, minute: 0)),
    SlotHora(hora: TimeOfDay(hour: 17, minute: 0)),
    SlotHora(hora: TimeOfDay(hour: 18, minute: 0), duracionMinutos: 20),
    SlotHora(hora: TimeOfDay(hour: 18, minute: 20)),
    SlotHora(hora: TimeOfDay(hour: 19, minute: 20)),
  ];

  final Map<String, List<Clase>> elMapa = const <String, List<Clase>>{
    "Mon": [
      Clase(
          initTime: TimeOfDay(hour: 15, minute: 00),
          minutos: 120,
          grupo: "",
          modulo: "",
          moduloDescripcion: "",
          aula: ""),
      Clase(
          initTime: TimeOfDay(hour: 17, minute: 0),
          minutos: 60,
          grupo: "",
          modulo: "Gua",
          moduloDescripcion: "Guardia",
          aula: "Dpto",
          color: Colors.black12),
      Clase(
          initTime: TimeOfDay(hour: 18, minute: 0),
          minutos: 20,
          grupo: "",
          modulo: "Patio",
          moduloDescripcion: "",
          aula: ""),
      Clase(
          initTime: TimeOfDay(hour: 18, minute: 20),
          minutos: 60,
          grupo: "DAM1",
          modulo: "M3",
          moduloDescripcion: "Programació",
          aula: "110",
          color: Colors.amberAccent),
      Clase(
          initTime: TimeOfDay(hour: 19, minute: 20),
          minutos: 60,
          grupo: "",
          modulo: "Gua",
          moduloDescripcion: "Guardia",
          aula: "Dpto",
          color: Colors.black12),
    ],
    "Tue": [
      Clase(
          initTime: TimeOfDay(hour: 15, minute: 00),
          minutos: 120,
          grupo: "ASIC1",
          modulo: "M1",
          moduloDescripcion: "Implantació SO",
          aula: "205",
          color: Colors.cyanAccent),
      Clase(
          initTime: TimeOfDay(hour: 17, minute: 0),
          minutos: 60,
          grupo: "DAM2",
          modulo: "M8",
          moduloDescripcion: "Prog. mòbils",
          aula: "111",
          color: Colors.orangeAccent),
      Clase(
          initTime: TimeOfDay(hour: 18, minute: 0),
          minutos: 20,
          grupo: "",
          modulo: "Patio",
          moduloDescripcion: "",
          aula: ""),
      Clase(
          initTime: TimeOfDay(hour: 18, minute: 20),
          minutos: 60,
          grupo: "DAM2",
          modulo: "M8",
          moduloDescripcion: "Prog. mòbils",
          aula: "111",
          color: Colors.orangeAccent),
      Clase(
          initTime: TimeOfDay(hour: 19, minute: 20),
          minutos: 60,
          grupo: "",
          modulo: "",
          moduloDescripcion: "",
          aula: ""),
    ],
    "Wed": [
      Clase(
          initTime: TimeOfDay(hour: 15, minute: 00),
          minutos: 120,
          grupo: "INF",
          modulo: "REU",
          moduloDescripcion: "Reunió dpto.",
          aula: "Dpto.",
          color: Colors.tealAccent),
      Clase(
          initTime: TimeOfDay(hour: 17, minute: 0),
          minutos: 60,
          grupo: "DAM1",
          modulo: "M3",
          moduloDescripcion: "Programació",
          aula: "110",
          color: Colors.amberAccent),
      Clase(
          initTime: TimeOfDay(hour: 18, minute: 0),
          minutos: 20,
          grupo: "",
          modulo: "Patio",
          moduloDescripcion: "",
          aula: ""),
      Clase(
          initTime: TimeOfDay(hour: 18, minute: 20),
          minutos: 60,
          grupo: "DAM1",
          modulo: "M3",
          moduloDescripcion: "Programació",
          aula: "110",
          color: Colors.amberAccent),
      Clase(
          initTime: TimeOfDay(hour: 19, minute: 20),
          minutos: 60,
          grupo: "DAM2",
          modulo: "Tut",
          moduloDescripcion: "Tutoria",
          aula: "111",
          color: Colors.orange),
    ],
    "Thu": [
      Clase(
          initTime: TimeOfDay(hour: 15, minute: 00),
          minutos: 120,
          grupo: "DAM1",
          modulo: "M3",
          moduloDescripcion: "Programació",
          aula: "110",
          color: Colors.amberAccent),
      Clase(
          initTime: TimeOfDay(hour: 17, minute: 0),
          minutos: 60,
          grupo: "ASIC1",
          modulo: "M1",
          moduloDescripcion: "Implantació SO",
          aula: "205",
          color: Colors.cyanAccent),
      Clase(
          initTime: TimeOfDay(hour: 18, minute: 0),
          minutos: 20,
          grupo: "",
          modulo: "Patio",
          moduloDescripcion: "",
          aula: ""),
      Clase(
          initTime: TimeOfDay(hour: 18, minute: 20),
          minutos: 60,
          grupo: "ASIC1",
          modulo: "M1",
          moduloDescripcion: "Implantació SO",
          aula: "205",
          color: Colors.cyanAccent),
      Clase(
          initTime: TimeOfDay(hour: 19, minute: 20),
          minutos: 60,
          grupo: "",
          modulo: "Gua",
          moduloDescripcion: "Guardia",
          aula: "Dpto",
          color: Colors.black12),
    ],
    "Fri": [
      Clase(
          initTime: TimeOfDay(hour: 15, minute: 00),
          minutos: 120,
          grupo: "DAM1",
          modulo: "M3",
          moduloDescripcion: "Programació",
          aula: "110",
          color: Colors.amberAccent),
      Clase(
          initTime: TimeOfDay(hour: 17, minute: 0),
          minutos: 60,
          grupo: "",
          modulo: "Coord",
          moduloDescripcion: "Equip 3",
          aula: "Dpto.",
          color: Colors.white38),
      Clase(
          initTime: TimeOfDay(hour: 18, minute: 0),
          minutos: 20,
          grupo: "",
          modulo: "",
          moduloDescripcion: "",
          aula: ""),
      Clase(
          initTime: TimeOfDay(hour: 18, minute: 20),
          minutos: 120,
          grupo: "DAM2",
          modulo: "M8",
          moduloDescripcion: "Prog. mòbils",
          aula: "111",
          color: Colors.orangeAccent),
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("El meu horari"),
        ),
        body: Theme(
          data: Theme.of(context).copyWith(
              textTheme: const TextTheme(
            titleMedium: TextStyle(
                fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black),
            bodyMedium: TextStyle(fontSize: 10),
          )),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(children: [
                  const Text(" "),
                  for (SlotHora theTime in horas)
                    Expanded(
                        flex: theTime.duracionMinutos,
                        child: Text(theTime.hora.format(context)))
                ]),
              ),
              for (String theDay in weekDays)
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Center(child: Text(theDay)),
                      for (Clase theClase in elMapa[theDay]!)
                        Expanded(
                          flex: theClase.minutos,
                          child: Card(
                            color: theClase.color,
                            child: ListTile(
                              contentPadding: EdgeInsets.all(0.0),
                              style: ListTileStyle.list,
                              title: Text(
                                "${theClase.grupo} ${theClase.moduloDescripcion}",
                                maxLines: 2,
                              ),
                              subtitle: Text(theClase.aula),
                            ),
                          ),
                        )
                    ],
                  ),
                )
            ],
          ),
        ));
  }
}

class Clase {
  final TimeOfDay initTime;
  final int minutos;
  final String grupo;
  final String modulo;
  final String moduloDescripcion;
  final String aula;
  final Color color;

  const Clase(
      {required this.initTime,
      required this.minutos,
      required this.grupo,
      required this.modulo,
      required this.moduloDescripcion,
      required this.aula,
      this.color = Colors.black26});
}

class SlotHora {
  final TimeOfDay hora;
  final int duracionMinutos;

  const SlotHora({required this.hora, this.duracionMinutos = 60});
}
