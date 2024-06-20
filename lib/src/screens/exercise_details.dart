// import 'dart:async';
// import 'package:exercise/src/models/exercise_model.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:exercise/src/utils/font.dart';
// import 'package:exercise/src/utils/colors.dart';
// import 'package:exercise/src/utils/colors.dart';

// class ExerciseDetailsScreen extends StatefulWidget {
//   final ExerciseModel exerciseModel;

//   ExerciseDetailsScreen({super.key, required this.exerciseModel});

//   @override
//   State<ExerciseDetailsScreen> createState() => _ExerciseDetailsScreenState();
// }

// class _ExerciseDetailsScreenState extends State<ExerciseDetailsScreen> {
//   Timer? timer;
//   int passedSeconds = 0;
//   bool isRunning = false;

//   void startTimer() {
//     if (timer != null && timer!.isActive) {
//       return;
//     }

//     setState(() {
//       isRunning = true;
//     });

//     timer = Timer.periodic(Duration(seconds: 1), (timer) {
//       setState(() {
//         passedSeconds++;
//       });
//     });
//   }

//   void stopTimer() {
//     if (timer != null) {
//       timer!.cancel();
//     }

//     setState(() {
//       isRunning = false;
//       passedSeconds = 0;
//     });
//   }

//   @override
//   void dispose() {
//     if (timer != null) {
//       timer!.cancel();
//     }
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     int minutes = passedSeconds ~/ 60;
//     int seconds = passedSeconds % 60;

//     return Scaffold(
//       backgroundColor: CustomColors.primaryColorLight,
//       appBar: AppBar(
//         title: Text(
//           'Exercise App',
//           style:
//               CustomTextStyles.smallTextStyle(color: CustomColors.primaryColor),
//         ),
//         backgroundColor: Colors.transparent,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: CustomColors.primaryColor),
//           onPressed: () {
//             Navigator.pop(context); // Navigate back to the previous screen
//           },
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Lottie.asset(
//               widget.exerciseModel.lottieAssets,
//               width: double.infinity,
//               height: 200,
//               fit: BoxFit.contain,
//               errorBuilder: (context, error, stackTrace) {
//                 return Center(child: Text('Error loading animation'));
//               },
//             ),
//             SizedBox(height: 20.0),
//             Text(widget.exerciseModel.name,
//                 style: CustomTextStyles.mediumTextStyle(
//                     color: CustomColors.primaryColor)),
//             SizedBox(height: 20.0),
//             Text(widget.exerciseModel.description,
//                 style: CustomTextStyles.smallTextStyle(
//                     color: CustomColors.primaryColor)),
//             const SizedBox(height: 20.0),
//             Container(
//               alignment: Alignment.center,
//               height: 150,
//               width: 150,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: CustomColors.primaryColorDark,
//                 border:
//                     Border.all(color: CustomColors.primaryColorDark, width: 2),
//               ),
//               child: Text('$minutes : ${seconds.toString().padLeft(2, '0')}',
//                   style: CustomTextStyles.mediumTextStyle(
//                       color: CustomColors.primaryColorLight)),
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                     onPressed: startTimer,
//                     child: Text(
//                       'Start',
//                       style: CustomTextStyles.smallTextStyle(),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: CustomColors.primaryColorDark,
//                         padding: EdgeInsets.symmetric(
//                             vertical: 6.0, horizontal: 10.0))),
//                 SizedBox(width: 40),
//                 ElevatedButton(
//                   onPressed: stopTimer,
//                   child: Text(
//                     'Stop',
//                     style: CustomTextStyles.smallTextStyle(),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: CustomColors.primaryColorDark,
//                       padding: EdgeInsets.symmetric(
//                           vertical: 6.0, horizontal: 10.0)),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// import 'dart:async';
// import 'dart:io';
// import 'package:camera/camera.dart';
// import 'package:exercise/src/models/exercise_model.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:exercise/src/utils/font.dart';
// import 'package:exercise/src/utils/colors.dart';
// import 'package:exercise/src/utils/colors.dart';

// class ExerciseDetailsScreen extends StatefulWidget {
//   final ExerciseModel exerciseModel;

//   ExerciseDetailsScreen({super.key, required this.exerciseModel});

//   @override
//   State<ExerciseDetailsScreen> createState() => _ExerciseDetailsScreenState();
// }

// class _ExerciseDetailsScreenState extends State<ExerciseDetailsScreen> {
//   List<CameraDescription> cameras = [];
//   CameraController? cameraController;
//   @override
//   void initState() {
//     super.initState();
//     _setupCameraController();
//   }

//   Timer? timer;
//   int passedSeconds = 0;
//   bool isRunning = false;

//   void startTimer() {
//     if (timer != null && timer!.isActive) {
//       return;
//     }

//     setState(() {
//       isRunning = true;
//     });

//     timer = Timer.periodic(Duration(seconds: 1), (timer) {
//       setState(() {
//         passedSeconds++;
//       });
//     });
//   }

//   void stopTimer() {
//     if (timer != null) {
//       timer!.cancel();
//     }

//     setState(() {
//       isRunning = false;
//       passedSeconds = 0;
//     });
//   }

//   @override
//   void dispose() {
//     if (timer != null) {
//       timer!.cancel();
//     }
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     int minutes = passedSeconds ~/ 60;
//     int seconds = passedSeconds % 60;

//     return Scaffold(
//       backgroundColor: CustomColors.primaryColorLight,
//       appBar: AppBar(
//         title: Text(
//           'Exercise App',
//           style:
//               CustomTextStyles.smallTextStyle(color: CustomColors.primaryColor),
//         ),
//         backgroundColor: Colors.transparent,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: CustomColors.primaryColor),
//           onPressed: () {
//             Navigator.pop(context); // Navigate back to the previous screen
//           },
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Lottie.asset(
//               widget.exerciseModel.lottieAssets,
//               width: double.infinity,
//               height: 200,
//               fit: BoxFit.contain,
//               errorBuilder: (context, error, stackTrace) {
//                 return Center(child: Text('Error loading animation'));
//               },
//             ),
//             SizedBox(height: 20.0),
//             Text(widget.exerciseModel.name,
//                 style: CustomTextStyles.mediumTextStyle(
//                     color: CustomColors.primaryColor)),
//             const SizedBox(height: 20.0),
//             Container(
//               alignment: Alignment.center,
//               height: 150,
//               width: 150,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: CustomColors.primaryColorDark,
//                 border:
//                     Border.all(color: CustomColors.primaryColorDark, width: 2),
//               ),
//               child: Text('$minutes : ${seconds.toString().padLeft(2, '0')}',
//                   style: CustomTextStyles.mediumTextStyle(
//                       color: CustomColors.primaryColorLight)),
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                     onPressed: startTimer,
//                     child: Text(
//                       'Start',
//                       style: CustomTextStyles.smallTextStyle(),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: CustomColors.primaryColorDark,
//                         padding: EdgeInsets.symmetric(
//                             vertical: 6.0, horizontal: 10.0))),
//                 SizedBox(width: 40),
//                 ElevatedButton(
//                   onPressed: stopTimer,
//                   child: Text(
//                     'Stop',
//                     style: CustomTextStyles.smallTextStyle(),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: CustomColors.primaryColorDark,
//                       padding: EdgeInsets.symmetric(
//                           vertical: 6.0, horizontal: 10.0)),
//                 ),
//                 SizedBox(width: 40),
//                 ElevatedButton(
//                   onPressed: () {
//                   if(cameraController == null || cameraController?.value.isInitialized ==
//                   return const Center(
//                     child: CircularProgressIndicator(),
//                   );
//                   }
//                   return SafeArea(child: SizedBox.exit(
//                     child: CameraPreview(
//                       CameraController!,
//                     )
//                     ),
//                     IconButton(
//                       onPressed: (){},
//                       iconSize: 100,
//                       icon: Icon(
//                         Icons.camera_alt,
//                         color: CustomColors.primaryColor,
//                       ),
//                     )
//                   ))
//               ],
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Ele
//           ],
//         ),
//       ),

//     );
//   }

//   Future<void> _setupCameraController() async {
//     List<CameraDescription> _cameras = await availableCameras();
//     if (_cameras.isNotEmpty) {
//       setState(() {
//         _cameras = _cameras;
//         cameraController =
//             CameraController(_cameras.first, ResolutionPreset.high);
//       });
//        cameraController?initialize().then(_) {
//         setState(() {

//         });
//        }

//     }
//   }
// }

// import 'dart:async';
// import 'package:camera/camera.dart';
// import 'package:exercise/src/models/exercise_model.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:exercise/src/utils/font.dart';
// import 'package:exercise/src/utils/colors.dart';

// class ExerciseDetailsScreen extends StatefulWidget {
//   final ExerciseModel exerciseModel;

//   ExerciseDetailsScreen({super.key, required this.exerciseModel});

//   @override
//   State<ExerciseDetailsScreen> createState() => _ExerciseDetailsScreenState();
// }

// class _ExerciseDetailsScreenState extends State<ExerciseDetailsScreen> {
//   List<CameraDescription> cameras = [];
//   CameraController? cameraController;

//   @override
//   void initState() {
//     super.initState();
//     _setupCameraController();
//   }

//   Timer? timer;
//   int passedSeconds = 0;
//   bool isRunning = false;

//   void startTimer() {
//     if (timer != null && timer!.isActive) {
//       return;
//     }

//     setState(() {
//       isRunning = true;
//     });

//     timer = Timer.periodic(Duration(seconds: 1), (timer) {
//       setState(() {
//         passedSeconds++;
//       });
//     });
//   }

//   void stopTimer() {
//     if (timer != null) {
//       timer!.cancel();
//     }

//     setState(() {
//       isRunning = false;
//       passedSeconds = 0;
//     });
//   }

//   @override
//   void dispose() {
//     if (timer != null) {
//       timer!.cancel();
//     }
//     cameraController?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     int minutes = passedSeconds ~/ 60;
//     int seconds = passedSeconds % 60;

//     return Scaffold(
//       backgroundColor: CustomColors.primaryColorLight,
//       appBar: AppBar(
//         title: Text(
//           'Exercise App',
//           style:
//               CustomTextStyles.smallTextStyle(color: CustomColors.primaryColor),
//         ),
//         backgroundColor: Colors.transparent,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: CustomColors.primaryColor),
//           onPressed: () {
//             Navigator.pop(context); // Navigate back to the previous screen
//           },
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Lottie.asset(
//               widget.exerciseModel.lottieAssets,
//               width: double.infinity,
//               height: 200,
//               fit: BoxFit.contain,
//               errorBuilder: (context, error, stackTrace) {
//                 return Center(child: Text('Error loading animation'));
//               },
//             ),
//             SizedBox(height: 20.0),
//             Text(widget.exerciseModel.name,
//                 style: CustomTextStyles.mediumTextStyle(
//                     color: CustomColors.primaryColor)),
//             const SizedBox(height: 20.0),
//             Container(
//               alignment: Alignment.center,
//               height: 150,
//               width: 150,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: CustomColors.primaryColorDark,
//                 border:
//                     Border.all(color: CustomColors.primaryColorDark, width: 2),
//               ),
//               child: Text('$minutes : ${seconds.toString().padLeft(2, '0')}',
//                   style: CustomTextStyles.mediumTextStyle(
//                       color: CustomColors.primaryColorLight)),
//             ),
//             SizedBox(
//               height: 20.0,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                     onPressed: startTimer,
//                     child: Text(
//                       'Start',
//                       style: CustomTextStyles.smallTextStyle(),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                         backgroundColor: CustomColors.primaryColorDark,
//                         padding: EdgeInsets.symmetric(
//                             vertical: 6.0, horizontal: 10.0))),
//                 SizedBox(width: 40),
//                 ElevatedButton(
//                   onPressed: stopTimer,
//                   child: Text(
//                     'Stop',
//                     style: CustomTextStyles.smallTextStyle(),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: CustomColors.primaryColorDark,
//                       padding: EdgeInsets.symmetric(
//                           vertical: 6.0, horizontal: 10.0)),
//                 ),
//                 SizedBox(width: 40),
//                 ElevatedButton(
//                   onPressed: () {
//                     if (cameraController != null &&
//                         cameraController!.value.isInitialized) {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) => Scaffold(
//                             appBar: AppBar(
//                               title: Text(
//                                 'Camera Preview',
//                                 style: CustomTextStyles.smallTextStyle(
//                                     color: CustomColors.primaryColor),
//                               ),
//                               backgroundColor: Colors.transparent,
//                               leading: IconButton(
//                                 icon: Icon(Icons.arrow_back,
//                                     color: CustomColors.primaryColor),
//                                 onPressed: () {
//                                   Navigator.pop(context);
//                                 },
//                               ),
//                               centerTitle: true,
//                             ),
//                             body: SafeArea(
//                               child: Stack(
//                                 children: [
//                                   CameraPreview(cameraController!),
//                                   Positioned(
//                                     bottom: 20,
//                                     left: 20,
//                                     right: 20,
//                                     child: IconButton(
//                                       onPressed: () {},
//                                       iconSize: 100,
//                                       icon: Icon(
//                                         Icons.camera_alt,
//                                         color: CustomColors.primaryColor,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       );
//                     }
//                   },
//                   child: Text(
//                     'Camera Access',
//                     style: CustomTextStyles.smallTextStyle(),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                       backgroundColor: CustomColors.primaryColorDark,
//                       padding: EdgeInsets.symmetric(
//                           vertical: 6.0, horizontal: 10.0)),
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Future<void> _setupCameraController() async {
//     cameras = await availableCameras();
//     if (cameras.isNotEmpty) {
//       setState(() {
//         cameraController = CameraController(cameras.first, ResolutionPreset.high);
//       });
//       cameraController?.initialize().then((_) {
//         if (!mounted) return;
//         setState(() {});
//       });
//     }
//   }
// }

// import 'dart:async';
// import 'package:camera/camera.dart';
// import 'package:exercise/src/models/exercise_model.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:exercise/src/utils/font.dart';
// import 'package:exercise/src/utils/colors.dart';

// class ExerciseDetailsScreen extends StatefulWidget {
//   final ExerciseModel exerciseModel;

//   ExerciseDetailsScreen({super.key, required this.exerciseModel});

//   @override
//   State<ExerciseDetailsScreen> createState() => _ExerciseDetailsScreenState();
// }

// class _ExerciseDetailsScreenState extends State<ExerciseDetailsScreen> {
//   List<CameraDescription> cameras = [];
//   CameraController? cameraController;

//   @override
//   void initState() {
//     super.initState();
//     _setupCameraController();
//   }

//   Timer? timer;
//   int passedSeconds = 0;
//   bool isRunning = false;

//   void startTimer() {
//     if (timer != null && timer!.isActive) {
//       return;
//     }

//     setState(() {
//       isRunning = true;
//     });

//     timer = Timer.periodic(Duration(seconds: 1), (timer) {
//       setState(() {
//         passedSeconds++;
//       });
//     });
//   }

//   void stopTimer() {
//     if (timer != null) {
//       timer!.cancel();
//     }

//     setState(() {
//       isRunning = false;
//       passedSeconds = 0;
//     });
//   }

//   @override
//   void dispose() {
//     if (timer != null) {
//       timer!.cancel();
//     }
//     cameraController?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     int minutes = passedSeconds ~/ 60;
//     int seconds = passedSeconds % 60;

//     return Scaffold(
//       backgroundColor: CustomColors.primaryColorLight,
//       appBar: AppBar(
//         title: Text(
//           'Exercise App',
//           style:
//               CustomTextStyles.smallTextStyle(color: CustomColors.primaryColor),
//         ),
//         backgroundColor: Colors.transparent,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: CustomColors.primaryColor),
//           onPressed: () {
//             Navigator.pop(context); // Navigate back to the previous screen
//           },
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Lottie.asset(
//               widget.exerciseModel.lottieAssets,
//               width: double.infinity,
//               height: 200,
//               fit: BoxFit.contain,
//               errorBuilder: (context, error, stackTrace) {
//                 return Center(child: Text('Error loading animation'));
//               },
//             ),
//             SizedBox(height: 20.0),
//             Text(widget.exerciseModel.name,
//                 style: CustomTextStyles.mediumTextStyle(
//                     color: CustomColors.primaryColor)),
//             const SizedBox(height: 20.0),
//             Container(
//               alignment: Alignment.center,
//               height: 150,
//               width: 150,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: CustomColors.primaryColorDark,
//                 border:
//                     Border.all(color: CustomColors.primaryColorDark, width: 2),
//               ),
//               child: Text('$minutes : ${seconds.toString().padLeft(2, '0')}',
//                   style: CustomTextStyles.mediumTextStyle(
//                       color: CustomColors.primaryColorLight)),
//             ),
//             SizedBox(height: 20.0),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ElevatedButton(
//                   onPressed: startTimer,
//                   child: Text(
//                     'Start',
//                     style: CustomTextStyles.smallTextStyle(),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: CustomColors.primaryColorDark,
//                     padding:
//                         EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
//                   ),
//                 ),
//                 SizedBox(width: 20),
//                 ElevatedButton(
//                   onPressed: stopTimer,
//                   child: Text(
//                     'Stop',
//                     style: CustomTextStyles.smallTextStyle(),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: CustomColors.primaryColorDark,
//                     padding:
//                         EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(height: 20.0),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () async {
//                   if (cameraController != null &&
//                       cameraController!.value.isInitialized) {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => Scaffold(
//                           appBar: AppBar(
//                             title: Text(
//                               'Camera Preview',
//                               style: CustomTextStyles.smallTextStyle(
//                                   color: CustomColors.primaryColor),
//                             ),
//                             backgroundColor: Colors.transparent,
//                             leading: IconButton(
//                               icon: Icon(Icons.arrow_back,
//                                   color: CustomColors.primaryColor),
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                             ),
//                             centerTitle: true,
//                           ),
//                           body: SafeArea(
//                             child: Stack(
//                               children: [
//                                 CameraPreview(cameraController!),
//                                 Positioned(
//                                   bottom: 20,
//                                   left: 20,
//                                   right: 20,
//                                   child: IconButton(
//                                     onPressed: () {},
//                                     iconSize: 100,
//                                     icon: Icon(
//                                       Icons.camera_alt,
//                                       color: CustomColors.primaryColor,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   }
//                 },
//                 child: Text(
//                   'Camera Access',
//                   style: CustomTextStyles.smallTextStyle(),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: CustomColors.primaryColorDark,
//                   padding:
//                       EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Future<void> _setupCameraController() async {
//     cameras = await availableCameras();
//     if (cameras.isNotEmpty) {
//       setState(() {
//         cameraController =
//             CameraController(cameras.first, ResolutionPreset.high);
//       });
//       cameraController?.initialize().then((_) {
//         if (!mounted) return;
//         setState(() {});
//       });
//     }
//   }
// }

// import 'dart:async';
// import 'package:camera/camera.dart';
// import 'package:exercise/src/models/exercise_model.dart';
// import 'package:flutter/material.dart';
// import 'package:lottie/lottie.dart';
// import 'package:exercise/src/utils/font.dart';
// import 'package:exercise/src/utils/colors.dart';

// class ExerciseDetailsScreen extends StatefulWidget {
//   final ExerciseModel exerciseModel;

//   ExerciseDetailsScreen({super.key, required this.exerciseModel});

//   @override
//   State<ExerciseDetailsScreen> createState() => _ExerciseDetailsScreenState();
// }

// class _ExerciseDetailsScreenState extends State<ExerciseDetailsScreen> {
//   List<CameraDescription> cameras = [];
//   CameraController? cameraController;

//   @override
//   void initState() {
//     super.initState();
//     _setupCameraController();
//   }

//   Timer? timer;
//   int passedSeconds = 0;
//   bool isRunning = false;

//   void startTimer() {
//     if (timer != null && timer!.isActive) {
//       return;
//     }

//     setState(() {
//       isRunning = true;
//     });

//     timer = Timer.periodic(Duration(seconds: 1), (timer) {
//       setState(() {
//         passedSeconds++;
//       });
//     });
//   }

//   void stopTimer() {
//     if (timer != null) {
//       timer!.cancel();
//     }

//     setState(() {
//       isRunning = false;
//       passedSeconds = 0;
//     });
//   }

//   @override
//   void dispose() {
//     if (timer != null) {
//       timer!.cancel();
//     }
//     cameraController?.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     int minutes = passedSeconds ~/ 60;
//     int seconds = passedSeconds % 60;

//     return Scaffold(
//       backgroundColor: CustomColors.primaryColorLight,
//       appBar: AppBar(
//         title: Text(
//           'Exercise App',
//           style:
//               CustomTextStyles.smallTextStyle(color: CustomColors.primaryColor),
//         ),
//         backgroundColor: Colors.transparent,
//         leading: IconButton(
//           icon: Icon(Icons.arrow_back, color: CustomColors.primaryColor),
//           onPressed: () {
//             Navigator.pop(context); // Navigate back to the previous screen
//           },
//         ),
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Lottie.asset(
//               widget.exerciseModel.lottieAssets,
//               width: double.infinity,
//               height: 200,
//               fit: BoxFit.contain,
//               errorBuilder: (context, error, stackTrace) {
//                 return Center(child: Text('Error loading animation'));
//               },
//             ),
//             SizedBox(height: 20.0),
//             Text(widget.exerciseModel.name,
//                 style: CustomTextStyles.mediumTextStyle(
//                     color: CustomColors.primaryColor)),
//             const SizedBox(height: 20.0),
//             Container(
//               alignment: Alignment.center,
//               height: 150,
//               width: 150,
//               decoration: BoxDecoration(
//                 shape: BoxShape.circle,
//                 color: CustomColors.primaryColorDark,
//                 border:
//                     Border.all(color: CustomColors.primaryColorDark, width: 2),
//               ),
//               child: Text('$minutes : ${seconds.toString().padLeft(2, '0')}',
//                   style: CustomTextStyles.mediumTextStyle(
//                       color: CustomColors.primaryColorLight)),
//             ),
//             SizedBox(height: 20.0),
//             Flexible(
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   ElevatedButton(
//                     onPressed: startTimer,
//                     child: Text(
//                       'Start',
//                       style: CustomTextStyles.smallTextStyle(),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: CustomColors.primaryColorDark,
//                       padding:
//                           EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
//                     ),
//                   ),
//                   SizedBox(width: 20),
//                   ElevatedButton(
//                     onPressed: stopTimer,
//                     child: Text(
//                       'Stop',
//                       style: CustomTextStyles.smallTextStyle(),
//                     ),
//                     style: ElevatedButton.styleFrom(
//                       backgroundColor: CustomColors.primaryColorDark,
//                       padding:
//                           EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             SizedBox(height: 20.0),
//             Center(
//               child: ElevatedButton(
//                 onPressed: () async {
//                   if (cameraController != null &&
//                       cameraController!.value.isInitialized) {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) => Scaffold(
//                           appBar: AppBar(
//                             title: Text(
//                               'Camera Preview',
//                               style: CustomTextStyles.smallTextStyle(
//                                   color: CustomColors.primaryColor),
//                             ),
//                             backgroundColor: Colors.transparent,
//                             leading: IconButton(
//                               icon: Icon(Icons.arrow_back,
//                                   color: CustomColors.primaryColor),
//                               onPressed: () {
//                                 Navigator.pop(context);
//                               },
//                             ),
//                             centerTitle: true,
//                           ),
//                           body: SafeArea(
//                             child: Stack(
//                               children: [
//                                 CameraPreview(cameraController!),
//                                 Positioned(
//                                   bottom: 20,
//                                   left: 20,
//                                   right: 20,
//                                   child: IconButton(
//                                     onPressed: () {},
//                                     iconSize: 100,
//                                     icon: Icon(
//                                       Icons.camera_alt,
//                                       color: CustomColors.primaryColor,
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     );
//                   }
//                 },
//                 child: Text(
//                   'Camera Access',
//                   style: CustomTextStyles.smallTextStyle(),
//                 ),
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: CustomColors.primaryColorDark,
//                   padding:
//                       EdgeInsets.symmetric(vertical: 6.0, horizontal: 10.0),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Future<void> _setupCameraController() async {
//     cameras = await availableCameras();
//     if (cameras.isNotEmpty) {
//       setState(() {
//         cameraController =
//             CameraController(cameras.first, ResolutionPreset.high);
//       });
//       cameraController?.initialize().then((_) {
//         if (!mounted) return;
//         setState(() {});
//       });
//     }
//   }
// }

import 'dart:async';
import 'package:exercise/src/models/exercise_model.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:exercise/src/utils/font.dart';
import 'package:exercise/src/utils/colors.dart';

class ExerciseDetailsScreen extends StatefulWidget {
  final ExerciseModel exerciseModel;

  ExerciseDetailsScreen({super.key, required this.exerciseModel});

  @override
  State<ExerciseDetailsScreen> createState() => _ExerciseDetailsScreenState();
}

class _ExerciseDetailsScreenState extends State<ExerciseDetailsScreen> {
  Timer? timer;
  int passedSeconds = 0;
  bool isRunning = false;

  void startTimer() {
    if (timer != null && timer!.isActive) {
      return;
    }

    setState(() {
      isRunning = true;
    });

    timer = Timer.periodic(Duration(seconds: 1), (timer) {
      setState(() {
        passedSeconds++;
      });
    });
  }

  void stopTimer() {
    if (timer != null) {
      timer!.cancel();
    }

    setState(() {
      isRunning = false;
      passedSeconds = 0;
    });
  }

  @override
  void dispose() {
    if (timer != null) {
      timer!.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    int minutes = passedSeconds ~/ 60;
    int seconds = passedSeconds % 60;

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
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset(
              widget.exerciseModel.lottieAssets,
              width: double.infinity,
              height: 200,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return Center(child: Text('Error loading animation'));
              },
            ),
            SizedBox(height: 20.0),
            Text(
              widget.exerciseModel.name,
              style: CustomTextStyles.mediumTextStyle(
                  color: CustomColors.primaryColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            Container(
              alignment: Alignment.center,
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: CustomColors.primaryColorDark,
                border:
                    Border.all(color: CustomColors.primaryColorDark, width: 2),
              ),
              child: Text('$minutes : ${seconds.toString().padLeft(2, '0')}',
                  style: CustomTextStyles.mediumTextStyle(
                      color: CustomColors.primaryColorLight)),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: startTimer,
                    child: Text(
                      'Start',
                      style: CustomTextStyles.smallTextStyle(),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: CustomColors.primaryColorDark,
                        padding: EdgeInsets.symmetric(
                            vertical: 6.0, horizontal: 10.0))),
                SizedBox(width: 40),
                ElevatedButton(
                  onPressed: stopTimer,
                  child: Text(
                    'Stop',
                    style: CustomTextStyles.smallTextStyle(),
                  ),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: CustomColors.primaryColorDark,
                      padding: EdgeInsets.symmetric(
                          vertical: 6.0, horizontal: 10.0)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
