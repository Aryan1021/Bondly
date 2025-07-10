import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../domain/entities/bond.dart';
import '../cubit/bond_detail_cubit.dart';
import '../cubit/bond_detail_state.dart';

class BondDetailPage extends StatefulWidget {
  final String isin;

  const BondDetailPage({super.key, required this.isin});

  @override
  State<BondDetailPage> createState() => _BondDetailPageState();
}

class _BondDetailPageState extends State<BondDetailPage> {
  late final BondDetailCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = GetIt.I<BondDetailCubit>()..fetchBondDetail(widget.isin);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Bond Details")),
      body: BlocBuilder<BondDetailCubit, BondDetailState>(
        bloc: cubit,
        builder: (context, state) {
          if (state is BondDetailLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is BondDetailLoaded) {
            final Bond bond = state.bond;
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.network(
                      bond.logoUrl,
                      height: 80,
                      width: 80,
                      errorBuilder: (_, __, ___) =>
                      const Icon(Icons.image_not_supported, size: 80),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(bond.issuerName,
                      style: Theme.of(context).textTheme.headlineSmall),
                  Text(bond.isin, style: const TextStyle(color: Colors.grey)),
                  const SizedBox(height: 8),
                  Text(
                    "Credit Rating: ${bond.creditRating}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Status: ${bond.status}",
                    style: const TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    bond.description,
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            );
          } else if (state is BondDetailError) {
            return Center(child: Text(state.message));
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
