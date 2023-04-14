// Copyright (c) 2022, Very Good Ventures
// https://verygood.ventures
//
// Use of this source code is governed by an MIT-style
// license that can be found in the LICENSE file or at
// https://opensource.org/licenses/MIT.

import 'package:bloc/bloc.dart';
import 'package:test_tom/app/network/api_provider.dart';
import 'package:test_tom/home/cubit/data_state.dart';

class DataCubit extends Cubit<DataState> {
  DataCubit() : super(InitialState()) {
    getDataTeachOnMars();
  }

  Future<void> getDataTeachOnMars() async {
    try {
      emit(LoadingState());
      final api = ApiProvider();
      final response = await api.getData();
      if (response.data.isEmpty) {
        emit(ErrorState());
      } else {
        emit(LoadedState(response.data));
      }
    } catch (e) {
      emit(ErrorState());
    }
  }

}
