import 'package:flutter/material.dart';
import '../../../../core/data/models/review_model.dart';
import '../../../home/data/enum/payment_method_enum.dart';
import '../../../home/data/enum/property_type_enum.dart';
import '../../../home/data/models/property_model.dart';
import 'widgets/custom_place_card.dart';

class PropertiesView extends StatelessWidget {
  const PropertiesView({super.key});

  @override
  Widget build(BuildContext context) {
    List<PropertyModel> Properties = [
      PropertyModel(
        id: '1',
        name: 'Luxury Apartment',
        location: 'Downtown, New York',
        price: 5000.0,
        beds: 3,
        baths: 2,
        floors: 1,
        description: 'A luxurious apartment with a stunning view of the city.',
        imageUrls: [
          'https://wallpapers.com/images/hd/real-estate-low-angle-shot-c9wnxm14uva0ydio.jpg'
        ],
        contactPerson: 'John Doe',
        contactPersonRole: 'Realtor',
        contactNumber: '+1234567890',
        area: 120.0,
        isNegotiable: true,
        propertyType: PropertyType.furnishedApartment,
        paymentMethods: [PaymentMethod.cash, PaymentMethod.bankTransfer],
        reviews: [
          Review(
            userId: 'user1',
            userName: 'Alice',
            rating: 4.5,
            comment: 'Great Property!',
            // timestamp: DateTime.now(),
          ),
        ],
        listedDate: DateTime.now(),
      ),
      PropertyModel(
        id: '2',
        name: 'Modern Villa',
        location: 'Beverly Hills, Los Angeles',
        price: 10000.0,
        beds: 5,
        baths: 4,
        floors: 2,
        description: 'A modern villa with a private pool and garden.',
        imageUrls: [
          'https://wallpapers.com/images/hd/real-estate-low-angle-shot-c9wnxm14uva0ydio.jpg'
        ],
        contactPerson: 'Jane Smith',
        contactPersonRole: 'Agent',
        contactNumber: '+0987654321',
        area: 300.0,
        isNegotiable: false,
        propertyType: PropertyType.land,
        paymentMethods: [PaymentMethod.installment, PaymentMethod.check],
        reviews: [
          Review(
            userId: 'user2',
            userName: 'Bob',
            rating: 5.0,
            comment: 'Amazing property!',
            // timestamp: DateTime.now(),
          ),
        ],
        listedDate: DateTime.now(),
      ),
      PropertyModel(
        id: '2',
        name: 'Modern Villa',
        location: 'Beverly Hills, Los Angeles',
        price: 10000.0,
        beds: 5,
        baths: 4,
        floors: 2,
        description: 'A modern villa with a private pool and garden.',
        imageUrls: [
          'https://wallpapers.com/images/hd/real-estate-low-angle-shot-c9wnxm14uva0ydio.jpg'
        ],
        contactPerson: 'Jane Smith',
        contactPersonRole: 'Agent',
        contactNumber: '+0987654321',
        area: 300.0,
        isNegotiable: false,
        propertyType: PropertyType.land,
        paymentMethods: [PaymentMethod.installment, PaymentMethod.check],
        reviews: [
          Review(
            userId: 'user2',
            userName: 'Bob',
            rating: 5.0,
            comment: 'Amazing property!',
            // timestamp: DateTime.now(),
          ),
        ],
        listedDate: DateTime.now(),
      ),
      PropertyModel(
        id: '2',
        name: 'Modern Villa',
        location: 'Beverly Hills, Los Angeles',
        price: 10000.0,
        beds: 5,
        baths: 4,
        floors: 2,
        description: 'A modern villa with a private pool and garden.',
        imageUrls: [
          'https://wallpapers.com/images/hd/real-estate-low-angle-shot-c9wnxm14uva0ydio.jpg'
        ],
        contactPerson: 'Jane Smith',
        contactPersonRole: 'Agent',
        contactNumber: '+0987654321',
        area: 300.0,
        isNegotiable: false,
        propertyType: PropertyType.land,
        paymentMethods: [PaymentMethod.installment, PaymentMethod.check],
        reviews: [
          Review(
            userId: 'user2',
            userName: 'Bob',
            rating: 5.0,
            comment: 'Amazing property!',
            // timestamp: DateTime.now(),
          ),
        ],
        listedDate: DateTime.now(),
      ),
      PropertyModel(
        id: '2',
        name: 'Modern Villa',
        location: 'Beverly Hills, Los Angeles',
        price: 10000.0,
        beds: 5,
        baths: 4,
        floors: 2,
        description: 'A modern villa with a private pool and garden.',
        imageUrls: [
          'https://wallpapers.com/images/hd/real-estate-low-angle-shot-c9wnxm14uva0ydio.jpg'
        ],
        contactPerson: 'Jane Smith',
        contactPersonRole: 'Agent',
        contactNumber: '+0987654321',
        area: 300.0,
        isNegotiable: false,
        propertyType: PropertyType.land,
        paymentMethods: [PaymentMethod.installment, PaymentMethod.check],
        reviews: [
          Review(
            userId: 'user2',
            userName: 'Bob',
            rating: 5.0,
            comment: 'Amazing property!',
            // timestamp: DateTime.now(),
          ),
        ],
        listedDate: DateTime.now(),
      ),
    ];

    return SliverList.builder(
      itemCount: Properties.length,
      itemBuilder: (context, index) {
        return CustomPropertyCard(
          propertyModel: Properties[index],
        );
      },
    );
  }
}
