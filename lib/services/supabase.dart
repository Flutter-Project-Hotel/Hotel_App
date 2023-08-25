import 'package:hotel_project/models/booking.dart';
import 'package:hotel_project/models/hotel.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  static final client = Supabase.instance.client;

// for booking table
  Future<List<Booking>?> getBooking() async {
    final supabase = Supabase.instance.client;
    final rawBooking = await supabase.from('booking').select();
    final List<Booking> bookingList = [];
    for (final booking in rawBooking) {
      bookingList.add(Booking.fromJson(booking));
    }
    return bookingList;
  }

// for Hotel table
  Future<List<Hotel>?> getHotel() async {
    final supabase = Supabase.instance.client;
    final rawHotels = await supabase.from('hotel').select();
    final List<Hotel> hotels = [];
    for (final hotel in rawHotels) {
      hotels.add(Hotel.fromJson(hotel));
    }
    return hotels;
  }

///////////////////insert function to Course table (update function like this)
  // Future insertCourse(Hotel hotel) async {
  //   final supabase = Supabase.instance.client;
  //   await supabase.from('hotel').insert(hotel.toJson());
  // }

//   ///////////////////delete function to hotel table

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

  Future<List<Hotel>?> getHotelsByHotelId(String hotelId) async {
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
