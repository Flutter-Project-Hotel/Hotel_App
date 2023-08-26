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

///////////////////insert User
  // Future insertUser(User user) async {
  //   final supabase = Supabase.instance.client;
  //   await supabase.from('user').insert(user.toJson());
  // }

///////////////////delete function from hotel table

  Future deleteHotel(String hotelId) async {
    final supabase = Supabase.instance.client;
    await supabase.from('hotel').delete().eq('hotelId', hotelId);
  }

///////////////////get Hotel by hotel ID
  Future<List<Hotel>?> getHotelsByHotelId(String hotelId) async {
    final supabase = Supabase.instance.client;
    final rawHotels = await supabase.from('hotel').select();
    final List<Hotel> hotels = [];
    for (final hotel in rawHotels) {
      hotels.add(Hotel.fromJson(hotel));
    }
    return hotels;
  }
}
