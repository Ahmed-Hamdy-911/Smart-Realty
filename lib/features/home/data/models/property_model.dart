import '../../../../core/data/models/review_model.dart';
import '../enum/payment_method_enum.dart';
import '../enum/property_type_enum.dart';

class PropertyModel {
  final String id;
  final String name;
  final String location;
  final double price;
  final int beds;
  final int baths;
  final int floors;
  final String description;
  final List<String> imageUrls;
  final String contactPerson;
  final String contactPersonRole;
  final String contactNumber;
  final double area;
  final bool isNegotiable;
  final PropertyType propertyType;
  final List<PaymentMethod> paymentMethods;
  final List<Review> reviews;
  final DateTime listedDate;
  // final Map<String, bool> features; // e.g., {'parking': true, 'pool': false}

  PropertyModel({
    required this.id,
    required this.name,
    required this.location,
    required this.price,
    required this.beds,
    required this.baths,
    required this.floors,
    required this.description,
    required this.imageUrls,
    required this.contactPerson,
    required this.contactPersonRole,
    required this.contactNumber,
    required this.area,
    required this.isNegotiable,
    required this.propertyType,
    required this.paymentMethods,
    this.reviews = const [],
    required this.listedDate,
    // this.features = const {},
  });

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'location': location,
        'price': price,
        'beds': beds,
        'baths': baths,
        'floors': floors,
        'description': description,
        'imageUrls': imageUrls,
        'contactPerson': contactPerson,
        'contactPersonRole': contactPersonRole,
        'contactNumber': contactNumber,
        'area': area,
        'isNegotiable': isNegotiable,
        'propertyType': propertyType.name,
        'paymentMethods': paymentMethods.map((e) => e.name).toList(),
        'reviews': reviews.map((e) => e.toJson()).toList(),
        'listedDate': listedDate.toIso8601String(),
        // 'features': features,
      };

  factory PropertyModel.fromJson(Map<String, dynamic> json, String id) =>
      PropertyModel(
        id: id,
        name: json['name'],
        location: json['location'],
        price: json['price'].toDouble(),
        beds: json['beds'],
        baths: json['baths'],
        floors: json['floors'],
        description: json['description'],
        imageUrls: List<String>.from(json['imageUrls']),
        contactPerson: json['contactPerson'],
        contactPersonRole: json['contactPersonRole'],
        contactNumber: json['contactNumber'],
        area: json['area'].toDouble(),
        isNegotiable: json['isNegotiable'],
        propertyType: PropertyType.values.firstWhere(
          (e) => e.name == json['propertyType'],
          orElse: () => PropertyType.other,
        ),
        paymentMethods: (json['paymentMethods'] as List<dynamic>)
            .map((e) => PaymentMethod.values.firstWhere(
                  (pm) => pm.name == e,
                  orElse: () => PaymentMethod.cash,
                ))
            .toList(),
        reviews: (json['reviews'] as List<dynamic>)
            .map((e) => Review.fromJson(e))
            .toList(),
        listedDate: DateTime.parse(json['listedDate']),
        // features: Map<String, bool>.from(json['features']),
      );
}
