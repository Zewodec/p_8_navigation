import 'package:flutter/material.dart';

import 'VideoPlayer.dart';

class VideoPlayerPage extends StatefulWidget {
  const VideoPlayerPage({Key? key}) : super(key: key);

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext context) => SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Column(
                    children: [
                      const VideoPlayer(
                          videoUrl:
                              "https://rr1---sn-3tp8nu5g-afvr.googlevideo.com/videoplayback?expire=1681677703&ei=Jwk8ZJP_M46gx_APjpCuiAo&ip=176.125.229.22&id=o-ADVBDdl_7ckRohFhPMMjzq8jqJiL8qCj7vXAuvGqK5_M&itag=18&source=youtube&requiressl=yes&spc=99c5CZXPB_JjnHnfImVBA0s_83kuwgBgWMf1X73Rqw&vprv=1&mime=video%2Fmp4&ns=DXfp7tScwBZGB7D6J-2lppkM&cnr=14&ratebypass=yes&dur=212.091&lmt=1674233743350828&fexp=24007246&c=WEB&txp=4530434&n=INc99koICbkjCA&sparams=expire%2Cei%2Cip%2Cid%2Citag%2Csource%2Crequiressl%2Cspc%2Cvprv%2Cmime%2Cns%2Ccnr%2Cratebypass%2Cdur%2Clmt&sig=AOq0QJ8wRAIgD7TO2G2pq-9rWh0e7aIWQfkCV4ezd8AH4CybsXSYz7QCIBEzV8X-pMGQt7-a45K8S14AmSlwZt5rp0TgMt57Cdni&redirect_counter=1&rm=sn-5hnez77s&req_id=d43d88afe0e6a3ee&cms_redirect=yes&cmsv=e&ipbypass=yes&mh=7c&mip=188.163.121.21&mm=31&mn=sn-3tp8nu5g-afvr&ms=au&mt=1681655831&mv=m&mvi=1&pl=20&lsparams=ipbypass,mh,mip,mm,mn,ms,mv,mvi,pl&lsig=AG3C_xAwRAIgTuME4m-hZmIqwV_W60Tw7FGtVzWRzayPS4B9iO40TJECIH-KDjG4TY3FJWB2r8m5-uRveDeuzNSzaOLxKh6l98ec"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/image');
                        },
                        child: const Text("Show image"),
                      ),
                    ],
                  ),
                );
            break;
          case '/image':
            builder = (BuildContext context) => Image.network(
                "https://st2.depositphotos.com/3837271/8800/i/600/depositphotos_88000752-stock-photo-never-give-up-written-on.jpg");
            break;
          default:
            throw Exception('Invalid route: ${settings.name}');
        }
        return MaterialPageRoute(builder: builder, settings: settings);
      },
    );
  }
}
