class DealsData {
  static final exclusiveDeals = [
    ExclusiveDeals(
        title: 'SUNDOWNER TO GOA',
        duration: '2 Nights/3 days',
        imageUrl:
            'https://images.unsplash.com/photo-1644027616320-b378fc57f78e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        price: 30348),
    ExclusiveDeals(
        title: 'LAKSWADWEEP',
        duration: '2 Nights/3 days',
        imageUrl:
            'https://images.unsplash.com/photo-1644027616320-b378fc57f78e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        price: 16806),
    ExclusiveDeals(
        title: 'MALDIVES',
        duration: '2 Nights/3 days',
        imageUrl:
            'https://images.unsplash.com/photo-1644027616320-b378fc57f78e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        price: 30348),
    ExclusiveDeals(
        title: 'BAHAMAS',
        duration: '2 Nights/3 days',
        imageUrl:
            'https://images.unsplash.com/photo-1644027616320-b378fc57f78e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
        price: 16806)
  ];
}

class ExclusiveDeals {
  final String title;
  final String imageUrl;
  final num price;
  final dynamic duration;

  ExclusiveDeals({
    required this.title,
    required this.imageUrl,
    required this.price,
    required this.duration,
  });
}
