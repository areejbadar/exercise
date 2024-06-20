// import 'package:exercise/src/utils/colors.dart';
// import 'package:exercise/src/utils/font.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import '../models/exercise_model.dart';
// import 'exercise_details.dart';
// import 'package:exercise/src/utils/font.dart';
// import 'package:exercise/src/utils/colors.dart';

// class ExerciseListScreen extends StatelessWidget {
//   ExerciseListScreen({super.key});

//   final List<ExerciseModel> exerciseList = [
//     ExerciseModel(
//       name: 'Push-Ups',
//       description:
//           'Strengthen your chest, shoulders, and triceps with this classic bodyweight exercise. Variations include standard push-ups, knee push-ups, and incline push-ups.',
//       lottieAssets: 'assets/lottie/pushups.json',
//     ),
//     ExerciseModel(
//       name: 'Deadbug',
//       description:
//           'Description: A core exercise that improves stability and strengthens the abdominal muscles.',
//       lottieAssets: 'assets/lottie/deadbug.json',
//     ),
//     ExerciseModel(
//       name: 'Jump',
//       description:
//           'A basic plyometric exercise that builds explosive power and cardiovascular endurance. It primarily targets the leg muscles.',
//       lottieAssets: 'assets/lottie/jump.json',
//     ),
//     ExerciseModel(
//       name: 'Leg Press Up',
//       description:
//           'A leg strengthening exercise that primarily targets the quads, glutes, and hamstrings. It mimics the motion of a leg press machine..',
//       lottieAssets: 'assets/lottie/leg_pressup.json',
//     ),
//     ExerciseModel(
//       name: 'Split Squat Jump',
//       description:
//           ' An explosive lower body exercise that targets the quads, hamstrings, and glutes. It also improves balance and coordination.',
//       lottieAssets: 'assets/lottie/split_squate_jump.json',
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Color.fromARGB(226, 131, 241, 214),
//       appBar: AppBar(
//         title: Text(
//           'Exercise App',
//           style: CustomTextStyles.smallTextStyle(color: Colors.black),
//         ),
//         actions: [],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             flex: 2,
//             child: Container(
//               child: Lottie.asset(
//                 'assets/lottie/main.json',
//                 errorBuilder: (context, error, stackTrace) {
//                   return Center(child: Text('Error loading animation'));
//                 },
//               ),
//             ),
//           ),
//           Expanded(
//             flex: 4,
//             child: ListView.builder(
//               itemCount: exerciseList.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(exerciseList[index].name),
//                   style: CustomTextStyles.mediumTextStyle()
//                   ,
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => ExerciseDetailsScreen(
//                           exerciseModel: exerciseList[index],
//                         ),
//                       ),
//                     );
//                   },
//                   leading: SizedBox(
//                     width: 50,
//                     height: 50,
//                     child: Lottie.asset(
//                       exerciseList[index].lottieAssets,
//                       errorBuilder: (context, error, stackTrace) {
//                         return Center(child: Text('Error loading animation'));
//                       },
//                     ),
//                   ),
//                   subtitle: Text(
//                     exerciseList[index].description,
//                     style: CustomTextStyles.smallTextStyle(),
//                     maxLines: 1,
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:exercise/src/utils/colors.dart';
import 'package:exercise/src/utils/font.dart';
import 'package:exercise/src/utils/font.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../models/exercise_model.dart';
import 'exercise_details.dart';

class ExerciseListScreen extends StatelessWidget {
  ExerciseListScreen({super.key});

  final List<ExerciseModel> exerciseList = [
    ExerciseModel(
      name: 'Push-Ups',
      description:
          'Strengthen your chest, shoulders, and triceps with this classic bodyweight exercise. Variations include standard push-ups, knee push-ups, and incline push-ups.',
      lottieAssets: 'assets/lottie/pushups.json',
    ),
    ExerciseModel(
      name: 'Deadbug',
      description:
          'A core exercise that improves stability and strengthens the abdominal muscles.',
      lottieAssets: 'assets/lottie/deadbug.json',
    ),
    ExerciseModel(
      name: 'Jump',
      description:
          'A basic plyometric exercise that builds explosive power and cardiovascular endurance. It primarily targets the leg muscles.',
      lottieAssets: 'assets/lottie/jump.json',
    ),
    ExerciseModel(
      name: 'Leg Press Up',
      description:
          'A leg strengthening exercise that primarily targets the quads, glutes, and hamstrings. It mimics the motion of a leg press machine.',
      lottieAssets: 'assets/lottie/leg_pressup.json',
    ),
    ExerciseModel(
      name: 'Split Squat Jump',
      description:
          'An explosive lower body exercise that targets the quads, hamstrings, and glutes. It also improves balance and coordination.',
      lottieAssets: 'assets/lottie/split_squate_jump.json',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.primaryColorLight,
      appBar: AppBar(
        title: Text(
          'Exercise App',
          style:
              CustomTextStyles.smallTextStyle(color: CustomColors.primaryColor),
        ),
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: CustomColors.primaryColor),
          onPressed: () {
            Navigator.pop(context); // Navigate back to the previous screen
          },
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              child: Lottie.asset(
                'assets/lottie/main.json',
                errorBuilder: (context, error, stackTrace) {
                  return Center(child: Text('Error loading animation'));
                },
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: ListView.builder(
              itemCount: exerciseList.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    exerciseList[index].name,
                    style: CustomTextStyles.smallTextStyle(
                        color: CustomColors
                            .primaryColor), // Apply custom text style
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ExerciseDetailsScreen(
                          exerciseModel: exerciseList[index],
                        ),
                      ),
                    );
                  },
                  leading: SizedBox(
                    width: 50,
                    height: 50,
                    child: Lottie.asset(
                      exerciseList[index].lottieAssets,
                      errorBuilder: (context, error, stackTrace) {
                        return Center(child: Text('Error loading animation'));
                      },
                    ),
                  ),
                  subtitle: Text(
                    exerciseList[index].description,
                    style: CustomTextStyles.minismallTextStyle(
                        color: CustomColors.primaryColor),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
