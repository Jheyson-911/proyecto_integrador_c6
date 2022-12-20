import 'package:flutter/material.dart';

// @immutable
// class User {
//   const User({
//     required this.email,
//     required this.name,
//   });

//   final String email;
//   final String name;

//   @override
//   String toString() {
//     return '$name, $email';
//   }

//   @override
//   bool operator ==(Object other) {
//     if (other.runtimeType != runtimeType) {
//       return false;
//     }
//     return other is User && other.name == name && other.email == email;
//   }

//   @override
//   int get hashCode => Object.hash(email, name);
// }


// Widget AutocompleteEmpresaMx(EmpresaController controller,String labelmx) {


//   const List<EmpresaModel> _userOptions = <EmpresaModel>[
//     controller.fetchEmpresaList()
//   ];

//   String _displayStringForOption(User option) => option.name;

//   return Container(
//       height: 50,
//       width: 250,
//       child: RawAutocomplete<User>(
//         // textEditingController: controller,
//         optionsBuilder: (TextEditingValue textEditingValue) {
//           return _userOptions.where((User option) {
//             // Search based on User.toString, which includes both name and
//             // email, even though the display string is just the name.
//             return option
//                 .toString()
//                 .contains(textEditingValue.text.toLowerCase());
//           });
//         },
//         displayStringForOption: _displayStringForOption,
//         fieldViewBuilder: (BuildContext context,
//             TextEditingController textEditingController,
//             FocusNode focusNode,
//             VoidCallback onFieldSubmitted) {
//           return TextFormField(
//             controller: textEditingController,
//             focusNode: focusNode,
//             decoration: InputDecoration(
//               labelText: labelmx,
//               filled: true,
//               fillColor: Color(0xFFf5f5f5),
//               border: OutlineInputBorder(
//                 borderRadius:
//                   BorderRadius.all(Radius.circular(5.0))
//               ),
//               focusedBorder: OutlineInputBorder(
//                 borderSide: BorderSide(
//                   width: 2.0, 
//                   color: Color(0xFF003361)
//                 ),
//                 borderRadius:
//                   BorderRadius.all(Radius.circular(5.0))
//               ),
//             ),
//             onFieldSubmitted: (String value) {
//               onFieldSubmitted();
//             },
//           );
//         },
//         optionsViewBuilder: (BuildContext context,
//             AutocompleteOnSelected<User> onSelected, Iterable<User> options) {
//           return Align(
//             alignment: Alignment.topLeft,
//             child: Material(
//               elevation: 2.0,
//               child: SizedBox(
//                 height: 200.0,
//                 child: ListView.builder(
//                   padding: const EdgeInsets.all(5.0),
//                   itemCount: options.length,
//                   itemBuilder: (BuildContext context, int index) {
//                     final User option = options.elementAt(index);
//                     return GestureDetector(
//                       onTap: () {
//                         onSelected(option);
//                       },
//                       child: ListTile(
//                         title: Text("${option.name} (${option.email})"),
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//           );
//         },
//     ),
//   );
// }
