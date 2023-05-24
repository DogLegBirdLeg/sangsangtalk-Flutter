import 'package:flutter/material.dart';
import 'package:watso/Common/theme/text.dart';

import '../../models/post_model.dart';
import 'information_tile.dart';

class StoreDetailBox extends StatelessWidget {
  const StoreDetailBox({Key? key, required this.store}) : super(key: key);
  final Store store;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0),
            child: Text(
              "가게정보",
              style: WatsoText.title,
            ),
          ),
          InformationTile(
              icon: Icons.store, title: "가게이름", content: store.name),
          InformationTile(
            icon: Icons.phone,
            title: "가게번호",
            content: store.phoneNumber,
          ),
          InformationTile(
            icon: Icons.attach_money,
            title: "최소 주문 금액",
            content: '${store.minOrder}원',
          ),
          InformationTile(
            icon: Icons.delivery_dining,
            title: "기본 배달비",
            content: "${store.fee}원",
          ),
          InformationTile(
            icon: Icons.info,
            title: "배달비 상세 정보",
            content: store.note.isNotEmpty
                ? store.note.map((x) => '﹒$x').join('\n')
                : '없음',
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
