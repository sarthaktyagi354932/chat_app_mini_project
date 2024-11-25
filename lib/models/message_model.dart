class MessageModel {
  final String messege;
  final String sender;
  final String receiver;
  final String? messageId;
  final DateTime timestemp;
  final bool isSeenByReciver;
  final bool? isImage;

  MessageModel({
    required this.messege,
    required this.sender,
    required this.receiver,
    this.messageId,
    required this.timestemp,
    required this.isSeenByReciver,
    this.isImage,
  });
}
