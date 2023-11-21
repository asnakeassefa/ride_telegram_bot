import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:blog_application_aastu_grp3/features/article/presentation/pages/add_task_body.dart';
import 'package:blog_application_aastu_grp3/features/get_article/presentation/bloc/bloc/get_article_bloc.dart';
import 'package:blog_application_aastu_grp3/features/get_article/presentation/pages/ArticlePage.dart';
import 'package:blog_application_aastu_grp3/features/get_article/presentation/widgets/blog_card.dart';
import 'package:blog_application_aastu_grp3/features/profile/presentation/bloc/user_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../profile/presentation/pages/profile_page.dart';
import '../../data/models/article_model.dart';
import '../widgets/homepage_shimmer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static int currentCat = 0;
  @override
  Widget build(BuildContext context) {
    List tagsTitle = [
      "",
      "art",
      "design",
      "sports",
      "others",
      "politics",
      "culture",
      "production",
      "oech"
    ];

    List tagsTitleShow = [
      "All",
      "Art",
      "Design",
      "Sports",
      "Others",
      "Politics",
      "Culture",
      "Production",
      "Oech"
    ];

    void navigate(blogdata) {
      Navigator.push(context, MaterialPageRoute(builder: (ctx) {
        return ArticlePage(data: blogdata);
      }));
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.sort,
                size: 34,
              ),
            ),
            const Spacer(),
            DefaultTextStyle(
              style: const TextStyle(
                fontSize: 30.0,
              ),
              child: AnimatedTextKit(
                animatedTexts: [
                  WavyAnimatedText('Welcome Back!',
                      textStyle: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400)),
                ],
                isRepeatingAnimation: true,
              ),
            ),
            // const Text(
            //   'Welcome Back!',
            //   style: TextStyle(fontWeight: FontWeight.w600),
            // ),
            const Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProfilePage();
                }));
              },
              child: BlocBuilder<UserBloc, UserState>(
                builder: (context, state) {
                  if (state is UserLoaded) {
                    return CircleAvatar(
                      radius: 25,
                      backgroundImage:
                          NetworkImage(state.profileModel.image ?? ""),
                    );
                  } else {
                    return CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          "data:image/jpeg;base64,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"),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Container(
              width: 500,
              height: 70,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                      color: Color(0xffb9b6b6),
                      blurStyle: BlurStyle.outer,
                      blurRadius: 5)
                ],
              ),
              child: Row(children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 7),
                    child: TextField(
                      onChanged: (values) {
                        BlocProvider.of<GetArticleBloc>(context).add(
                            GetSearchedArticleEvent(
                                searchParam: values, filterParam: ""));
                      },
                      decoration: const InputDecoration(
                        hintText: "Search and article . . .",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: const Center(
                      child: Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  )),
                )
              ]),
            ),
            const SizedBox(height: 15),
            Center(
              child: SizedBox(
                height: 35,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: tagsTitle.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              currentCat = index;
                            });

                            BlocProvider.of<GetArticleBloc>(context).add(
                                GetSearchedArticleEvent(
                                    searchParam: "",
                                    filterParam: tagsTitle[index]));
                          },
                          child: customButton(
                              tagsTitleShow[index], index == currentCat));
                    }),
              ),
            ),
            const SizedBox(height: 20),
            BlocBuilder<GetArticleBloc, GetArticleState>(
              builder: (context, state) {
                if (state is OnArticleLoaded) {
                  // return _body(tabsTitle, state.data, navigate);
                  return Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: state.data.length,
                        itemBuilder: (context, index) {
                          return blogTitle(state.data[index], navigate);
                        },
                      ),
                    ),
                  );
                } else {
                  return Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return BlogTileSkeleton();
                        },
                      ),
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return AddTaskBody();
          }));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

Widget customButton(String text, bool active) {
  return Container(
    width: 80,
    margin: const EdgeInsets.symmetric(horizontal: 5),
    decoration: BoxDecoration(
      color: active ? Colors.blue : Colors.white,
      border: Border.all(color: Colors.blue, width: 2),
      borderRadius: BorderRadius.circular(20),
    ),
    child: Center(
      child: Text(
        text,
        style: TextStyle(color: active ? Colors.white : Colors.blue),
      ),
    ),
  );
}

String formatDate(String date) {
  try {
    DateTime inputDate = DateTime.parse(date);
    String formatedDate = DateFormat('MMM-dd-yyyy').format(inputDate);
    return formatedDate;
  } catch (e) {
    return "";
  }
}

Widget blogTitle(Data data, navigate) {
  return GestureDetector(
    onTap: () {
      navigate(data);
    },
    child: Container(
      height: 200,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // image will go here
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.network(data.image!),
              ),
            ),

            // Title of the blog tile
            const SizedBox(width: 10),
            SizedBox(
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 100,
                    // Blog Title
                    child: Text(
                        data.title!.length < 11
                            ? data.title!.toUpperCase()
                            : data.title!.substring(1, 10) +
                                "...".toUpperCase(),
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600)),
                  ),
                  SizedBox(
                    width: 100,
                    height: 30,
                    child: Text(data.subTitle!.length < 7
                        ? data.subTitle!.toUpperCase()
                        : data.subTitle!.substring(1, 7) + "...".toUpperCase()),
                  ),
                  const SizedBox(height: 6),
                  SizedBox(
                    height: 30,
                    width: 160,
                    child: Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: data.tags!.length,
                          itemBuilder: (ctx, index) {
                            return Container(
                              width: 80,
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                border:
                                    Border.all(color: Colors.blue, width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text(
                                data.tags![index] ?? " ",
                                style: const TextStyle(color: Colors.white),
                              )),
                            );
                          }),
                    ),
                  ),
                  // const SizedBox(height: 20),
                  Text(
                    "by ${data.user!.fullName ?? ""}",
                    style: const TextStyle(fontSize: 14),
                  ),
                ],
              ),
            )
          ],
        ),
        Row(
          children: [
            const Spacer(),
            SizedBox(height: 20, child: Text(formatDate(data.createdAt ?? "")))
          ],
        )
      ]),
    ),
  );
}
