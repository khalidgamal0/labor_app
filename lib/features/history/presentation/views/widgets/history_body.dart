import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:labor/core/utils/text_style.dart';
import 'package:labor/features/history/presentation/manger/history_cubit.dart';

import '../../../../../core/widgets/customAppbar.dart';

class HistoryScreenBody extends StatelessWidget {
  const HistoryScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: BlocProvider(
        create: (context) => HistoryCubit(),

        child: BlocBuilder<HistoryCubit, HistoryState>(
          builder: (context, state) {
            var cubit=HistoryCubit.get(context);
            return Scaffold(
                appBar: customAppbar(context: context,title: 'History'),
                body:cubit.historyBody[cubit.historyIndex]

            );
          },
        ),
      ),
    );
  }

}
