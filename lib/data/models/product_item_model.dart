/// A model class representing a product.
class ProductItemModel {
  /// Creates a [ProductItemModel].
  ///
  /// The [id], [title], [description], [price], [category], [image] and [rating] parameters must not be null.
  const ProductItemModel(
      {required this.id,
      required this.title,
      required this.description,
      required this.price,
      required this.category,
      required this.image,
      required this.rating});

  ///Id del producto
  final int? id;

  ///Título del producto
  final String? title;

  ///Descripción del producto
  final String? description;

  ///Precio del producto
  final double? price;

  ///Categoría del producto
  final String? category;

  ///URL de la imagen del producto
  final String? image;

  ///Puntaje del producto
  final RatingItemModel? rating;
}

/// A model class representing a product's rating.
class RatingItemModel {
  /// Creates a [RatingItemModel].
  ///
  /// The [rate] and [count] parameters must not be null.
  RatingItemModel({
    this.rate,
    this.count,
  });

  ///Puntaje promedio del producto
  final double? rate;

  ///Cantidad de puntuaciones del producto
  final int? count;
}
