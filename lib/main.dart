import 'package:bookly/consts.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/functions/setup_service.dart';
import 'package:bookly/core/utils/simple_bloc_observel.dart';
import 'package:bookly/features/home/data/repos/hemo_repo_implementaion.dart';
import 'package:bookly/features/home/domain/entities/book_entity.dart';
import 'package:bookly/features/home/domain/use_case/fetceh_fetear_books_usecase.dart';
import 'package:bookly/features/home/domain/use_case/fetch_pop_books.dart';
import 'package:bookly/features/home/presentaion/manger/cubit_featchure_books/fetch_featchure_books_cubit.dart';
import 'package:bookly/features/home/presentaion/manger/cubit_newest_books/newest_books_cubit.dart';
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:device_preview/device_preview.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(BookEntityAdapter());
  await Hive.openBox<BookEntity>(kfeaturesBooks);
  await Hive.openBox<BookEntity>(knewestBooks);

  setupServiceLocator();
  Bloc.observer = SimpleBlocObservel();
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => const Books(),
    ),
  );
}

class Books extends StatelessWidget {
  const Books({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FetchFeatchureBooksCubit(
            FetcehFetearBooksUsecase(
              homeRepo: getIt.get<HemoRepoImplementaion>(),
            ),
          )..fetchFetureBooks(), // Initial fetch on app start
        ),
        BlocProvider(
            create: (context) => NewestBooksCubit(
                  FetchPopBooksUseCae(
                      homeRepo: getIt.get<HemoRepoImplementaion>()),
                )),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData().copyWith(
          textTheme: GoogleFonts.hankenGroteskTextTheme(),
        ),
      ),
    );
  }
}
