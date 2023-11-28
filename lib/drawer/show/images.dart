// // ignore_for_file: camel_case_types, use_key_in_widget_constructors


// import 'package:artwave/Const/constant_Ui.dart';
// import 'package:artwave/drawer/show/imageview.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';


// class Images_page extends StatefulWidget {
//   const Images_page({Key? key});

//   @override
//   State<Images_page> createState() => _Images_pageState();
// }

// class _Images_pageState extends State<Images_page> {
//   List<String> imagePaths = List.generate(38, (index) => 'lib/images/album/img${index + 1}.jpeg');
//   bool isTapped = false;

//   void handleTap() {
//     setState(() {
//       isTapped = true;
//     });

//     Future.delayed(const Duration(milliseconds: 300), () {
//       if (mounted) {
//         setState(() {
//           isTapped = false;
//         });
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Define breakpoints and corresponding crossAxisCount values
//     final breakpoints = {
//       600: 2,   // For screen widths less than 600
//       1100: 3,  // For screen widths between 600 and 1200
//       1600: 6,  // For screen widths between 1200 and 1600
//       2000: 8,  // For screen widths greater than 1600
//     };

//     // Determine the crossAxisCount based on screen width
//     int crossAxisCount = 2;  // Default value

//     final screenWidth = MediaQuery.of(context).size.width;
//     for (var width in breakpoints.keys) {
//       if (screenWidth < width) {
//         crossAxisCount = breakpoints[width]!;
//         break;
//       }
//     }

//     return Scaffold(
//       appBar: myAppbar,
//       backgroundColor: myDefaultBackground,
//       body: LayoutBuilder(
//         builder: (context, constraints) {
//           return SingleChildScrollView(
//             child: Column(
//               children: [
//                 AspectRatio(
//                   aspectRatio: constraints.maxWidth / constraints.maxHeight,
//                   child: SizedBox(
//                     width: double.infinity,
//                     child: StaggeredGridView.countBuilder(
//                       crossAxisCount: crossAxisCount,  // Number of columns
//                       itemCount: imagePaths.length,
//                       itemBuilder: (context, index) {
//                         return InkWell(
//                           onTap: () {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) =>
//                                     ImageView(imagePaths: imagePaths[index]),
//                               ),
//                             );
//                           },
//                           child: AnimatedContainer(
//                             duration: const Duration(milliseconds: 300),
//                             color: isTapped
//                                 ? const Color.fromARGB(255, 118, 27, 255)
//                                 : const Color.fromARGB(0, 22, 78, 210),
//                             child: Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: Image.asset(imagePaths[index], fit: BoxFit.cover),
//                             ),
//                           ),
//                         );
//                       },
//                       staggeredTileBuilder: (index) => const StaggeredTile.fit(1),  // Define the size of each item
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

// ignore_for_file: camel_case_types, use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:artwave/Const/constant_Ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Images_page extends StatefulWidget {
  const Images_page({Key? key});

  @override
  State<Images_page> createState() => _Images_pageState();
}

class _Images_pageState extends State<Images_page> {
  List<String> imagePaths =
      List.generate(39, (index) => 'lib/images/album/img${index + 1}.jpeg');

  int getColumnCount(double screenWidth) {
    if (screenWidth < 600) {
      return 2;
    } else if (screenWidth < 1100) {
      return 3;
    } else if (screenWidth < 1600) {
      return 6;
    } else {
      return 8;
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final crossAxisCount = getColumnCount(screenWidth);

    return Scaffold(
      appBar: myAppbar,
      backgroundColor: myDefaultBackground,
      body: LayoutBuilder(
        builder: (context, constraints) {
          return StaggeredGridView.countBuilder(
            crossAxisCount: crossAxisCount,
            itemCount: imagePaths.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FullScreenImageView(
                        imagePaths: imagePaths,
                        initialIndex: index,
                      ),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(0, 22, 78, 210),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(imagePaths[index], fit: BoxFit.cover),
                  ),
                ),
              );
            },
            staggeredTileBuilder: (index) => const StaggeredTile.fit(1),
          );
        },
      ),
    );
  }
}

class FullScreenImageView extends StatefulWidget {
  final List<String> imagePaths;
  final int initialIndex;

  const FullScreenImageView({
    required this.imagePaths,
    required this.initialIndex,
  });

  @override
  _FullScreenImageViewState createState() => _FullScreenImageViewState();
}

class _FullScreenImageViewState extends State<FullScreenImageView> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: widget.initialIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: myDefaultBackground,
      ),
      backgroundColor: myDefaultBackground,
      body: PageView.builder(
        controller: pageController,
        itemCount: widget.imagePaths.length,
        itemBuilder: (context, index) {
          return Center(
            child: Image.asset(widget.imagePaths[index], fit: BoxFit.contain),
          );
        },
      ),
    );
  }
}
