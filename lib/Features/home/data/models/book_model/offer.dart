import 'list_price.dart';
import 'rental_duration.dart';
import 'retail_price.dart';

class Offer {
  int? finskyOfferType;
  ListPrice? listPrice;
  RetailPrice? retailPrice;
  RentalDuration? rentalDuration;

  Offer({
    this.finskyOfferType,
    this.listPrice,
    this.retailPrice,
    this.rentalDuration,
  });

  factory Offer.fromJson(Map<String, dynamic> json) => Offer(
        finskyOfferType: json['finskyOfferType'] as int?,
        listPrice: json['listPrice'] == null
            ? null
            : ListPrice.fromJson(json['listPrice'] as Map<String, dynamic>),
        retailPrice: json['retailPrice'] == null
            ? null
            : RetailPrice.fromJson(json['retailPrice'] as Map<String, dynamic>),
        rentalDuration: json['rentalDuration'] == null
            ? null
            : RentalDuration.fromJson(
                json['rentalDuration'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'finskyOfferType': finskyOfferType,
        'listPrice': listPrice?.toJson(),
        'retailPrice': retailPrice?.toJson(),
        'rentalDuration': rentalDuration?.toJson(),
      };
}
