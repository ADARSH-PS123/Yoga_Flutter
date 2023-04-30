// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class Dummy extends StatelessWidget {
//   const Dummy({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Dummy"),
//       ),
//       body: Container(
//         padding: const EdgeInsets.all(20),
//         child: ListView.builder(
//           itemCount: list.length,
//           itemBuilder: (context, index) => Container(
//             decoration: BoxDecoration(
//                 color: Colors.black, borderRadius: BorderRadius.circular(12)),
//             margin: const EdgeInsets.only(bottom: 20),
//             child: ListTile(
//               selectedColor: Colors.red,
//               contentPadding: const EdgeInsets.all(15),
//               leading: Icon(
//                 list[index].icon,
//                 color: Colors.white,
//               ),
//               title: Text(list[index].name),
//               subtitle: Text(list[index].gender),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class MonishMOdl {
//   final String name;
//   final int age;
//   final String gender;
//   final IconData icon;

//   const MonishMOdl({
//     required this.age,
//     required this.gender,
//     required this.name,
//     required this.icon,
//   });
// }

// List<MonishMOdl> list = const [
//   MonishMOdl(age: 12, gender: "male", name: "monis", icon: Icons.abc),
//   MonishMOdl(age: 17, gender: "madfle", name: "dsds", icon: Icons.arrow_back),
//   MonishMOdl(age: 17, gender: "sdss", name: "dsd", icon: Icons.abc_rounded),
//   MonishMOdl(age: 757, gender: "s", name: "modsfdfnis", icon: Icons.kayaking),
//   MonishMOdl(
//       age: 145, gender: "madsdle", name: "fsdsa", icon: Icons.h_mobiledata),
//   MonishMOdl(age: 143, gender: "sds", name: "moasfdsgdsfnis", icon: Icons.face),
//   MonishMOdl(age: 12, gender: "sds", name: "sfsa", icon: Icons.dangerous),
//   MonishMOdl(age: 12, gender: "sd", name: "sdsdsds", icon: Icons.sd),
//   MonishMOdl(
//       age: 12, gender: "dsdsd", name: "monffegfgis", icon: Icons.sd_sharp),
//   MonishMOdl(age: 12, gender: "male", name: "fdwfds", icon: Icons.safety_check),
//    MonishMOdl(age: 12, gender: "male", name: "monis", icon: Icons.abc),
//   MonishMOdl(age: 17, gender: "madfle", name: "dsds", icon: Icons.arrow_back),
//   MonishMOdl(age: 17, gender: "sdss", name: "dsd", icon: Icons.abc_rounded),
//   MonishMOdl(age: 757, gender: "s", name: "modsfdfnis", icon: Icons.kayaking),
//   MonishMOdl(
//       age: 145, gender: "madsdle", name: "fsdsa", icon: Icons.h_mobiledata),
//   MonishMOdl(age: 143, gender: "sds", name: "moasfdsgdsfnis", icon: Icons.face),
//   MonishMOdl(age: 12, gender: "sds", name: "sfsa", icon: Icons.dangerous),
//   MonishMOdl(age: 12, gender: "sd", name: "sdsdsds", icon: Icons.sd),
//   MonishMOdl(
//       age: 12, gender: "dsdsd", name: "monffegfgis", icon: Icons.sd_sharp),
//   MonishMOdl(age: 12, gender: "male", name: "fdwfds", icon: Icons.safety_check),
//   MonishMOdl(age: 12, gender: "male", name: "monis", icon: Icons.abc),
//   MonishMOdl(age: 17, gender: "madfle", name: "dsds", icon: Icons.arrow_back),
//   MonishMOdl(age: 17, gender: "sdss", name: "dsd", icon: Icons.abc_rounded),
//   MonishMOdl(age: 757, gender: "s", name: "modsfdfnis", icon: Icons.kayaking),
//   MonishMOdl(
//       age: 145, gender: "madsdle", name: "fsdsa", icon: Icons.h_mobiledata),
//   MonishMOdl(age: 143, gender: "sds", name: "moasfdsgdsfnis", icon: Icons.face),
//   MonishMOdl(age: 12, gender: "sds", name: "sfsa", icon: Icons.dangerous),
//   MonishMOdl(age: 12, gender: "sd", name: "sdsdsds", icon: Icons.sd),
//   MonishMOdl(
//       age: 12, gender: "dsdsd", name: "monffegfgis", icon: Icons.sd_sharp),
//   MonishMOdl(age: 12, gender: "male", name: "fdwfds", icon: Icons.safety_check),
//   MonishMOdl(age: 12, gender: "male", name: "monis", icon: Icons.abc),
//   MonishMOdl(age: 17, gender: "madfle", name: "dsds", icon: Icons.arrow_back),
//   MonishMOdl(age: 17, gender: "sdss", name: "dsd", icon: Icons.abc_rounded),
//   MonishMOdl(age: 757, gender: "s", name: "modsfdfnis", icon: Icons.kayaking),
//   MonishMOdl(
//       age: 145, gender: "madsdle", name: "fsdsa", icon: Icons.h_mobiledata),
//   MonishMOdl(age: 143, gender: "sds", name: "moasfdsgdsfnis", icon: Icons.face),
//   MonishMOdl(age: 12, gender: "sds", name: "sfsa", icon: Icons.dangerous),
//   MonishMOdl(age: 12, gender: "sd", name: "sdsdsds", icon: Icons.sd),
//   MonishMOdl(
//       age: 12, gender: "dsdsd", name: "monffegfgis", icon: Icons.sd_sharp),
//   MonishMOdl(age: 12, gender: "male", name: "fdwfds", icon: Icons.safety_check),
//   MonishMOdl(age: 12, gender: "male", name: "monis", icon: Icons.abc),
//   MonishMOdl(age: 17, gender: "madfle", name: "dsds", icon: Icons.arrow_back),
//   MonishMOdl(age: 17, gender: "sdss", name: "dsd", icon: Icons.abc_rounded),
//   MonishMOdl(age: 757, gender: "s", name: "modsfdfnis", icon: Icons.kayaking),
//   MonishMOdl(
//       age: 145, gender: "madsdle", name: "fsdsa", icon: Icons.h_mobiledata),
//   MonishMOdl(age: 143, gender: "sds", name: "moasfdsgdsfnis", icon: Icons.face),
//   MonishMOdl(age: 12, gender: "sds", name: "sfsa", icon: Icons.dangerous),
//   MonishMOdl(age: 12, gender: "sd", name: "sdsdsds", icon: Icons.sd),
//   MonishMOdl(
//       age: 12, gender: "dsdsd", name: "monffegfgis", icon: Icons.sd_sharp),
//   MonishMOdl(age: 12, gender: "male", name: "fdwfds", icon: Icons.safety_check),
//   MonishMOdl(age: 12, gender: "male", name: "monis", icon: Icons.abc),
//   MonishMOdl(age: 17, gender: "madfle", name: "dsds", icon: Icons.arrow_back),
//   MonishMOdl(age: 17, gender: "sdss", name: "dsd", icon: Icons.abc_rounded),
//   MonishMOdl(age: 757, gender: "s", name: "modsfdfnis", icon: Icons.kayaking),
//   MonishMOdl(
//       age: 145, gender: "madsdle", name: "fsdsa", icon: Icons.h_mobiledata),
//   MonishMOdl(age: 143, gender: "sds", name: "moasfdsgdsfnis", icon: Icons.face),
//   MonishMOdl(age: 12, gender: "sds", name: "sfsa", icon: Icons.dangerous),
//   MonishMOdl(age: 12, gender: "sd", name: "sdsdsds", icon: Icons.sd),
//   MonishMOdl(
//       age: 12, gender: "dsdsd", name: "monffegfgis", icon: Icons.sd_sharp),
//   MonishMOdl(age: 12, gender: "male", name: "fdwfds", icon: Icons.safety_check),
//   MonishMOdl(age: 12, gender: "male", name: "monis", icon: Icons.abc),
//   MonishMOdl(age: 17, gender: "madfle", name: "dsds", icon: Icons.arrow_back),
//   MonishMOdl(age: 17, gender: "sdss", name: "dsd", icon: Icons.abc_rounded),
//   MonishMOdl(age: 757, gender: "s", name: "modsfdfnis", icon: Icons.kayaking),
//   MonishMOdl(
//       age: 145, gender: "madsdle", name: "fsdsa", icon: Icons.h_mobiledata),
//   MonishMOdl(age: 143, gender: "sds", name: "moasfdsgdsfnis", icon: Icons.face),
//   MonishMOdl(age: 12, gender: "sds", name: "sfsa", icon: Icons.dangerous),
//   MonishMOdl(age: 12, gender: "sd", name: "sdsdsds", icon: Icons.sd),
//   MonishMOdl(
//       age: 12, gender: "dsdsd", name: "monffegfgis", icon: Icons.sd_sharp),
//   MonishMOdl(age: 12, gender: "male", name: "fdwfds", icon: Icons.safety_check),
//   MonishMOdl(age: 12, gender: "male", name: "monis", icon: Icons.abc),
//   MonishMOdl(age: 17, gender: "madfle", name: "dsds", icon: Icons.arrow_back),
//   MonishMOdl(age: 17, gender: "sdss", name: "dsd", icon: Icons.abc_rounded),
//   MonishMOdl(age: 757, gender: "s", name: "modsfdfnis", icon: Icons.kayaking),
//   MonishMOdl(
//       age: 145, gender: "madsdle", name: "fsdsa", icon: Icons.h_mobiledata),
//   MonishMOdl(age: 143, gender: "sds", name: "moasfdsgdsfnis", icon: Icons.face),
//   MonishMOdl(age: 12, gender: "sds", name: "sfsa", icon: Icons.dangerous),
//   MonishMOdl(age: 12, gender: "sd", name: "sdsdsds", icon: Icons.sd),
//   MonishMOdl(
//       age: 12, gender: "dsdsd", name: "monffegfgis", icon: Icons.sd_sharp),
//   MonishMOdl(age: 12, gender: "male", name: "fdwfds", icon: Icons.safety_check),
//   MonishMOdl(age: 12, gender: "male", name: "monis", icon: Icons.abc),
//   MonishMOdl(age: 17, gender: "madfle", name: "dsds", icon: Icons.arrow_back),
//   MonishMOdl(age: 17, gender: "sdss", name: "dsd", icon: Icons.abc_rounded),
//   MonishMOdl(age: 757, gender: "s", name: "modsfdfnis", icon: Icons.kayaking),
//   MonishMOdl(
//       age: 145, gender: "madsdle", name: "fsdsa", icon: Icons.h_mobiledata),
//   MonishMOdl(age: 143, gender: "sds", name: "moasfdsgdsfnis", icon: Icons.face),
//   MonishMOdl(age: 12, gender: "sds", name: "sfsa", icon: Icons.dangerous),
//   MonishMOdl(age: 12, gender: "sd", name: "sdsdsds", icon: Icons.sd),
//   MonishMOdl(
//       age: 12, gender: "dsdsd", name: "monffegfgis", icon: Icons.sd_sharp),
//   MonishMOdl(age: 12, gender: "male", name: "fdwfds", icon: Icons.safety_check),
//   MonishMOdl(age: 12, gender: "male", name: "monis", icon: Icons.abc),
//   MonishMOdl(age: 17, gender: "madfle", name: "dsds", icon: Icons.arrow_back),
//   MonishMOdl(age: 17, gender: "sdss", name: "dsd", icon: Icons.abc_rounded),
//   MonishMOdl(age: 757, gender: "s", name: "modsfdfnis", icon: Icons.kayaking),
//   MonishMOdl(
//       age: 145, gender: "madsdle", name: "fsdsa", icon: Icons.h_mobiledata),
//   MonishMOdl(age: 143, gender: "sds", name: "moasfdsgdsfnis", icon: Icons.face),
//   MonishMOdl(age: 12, gender: "sds", name: "sfsa", icon: Icons.dangerous),
//   MonishMOdl(age: 12, gender: "sd", name: "sdsdsds", icon: Icons.sd),
//   MonishMOdl(
//       age: 12, gender: "dsdsd", name: "monffegfgis", icon: Icons.sd_sharp),
//   MonishMOdl(age: 12, gender: "male", name: "fdwfds", icon: Icons.safety_check),
// ];
