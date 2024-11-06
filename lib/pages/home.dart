import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String description =
        'Description duis aute irure dolor in reprehenderit in voluptate velit.';
    String truncatedDescription = description.length > 59
        ? '${description.substring(0, 59)}...'
        : description;
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: const Color.fromRGBO(254, 247, 255, 1),
        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/ic_profile.png',
            width: 24,
            height: 24,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/ic_notification.png',
              width: 24,
              height: 24,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/ic_settings.png',
              width: 24,
              height: 24,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: const Color.fromRGBO(254, 247, 255, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 16, bottom: 15),
                    child: Text('Guest',
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Roboto')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 16, bottom: 10),
                    child: Row(
                      children: [
                        const Text('Widget Grid View',
                            style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                                fontFamily: 'Roboto')),
                        IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.arrow_forward_sharp),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 195,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(left: 8, bottom: 8),
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(236, 230, 240, 1),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 116,
                                height: 119,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/img_card.png'),
                                        fit: BoxFit.cover)),
                              ),
                              const SizedBox(height: 8),
                              const Text('Artist',
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'Roboto')),
                              const Text('Song',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      fontFamily: 'Roboto')),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 6),
            Expanded(
              child: Container(
                width: double.infinity,
                color: const Color.fromRGBO(254, 247, 255, 1),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16, bottom: 10),
                      child: Row(
                        children: [
                          const Text('Widget List View',
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'Roboto')),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.arrow_forward_sharp),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Container(
                            margin: const EdgeInsets.only(bottom: 8),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  width: 120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/img_card.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text('Headline',
                                          style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Roboto')),
                                      const SizedBox(height: 4),
                                      Text(truncatedDescription,
                                          style: const TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                              fontFamily: 'Roboto')),
                                      const SizedBox(height: 12),
                                      Row(
                                        children: [
                                          GestureDetector(
                                              onTap: () {},
                                              child: const Icon(
                                                  Icons.add_circle_outline)),
                                          const SizedBox(width: 6),
                                          const Text('Today',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Roboto')),
                                          const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 4),
                                            child: Text('•',
                                                style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    fontFamily: 'Roboto')),
                                          ),
                                          const Text('23 min',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w400,
                                                  fontFamily: 'Roboto')),
                                          const Spacer(),
                                          const Icon(Icons.play_arrow)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
