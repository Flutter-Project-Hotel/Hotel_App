import 'package:hotel_project/models/hotel.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  static final client = Supabase.instance.client;

// for Hotel table
// for Course table
  Future<List<Hotel>?> getCourses() async {
    final supabase = Supabase.instance.client;
    final rawHotels = await supabase.from('hotel').select(
        'hotelId, hotelName, imageUrl,hotelPrice, description, capacityRoom, facititiesType,city , imageCity');
    final List<Hotel> hotels = [];
    for (final hotel in rawHotels) {
      hotels.add(Hotel.fromJson(hotel));
    }
    return hotels;
  }

///////////////////insert function to Course table (update function like this)
  Future insertCourse(Hotel hotel) async {
    final supabase = Supabase.instance.client;
    await supabase.from('hotel').insert(hotel.toJson());
  }

//   ///////////////////delete function to Course table

  Future deleteHotel(String hotelId) async {
    final supabase = Supabase.instance.client;
    await supabase.from('hotel').delete().eq('hotelId', hotelId);
  }

// for instructor table ??
  // Future<List<Course>?> getInstructors() async {
  //   final supabase = Supabase.instance.client;
  //   final rawCourses =
  //       await supabase.from('instructor').select('name, course_id, image_url');
  //   final List<Course> courses = [];
  //   for (final course in rawCourses) {
  //     courses.add(Course.fromJson(course));
  //   }
  //   return courses;
  // }

  Future<List<Hotel>?> getStudentsByHotelId(String hotelId) async {
    final supabase = Supabase.instance.client;
    final rawHotels = await supabase.from('hotel').select(
        'hotelId, hotelName, imageUrl,hotelPrice, description, capacityRoom, facititiesType,city , imageCity');
    final List<Hotel> hotels = [];
    for (final hotel in rawHotels) {
      hotels.add(Hotel.fromJson(hotel));
    }
    return hotels;
  }
}
