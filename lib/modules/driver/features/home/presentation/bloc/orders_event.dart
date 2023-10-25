abstract class OrdersEvent {}

class FetchOrders extends OrdersEvent {}

class ConfirmOrder extends OrdersEvent {
  final int orderId;
  final double? price;
  final String? driverId;

  ConfirmOrder({required this.orderId, this.price, this.driverId});
}

class RejectOrder extends OrdersEvent {}
