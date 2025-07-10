class Bond {
  final String isin;
  final String issuerName;
  final String creditRating;
  final String logoUrl;
  final String status;
  final String description;

  const Bond({
    required this.isin,
    required this.issuerName,
    required this.creditRating,
    required this.logoUrl,
    required this.status,
    required this.description,
  });
}
