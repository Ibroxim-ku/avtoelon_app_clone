import 'package:avto_elon_clone/feature/home/view/widgets/w_appbar.dart';
import 'package:avto_elon_clone/feature/home/view/widgets/w_body.dart';
import 'package:avto_elon_clone/feature/home/view_model/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(homeController);
    var con = ref.read(homeController);
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          controller: con.controller,
          slivers: const [
            WAppBar(),
            SliverPadding(
              padding: EdgeInsets.zero,
              sliver: WBody(),
            ),
          ],
        ),
      ),
    );
  }
}
