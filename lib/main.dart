import 'package:flutter/material.dart';
import 'package:flutter_app_coba/colors/colors.dart';
import 'package:flutter_app_coba/dimens/dimens.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyHomePaage(),
    );
  }
}

class MyHomePaage extends StatefulWidget {
  const MyHomePaage({super.key});

  @override
  State<MyHomePaage> createState() => _MyHomePaageState();
}

class _MyHomePaageState extends State<MyHomePaage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: ColorsItem.blue4085F3,
              borderRadius:
                  const BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: Dimens.SPACE_40),
            child: DefaultTabController(
              length: 2,
              initialIndex: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 21.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Assignment',
                      style: GoogleFonts.inter(
                        height: 2,
                        fontSize: Dimens.TEXT_SIZE_H1,
                        fontWeight: FontWeight.w700,
                        color: ColorsItem.whiteColor,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: ColorsItem.whiteColor,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 2),
                              blurRadius: 3,
                              color: Colors.black.withOpacity(0.4))
                        ],
                        borderRadius: const BorderRadius.vertical(
                          top: Radius.circular(15),
                        ),
                      ),
                      child: TabBar(
                        indicatorSize: TabBarIndicatorSize.tab,
                        indicatorColor: ColorsItem.blue4085F3,
                        unselectedLabelColor: ColorsItem.grey666B73,
                        labelColor: ColorsItem.blue4085F3,
                        tabs: [
                          Tab(
                            child: Center(
                              child: Text(
                                'To do (0)',
                                style: GoogleFonts.inter(
                                  fontSize: Dimens.SPACE_15,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          Tab(
                            child: Center(
                              child: Text(
                                'In progress (0)',
                                style: GoogleFonts.inter(
                                  fontSize: Dimens.SPACE_14,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Expanded(
                      child: TabBarView(
                        children: [
                          tabTicket(),
                          tabProject(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget tabTicket() {
  return Column(
    children: [
      Container(
        padding: const EdgeInsets.all(12),
        height: Dimens.SPACE_80,
        decoration: const BoxDecoration(
            color: Color(0xffE4F2FF),
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      'lib/assets/images/task.svg',
                      height: 18,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      'Complete ticket',
                      style: GoogleFonts.inter(
                        fontSize: Dimens.TEXT_SIZE_H3,
                        fontWeight: FontWeight.w700,
                        color: ColorsItem.black020202,
                      ),
                    )
                  ],
                ),
                Text(
                  'Lihat progress ticket kamu yang sudah selesai',
                  style: GoogleFonts.inter(
                    fontSize: Dimens.SPACE_14,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            Container(
                height: 26,
                width: 26,
                decoration: BoxDecoration(
                    color: ColorsItem.blue4085F3,
                    borderRadius: const BorderRadius.all(Radius.circular(8))),
                child: SvgPicture.asset(
                  'lib/assets/images/arrow.svg',
                  color: ColorsItem.whiteColor,
                  fit: BoxFit.scaleDown,
                )),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            SvgPicture.asset(
              'lib/assets/images/Frame 798.svg',
              width: double.infinity,
              height: 225,
            ),
            Text(
              'Ooops, Kamu tidak punya tiket',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: Dimens.TEXT_SIZE_H2,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Kamu dapat mencari tiket pada halaman available ticket',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                fontSize: Dimens.TEXT_SIZE_H4,
                fontWeight: FontWeight.w400,
                color: ColorsItem.grey32373D,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 140,
              height: 36,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xffF78A00),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),

                  // style: ElevatedButton.styleFrom(
                  //     backgroundColor: const Color(0xffF78A00),
                  //     elevation: 3,
                  //     padding: const EdgeInsets.all(20)),
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'lib/assets/images/task.svg',
                        height: 18,
                        color: ColorsItem.whiteColor,
                      ),
                      Text(
                        'Avilable Ticket',
                        style: GoogleFonts.inter(
                          fontSize: Dimens.SPACE_14,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      )
    ],
  );
}

Widget tabProject() {
  return Column();
}
