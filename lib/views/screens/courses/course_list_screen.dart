import 'package:flutter/material.dart';
import '../../models/courses_management.dart';


class CoursesScreen extends StatefulWidget {
  const CoursesScreen({super.key});

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  final List<Course> _courses = [];

  void _addCourse(Course course) {
    setState(() {
      _courses.add(course);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Courses")),
      body: ListView.builder(
        itemCount: _courses.length,
        itemBuilder: (context, index) {
          final course = _courses[index];
          return ListTile(
            title: Text(course.title),
            subtitle: Text(course.description),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final course = await Navigator.push<Course>(
            context,
            MaterialPageRoute(builder: (context) => AddCourseScreen()),
          );
          if (course != null) {
            _addCourse(course);
          }
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
