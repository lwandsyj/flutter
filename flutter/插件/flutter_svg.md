1. flutter_svg 引用svg 图标

        import 'package:flutter_svg/flutter_svg.dart';

         SvgPicture.asset('assets/icons/back_arrow.svg')

         IconButton(
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
              color: kTextColor,// 设置svg 的颜色
            ),
            onPressed: () {},
          ),