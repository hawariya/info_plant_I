import 'dart:async';

import 'package:flutter/material.dart';
import 'package:info_plant/screen/index.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  final PageController _controller = PageController();
  final List<String> _images = [
    'https://img.freepik.com/premium-photo/beautiful-painting-farmer-rice-field_797981-21649.jpg',
    'https://img.freepik.com/premium-photo/beautiful-painting-farmer-rice-field_797981-21674.jpg',
    'https://www.freshpaintgallery.com/wp-content/uploads/2020/01/WR-030-324x324.jpg',
  ];
  int _currentPage = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startAutoScroll();
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  void _startAutoScroll() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      if (_currentPage < _images.length - 1) {
        _currentPage++;
      } else {
        _timer?.cancel(); // Stop auto-scrolling when the last page is reached
      }
      _controller.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeInOut,
      );
    });
  }

  void _nextPage() {
    if (_currentPage < _images.length - 1) {
      _currentPage++;
      _controller.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 1000),
        curve: Curves.easeInOut,
      );
    } else {
      // Last page reached, navigate to a new page
      _timer?.cancel(); // Stop auto-scrolling when the "Get Started" button is tapped
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OtherPage()),
      );
    }
  }

  void _skipPage() {
    if (_currentPage < _images.length - 1) {
      _currentPage = _images.length - 1;
      _controller.animateToPage(
        _currentPage,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      // Last page reached, add your logic here
      _timer?.cancel(); // Stop auto-scrolling when the "Get Started" button is tapped
    }
  }

  void _onDotClicked(int index) {
    _controller.animateToPage(
      index,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }



  @override
  Widget build(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  var height = MediaQuery.of(context).size.height;

    // print(height);
    // print(width);
    

    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onHorizontalDragUpdate: (details) {
              _controller.position.moveTo(details.globalPosition.dy);
            },
            child: PageView.builder(
              controller: _controller,
              itemCount: _images.length,
              itemBuilder: (context, index) {
                return Image.network(
                  _images[index],
                  fit: BoxFit.cover,
                );
              },
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
            ),
          ),
          
          Positioned(
            bottom: -100,
            left: 0,
            
            child: SizedBox(
              height: height/2, width: width,
              child: ClipPath(

              child: SizedBox(
                //color: Color.fromARGB(255, 36, 225, 90),
                height: height,
                width: width,
              
              ),
              //clipper: IntroCurve(),
            ),

            )
            
            ),
          // ClipPath(

          //     child: Container(
          //       color: Color.fromARGB(255, 36, 225, 90),
          //       height: height,
          //       width: width,
              
          //     ),
          //     clipper: IntroCurve(),
          //   ),

          
          
          Positioned(
            bottom: 60.0,
            left: 0,
            right: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: _controller, count: 3,
                effect: const ExpandingDotsEffect(
                  activeDotColor: Colors.purple,
                ),
              ),
            ),
          
          ),
          
          
           
          

          if(_currentPage < _images.length-1)
          Positioned(
            bottom: 50.0,
            left: 20.0,
            right: 20.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                if (_currentPage < _images.length - 1)
                  ElevatedButton(
                    onPressed: _skipPage,
                    child: const Text('Skip'),
                  ),
                ElevatedButton(
                  onPressed: _nextPage,
                  child: const Text('Next'),
                ),
              ],
            ),
          ),
          
          if(_currentPage == _images.length-1)
          //get start button
          Positioned(
            bottom: 20.0,
            left: 0,
            right: 0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Index()),
                );  
                }
            
            ,child: const Text('Get Start'),),
          
          ),
          
        ],
      ),
    );
  }
}

class OtherPage extends StatelessWidget {
  const OtherPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Page'),
      ),
      body: Stack(
        children: [
          Container(
            child: const Text('Hello'),
          )
        ],
      )
    );
  }
}
