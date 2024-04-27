class Bill {
  final int billId;
  final String orgCode;
  final double waterFee;
  final double electricFee;
  final double rentalFee;
  final int month;
  final int year;
  final int isPaid;
  final String createdAt;
  final String userId;

  Bill({
    required this.billId,
    required this.orgCode,
    required this.waterFee,
    required this.electricFee,
    required this.rentalFee,
    required this.month,
    required this.year,
    required this.isPaid,
    required this.createdAt,
    required this.userId,
  });

  factory Bill.fromMap(Map<String, dynamic> map) {
    return Bill(
      billId: map['bill_id'] as int,
      orgCode: map['org_code'] as String,
      waterFee: map['water_fee'] as double,
      electricFee: map['electric_fee'] as double,
      rentalFee: map['rental_fee'] as double,
      month: map['month'] as int,
      year: map['year'] as int,
      isPaid: map['isPaid'] as int,
      createdAt: map['created_at'] as String,
      userId: map['user_id'] as String,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'bill_id': billId,
      'org_code': orgCode,
      'water_fee': waterFee,
      'electric_fee': electricFee,
      'rental_fee': rentalFee,
      'month': month,
      'year': year,
      'isPaid': isPaid,
      'created_at': createdAt,
      'user_id': userId,
    };
  }
}
