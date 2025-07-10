import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../cubit/bonds_cubit.dart';
import '../cubit/bonds_state.dart';
import '../widgets/bond_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final BondsCubit cubit;
  String searchQuery = '';

  @override
  void initState() {
    super.initState();
    cubit = GetIt.I<BondsCubit>()..fetchBonds();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            TextField(
              decoration: const InputDecoration(
                hintText: 'Search by Issuer Name or ISIN',
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (value) => setState(() => searchQuery = value),
            ),
            const SizedBox(height: 16),
            // Bond List
            Expanded(
              child: BlocBuilder<BondsCubit, BondsState>(
                bloc: cubit,
                builder: (context, state) {
                  if (state is BondsLoading) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is BondsLoaded) {
                    final bonds = state.bonds
                        .where((b) =>
                    b.issuerName
                        .toLowerCase()
                        .contains(searchQuery.toLowerCase()) ||
                        b.isin
                            .toLowerCase()
                            .contains(searchQuery.toLowerCase()))
                        .toList();

                    if (bonds.isEmpty) {
                      return const Center(child: Text('No matching bonds found.'));
                    }

                    return ListView.builder(
                      itemCount: bonds.length,
                      itemBuilder: (context, index) =>
                          BondCard(bond: bonds[index]),
                    );
                  } else if (state is BondsError) {
                    return Center(child: Text(state.message));
                  }
                  return const SizedBox();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
