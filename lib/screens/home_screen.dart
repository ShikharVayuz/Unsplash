import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:unsplash/models/wallpaper.dart';
import 'package:unsplash/widgets/chocoBar.dart';
import 'package:unsplash/widgets/customCardWidget.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // void deleteWallpaper(
  //     WallpaperData wallpaper, List<WallpaperData> wallpapers) {
  //   setState(() {
  //     wallpapers.remove(wallpaper);
  //   });
  // }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        title: Text(
          "UnSplash",
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      drawer: MainDrawer(),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: CustomScrollView(
          controller: ScrollController(),
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(child: ChocoBar()),
            SliverToBoxAdapter(
              child: Text(
                "Best of the month",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),

            //  we can use sliverList but not needed here in this case as I want
            //  the list to scroll horizontally
            //  and sliver List doesn't have a scroll direction this is managed by
            //  custom scroll view
            SliverToBoxAdapter(
              child: Container(
                  padding: EdgeInsets.zero,
                  height: 220,
                  child: Consumer(builder: (context, watch, _) {
                    List<WallpaperData> watch1 = watch(wallpaperProvider);
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => CustomCardWidget(
                        url: watch1[index].url,
                        parallax: false,
                        walls: watch1[index],
                        onTap: () {},
                      ),
                      itemCount: watch1.length,
                      physics: BouncingScrollPhysics(),
                    );
                  })),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 15)),
            SliverToBoxAdapter(
              child: Text(
                "The color tone",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                height: 75,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: dummyData.length,
                    itemBuilder: (context, index) =>
                        ColorToneBox(color: dummyData[index].color)),
              ),
            ),

            SliverToBoxAdapter(child: SizedBox(height: 15)),
            SliverToBoxAdapter(
              child: Text(
                "Categories",
                style: Theme.of(context).textTheme.headline5,
              ),
            ),

            //  Here Sliver Grid was neccessary for better custom scroll effect
            //  don't wrap with expanded or give definte height something
            //  this widget is smart enough to how to utilize the space
            //  If used normal gridView Widget then we must wrap with Expanded or give a definite height

            Consumer(
              builder: (context, watch, _) {
                final wallify = watch(wallpaperListProvider);
                return SliverGrid(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 3 / 2),
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => CustomCardWidget(
                      url: wallify[index].url,
                      parallax: true,
                      walls: wallify[index],
                      onTap: () {},
                    ),
                    childCount: wallify.length,
                  ),
                );
              },
            ),
            // SliverToBoxAdapter(
            //   child: Consumer(
            //     builder: (context, watch, _) {
            //       List watch2 = watch(wallpaperProvider);
            //       return GridView.count(
            //         crossAxisCount: 3,
            //         children: List.generate(
            //           watch2.length,
            //           (index) => CustomCardWidget(
            //             url: watch2[index].url,
            //             parallax: true,
            //             walls: watch2[index],
            //           ),
            //         ),
            //       );
            //     },
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          ListTile(
            title: Text("Filters"),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
