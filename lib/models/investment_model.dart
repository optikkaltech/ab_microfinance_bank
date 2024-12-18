class InvestmentOption {
  final String imageUrl;
  final String investmentName;
  final double unitPrice;
  final int returnPercentage;
  final String returnTime;
  final String status;

  InvestmentOption({
    required this.imageUrl,
    required this.investmentName,
    required this.unitPrice,
    required this.returnPercentage,
    required this.returnTime,
    required this.status,
  });

  InvestmentOption.fromJson(Map<String, dynamic> json)
      : imageUrl = json['imageUrl'],
        investmentName = json['investmentName'],
        unitPrice = json['unitPrice'],
        returnPercentage = json['returnPercentage'],
        returnTime = json['returnTime'],
        status = json['status'];

  InvestmentOption.fromMap(Map<String, dynamic> map)
      : imageUrl = map['imageUrl'],
        investmentName = map['investmentName'],
        unitPrice = map['unitPrice'],
        returnPercentage = map['returnPercentage'],
        returnTime = map['returnTime'],
        status = map['status'];
}
