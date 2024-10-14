import 'package:bookly/core/utils/api_sevice.dart';
import 'package:bookly/features/home/data/data_sources/home_local_data_source.dart';
import 'package:bookly/features/home/data/data_sources/home_remote_data_source.dart';
import 'package:bookly/features/home/data/repos/hemo_repo_implementaion.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupServiceLocator() {
  getIt.registerSingleton<HemoRepoImplementaion>(
    HemoRepoImplementaion(
        homeRemoteDataSource: HomeRemoteDataSourceImplemntaion(
          apiService: ApiService(Dio()),
        ),
        homeLocalDataSource: HomeLocalDataSourceImplemntaion()),
  );
}
