import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mindtask/data/models/maylove.dart';

import '../components/custom_carousel.dart';
import '../components/custom_listview.dart';
import '../components/custom_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

late List<MayLove> allMayLove;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset('assets/العناوين.svg'),
                    const CustomText(
                      text: 'طنطا , منطقة الاستاد',
                      fointsize: 14,
                    ),
                    const Spacer(),
                    InkWell(
                        onTap: () {},
                        child: const CustomText(
                          text: 'تغيير',
                          fointsize: 12,
                        )),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 36,
                      width: 259,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        cursorColor: Colors.black,
                        textInputAction: TextInputAction.search,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.search_rounded,
                              color: Color(0xff1A1817),
                            ),
                            color: Colors.grey,
                          ),
                          hintText: 'ابحث عن واجبه او مطعم',
                          hintStyle: const TextStyle(
                            color: Colors.black,
                          ),
                        ),
                        style: const TextStyle(
                            color: Colors.black, fontFamily: 'AlmaraiRegular'),
                      ),
                    ),
                    Container(
                      height: 36,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 4.0, left: 4),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              'assets/السلة.svg',
                            ),
                            const CustomText(
                              text: '300 ج',
                              fointsize: 12,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 21),
                const CustomCarousel(),
                const SizedBox(height: 21),
                const CustomText(
                  text: 'الاقسام',
                  fointsize: 21,
                ),
                const SizedBox(height: 16),
                const CategoryListView(),
                const SizedBox(height: 26),
                const CustomText(
                  text: 'أعادة الطلب',
                  fointsize: 21,
                ),

                //    ListView.builder(itemBuilder: (context, index) => Reorder(), ),

                const CustomText(
                  text: 'الاكثر طلبا',
                  fointsize: 21,
                ),
                const SizedBox(height: 16),
                //    ListView.builder(itemBuilder: (context, index) => Mostorder(), ),

                const SizedBox(height: 16),

                const CustomText(
                  text: 'قد يعجبك',
                  fointsize: 21,
                ),

                //    ListView.builder(itemBuilder: (context, index) => MayLove(), ),
              ]),
        ),
      ),
    ));
  }
}
