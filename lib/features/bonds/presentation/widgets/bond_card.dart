import 'package:flutter/material.dart';
import 'package:bondly/features/bonds/domain/entities/bond.dart';
import '../pages/bond_detail_page.dart';

class BondCard extends StatelessWidget {
  final Bond bond;

  const BondCard({super.key, required this.bond});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            bond.logoUrl,
            height: 40,
            width: 40,
            errorBuilder: (_, __, ___) => const Icon(Icons.image_not_supported),
          ),
        ),
        title: Text(
          bond.isin,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('${bond.creditRating} • ${bond.issuerName}'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => BondDetailPage(isin: bond.isin),
            ),
          );
        },
      ),
    );
  }
}
