// import 'dart:html';

import 'package:crypto_mobile/core/model/get_crypto_list.dart';
import 'package:crypto_mobile/ui/app_barr.dart';
import 'package:crypto_mobile/ui/screens/cryptolist.dart';
import 'package:crypto_mobile/ui/top_display.dart';
import 'package:crypto_mobile/ui/vm/excchange_vm.dart';
import 'package:crypto_mobile/ui/vm/vm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff171520),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 40.w, right: 40.w),
          child: Column(
            children: [
              SizedBox(
                height: 20.h,
              ),
              const AppBarr(),
              SizedBox(
                height: 50.h,
              ),
              const TopDisplay(),
              SizedBox(
                height: 50.h,
              ),
              const SearchBar(),
              const CryptoList()
            ],
          ),
        ),
      ),
    );
  }
}

//     return vm.maybeWhen(data: (List<CryptoListRes>? coin) {
//       return SizedBox(
//         height: 100.h,
//         child: ListView.separated(
//           itemCount: coin!.length,
//           itemBuilder: (context, index) {
//             final coins = coin[index];
//             return ListTile(
//               subtitle: Text(coins.athDate.toString()),
//               title: Text(
//                 coins.name.toString(),
//               ),
//             );
//           },
//           separatorBuilder: (BuildContext context, int index) {
//             return SizedBox(
//               height: 20.h,
//             );
//           },
//         ),
//       );
//     }, orElse: () {
//       return const Text('Its empty');
//     });
//   }
// }

// class CryptoList extends HookConsumerWidget {
//   const CryptoList({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // final CryptoListRes coinId;
//     const String symbol = "btc";
//     final vm = ref.watch(allCoinProvider(symbol));

//     // return vm.maybeWhen(data: (CryptoListRes value) {
//     //   print(value.name);
//     //   return Text(value.name);
//     // }, orElse: () {
//     //   return Text('Empty');
//     // });

//     // return vm.when(error: (Object error, StackTrace stackTrace) {
//     //   return Text(error.toString());
//     // }, idle: () {
//     //   return const Center(
//     //     child: CircularProgressIndicator(),
//     //   );
//     // }, loading: () {
//     //   return const Center(
//     //     child: CircularProgressIndicator(),
//     //   );
//     // }, success: (value) {
//     //   return Text(
//     //     value!.name.toString(),
//     //     style: TextStyle(fontSize: 12.sp, color: Colors.white),
//     //   );
//     // });

//     return vm.maybeWhen(data: (List<CryptoListRes>? coin) {
//       return SizedBox(
//         height: 100.h,
//         child: ListView.separated(
//           itemCount: coin!.length,
//           itemBuilder: (context, index) {
//             final coins = coin[index];
//             return ListTile(
//               subtitle: Text(coins.athDate.toString()),
//               title: Text(
//                 coins.name.toString(),
//               ),
//             );
//           },
//           separatorBuilder: (BuildContext context, int index) {
//             return SizedBox(
//               height: 20.h,
//             );
//           },
//         ),
//       );
//     }, orElse: () {
//       return const Text('Its empty');
//     });

//     // return vm.when( error: (Object error, StackTrace stackTrace){
//     //    return Text(error.toString());
//     // },

//     // loading: loading, data: data,)
//   }
// }

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65.h,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(65.r),
          color: const Color(0xff262431)),
      child: Stack(
        children: [
          Positioned(
            left: 60.w,
            right: 0,
            bottom: 5.h,
            child: TextField(
              style: GoogleFonts.asap(color: Colors.white),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search . . .',
                  hintStyle: GoogleFonts.asap(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey)),
            ),
          ),
          Positioned(
            left: 0.w,
            right: 250,
            bottom: 16.h,
            child: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
          ),
          Positioned(
            left: 270.w,
            right: 0,
            bottom: 16.h,
            child: const Icon(
              Icons.tune_outlined,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
