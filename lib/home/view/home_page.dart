import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_tom/app/model/data.dart';
import 'package:test_tom/home/cubit/data_state.dart';
import 'package:test_tom/home/home.dart';
import 'package:test_tom/home/view/detail_page.dart';
import 'package:test_tom/l10n/l10n.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = Theme.of(context);
    return BlocProvider<DataCubit>(
      create: (context) => DataCubit(),
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(242, 242, 242, 1),
        appBar: AppBar(
          title: Text(
            l10n.homeAppBarTitle,
            style: theme.textTheme.titleLarge,
          ),
          leading: const Icon(Icons.menu, size: 24),
        ),
        body: BlocBuilder<DataCubit, DataState>(
          builder: (context, state) {
            if (state is ErrorState) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Text(
                      context.l10n.genericErrorMessage,
                      textAlign: TextAlign.center,
                      style: const TextStyle(color: Colors.red),
                    ),
                  ),
                  FilledButton(
                    onPressed: () {
                      context.read<DataCubit>().getDataTeachOnMars();
                    },
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.resolveWith((states) {
                        return const Color.fromRGBO(46, 102, 212, 1);
                      }),
                    ),
                    child: Text(
                      context.l10n.refreshButton,
                    ),
                  ),
                ],
              );
            }
            if (state is LoadingState) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (state is LoadedState) {
              return DataView(teachOnMarsData: state.data);
            }
            return Container();
          },
        ),
      ),
    );
  }
}

class DataView extends StatelessWidget {
  const DataView({super.key, required this.teachOnMarsData});

  final Iterable<TeachOnMarsData> teachOnMarsData;

  Widget description(
    TeachOnMarsData data,
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data.title,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Text(
              data.excerpt ?? '',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
          FilledButton(
            onPressed: () {
              Navigator.of(context).push<dynamic>(
                MaterialPageRoute<dynamic>(
                  builder: (context) => DetailPage(teachOnMarsData: data),
                ),
              );
            },
            child: const Center(
              child: Text('En savoir plus'),
            ),
          ),
        ],
      ),
    );
  }

  Widget picture(
    TeachOnMarsData data,
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: Text(
              data.title,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: SizedBox(
              height: 160,
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  data.picture?.url ?? '',
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Text(
            data.author ?? '',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final data = teachOnMarsData;
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            ...data.map((e) {
              switch (e.type) {
                case 1:
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push<dynamic>(
                        MaterialPageRoute<dynamic>(
                          builder: (context) => DetailPage(teachOnMarsData: e),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: description(e, context),
                      ),
                    ),
                  );
                case 2:
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push<dynamic>(
                        MaterialPageRoute<dynamic>(
                          builder: (context) => DetailPage(teachOnMarsData: e),
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: picture(
                          e,
                          context,
                        ),
                      ),
                    ),
                  );
                default:
                  return Container();
              }
            })
          ],
        ),
      ),
    );
  }
}
