import 'dart:async';
import 'package:flutter/material.dart';
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SplashScreen(),
  ));
}
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      if (!mounted) return;
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const ResumePage(),
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.description,
              size: 90,
              color: Colors.blue,
            ),
            const SizedBox(height: 5),
            const Text(
              'VR Resume',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ResumePage extends StatelessWidget {
  const ResumePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("VR Resume"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 38,
              backgroundColor: Colors.blue,
              child: Icon(
                Icons.person,
                size: 45,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              "Vignesh Ramesh",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              "Web And App Developer Enthusiast",
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.blue),
            ),
            const SizedBox(height: 8),
            const Text(
              "+91 8667747549 | Chennai, India",
              textAlign: TextAlign.center,
            ),
            const Text(
              "vignesh04112004@gmail.com",
              textAlign: TextAlign.center,
            ),
            const Divider(height: 25),
            section("About Me"),
            const Text("Passionate And Enthusiastic Aspiring Web And App Developer With A Strong Interest In Creating Innovative, User Friendly And Responsive Digital Experiences. Possess Basic Knowledge Of HTML, CSS, JavaScript, Flutter And Dart With A Keen Desire To Learn New Technologies, Explore Creative Ideas And Continuously Improve Development Skills Through Hands On Projects. Eager To Grow As A Developer And Turn Ideas Into Meaningful Real World Applications.",
            ),
            const Divider(height: 25,), 
            section("Education"),
            const Text(
              "Bachelor Of Engineering | St. Joseph's College Of Engineering | Percentage - 7.52% | 2022-2026\n\n"
              "Higher Secondary Certificate | Shri Natesan Vidyasala Matric Higher Secondary School | Percentage - 69.33% | 2022\n\n"
              "Secondary School Certificate | Shri Natesan Vidyasala Matric Higher Secondary School | Percentage - 68.2% | 2020",
            ),
            const Divider(height: 25,),
            section("Experience"),
            const Text(
              "Associate - Non Voice / Chat Support | Sutherland | Chennai | 1 Month\n", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              "Handled Customer Queries Through Chat And Provided Accurate Solutions. Troubleshot Basic Technical Issues And Guided Customers Through Step By Step Solutions. Maintained Proper Documentation And Followed Process Guidelines. Achieved Quality And Productivity Targets While Maintaining Professional Written Communication.\n"
            ),
            const Divider(height: 25,),
            section("Skills"),
            const Wrap(
              alignment: WrapAlignment.center,
              spacing: 15,
              runSpacing: 15,
              children: [
                Chip(label: Text("Flutter",)),
                Chip(label: Text("Dart")),
                Chip(label: Text("HTML")),
                Chip(label: Text("CSS")),
                Chip(label: Text("JavaScript")),
                Chip(label: Text("Python")),
                Chip(label: Text("Java")),
                Chip(label: Text("C")),
              ],
            ),
            const Divider(height: 25,),
            section("Projects"),
            const Text(
              "Portfolio Website | HTML & CSS\n",textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text("Designed And Developed A Responsive Multi Page Portfolio Using HTML And CSS, Featuring Sections For Projects, Skills And Contact With Mobile First Approach Via Flexbox And Media Queries. Optimized Site Performance With Semantic HTML Structure And CSS Animations, Achieving Fast Load Times.\n",
            ),
            const Text(
              "To Do List | HTML & CSS\n", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              "Designed And Developed A Responsive To Do List Interface Using HTML And CSS, Featuring A Clean Layout For Adding, Organizing And Tracking Daily Tasks.\n"
            ),
            const Text(
              "Games Collections | HTML & CSS\n", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              "Developed A Responsive Games Collection Website Using HTML And CSS. Designed Game Cards With Images, Titles And Interactive Buttons Using CSS Grid And Flexbox. Implemented A Clean, User Friendly Layout That Adapts To Different Screen Sizes.\n"
              ),
              const Text(
                "Calculator | HTML, CSS & JavaScript\n", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                "Developed A Fully Functional Calculator Using HTML For Structure, CSS For Responsive Design And JavaScript For Arithmetic Operations (Add, Subtract, Multiply, Divide) With Real Time User Input Validation.\n"
              ),
              const Text(
                "Resume App | Flutter & Dart\n", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                "Developed A Personal Resume Application Using Flutter To ShowCase Professional Information, Education, Technical Skills, Projects And Contact Details. Designed A Clean, Responsive User Interface Using Flutter Widgets Such As Column, Card, Wrap And CircleAvatar. Implemented Reusable Widgets To Organize Resume Sections And Improve Code Readability."
              ),
            const Divider(height: 25,),
            section("Contact Me"),
            const Text(
              "Feel Free To Contact Me For Opportunities, Collaborations Or Any Professional Inquiries.\n", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              "Email : vignesh04112004@gmail.com\n"
              "Phone : +91 8667747549\n"
              "Location : Chennai, India",
              textAlign: TextAlign.center,
            ),
            const Divider(height: 25,),
            const SizedBox(height: 18),
            const Center(
              child: Text(
                "Thanks For Visiting! Let's Connect And Build Something Amazing Together.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget section(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 6),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}