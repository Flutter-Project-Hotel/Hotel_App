import 'package:hotel_project/models/hotel.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  static final client = Supabase.instance.client;

// // for Course table
//   Future<List<Course>?> getCourses() async {
//     final supabase = Supabase.instance.client;
//     final rawCourses =
//         await supabase.from('course').select('name, course_id, image_url');
//     final List<Course> courses = [];
//     for (final course in rawCourses) {
//       courses.add(Course.fromJson(course));
//     }
//     return courses;
//   }

// ///////////////////insert function to Course table (update function like this)
//   Future insertCourse(Course course) async {
//     final supabase = Supabase.instance.client;
//     await supabase.from('course').insert(course.toJson());
//   }

// //   ///////////////////delete function to Course table

//   Future deleteCourse(String courseId) async {
//     final supabase = Supabase.instance.client;
//     await supabase.from('course').delete().eq('course_id', courseId);
//   }

// // for instructor table ??
//   Future<List<Course>?> getInstructors() async {
//     final supabase = Supabase.instance.client;
//     final rawCourses =
//         await supabase.from('instructor').select('name, course_id, image_url');
//     final List<Course> courses = [];
//     for (final course in rawCourses) {
//       courses.add(Course.fromJson(course));
//     }
//     return courses;
//   }

// // for Student table
//   Future<List<Student>?> getStudentsByCourseId(String courseId) async {
//     final supabase = Supabase.instance.client;
//     final rawStudents =
//         await supabase.from('student').select('name, student_id').match(
//       {'course_id': courseId},
//     );
//     final List<Student> students = [];
//     for (final student in rawStudents) {
//       students.add(Student.fromJson(student));
//     }
//     return students;
//   }
}
