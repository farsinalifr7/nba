import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    List colors = [
      [
        Colors.deepOrangeAccent,
        //const Color.fromARGB(255, 206, 40, 140)
        Colors.pink
      ],
      [Colors.deepPurple, Colors.purple],
      [
        Colors.blue,
        const Color.fromARGB(255, 74, 30, 233),
      ],
      [Colors.green, Colors.teal],
      [Colors.yellow, Colors.amber],
      [Colors.deepOrangeAccent, const Color.fromARGB(255, 206, 40, 140)],
      [Colors.indigo, Colors.teal],
      [Colors.red, Colors.purple],
      [
        Colors.blue,
        const Color.fromARGB(255, 74, 30, 233),
      ],
      [const Color.fromARGB(255, 255, 253, 111), Colors.amber]
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'NBA',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Teams',
                        style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontSize: 26,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                  Icon(
                    Icons.person_2_outlined,
                    color: Colors.white,
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 48,
                // width: 350,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white.withOpacity(0.7),
                    width: 1,
                  ),
                  //color: Colors.grey[700],
                  borderRadius: BorderRadius.circular(18),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Search...',
                    hintStyle: TextStyle(
                      color: Colors.white.withOpacity(0.7),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),

              SizedBox(
                height: 600,
                width: 400,
                child: Expanded(
                  child: ListView.builder(
                      itemCount: 100,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          child: Container(
                            height: 220,
                            width: 500,
                            decoration: BoxDecoration(
                              //color: Colors.grey[700],
                              gradient: LinearGradient(
                                  begin: Alignment.topRight,
                                  colors: index > 9
                                      ? [
                                          colors[index % 10][0],
                                          colors[index % 10][1]
                                        ]
                                      : [colors[index][0], colors[index][1]]),
                              borderRadius: BorderRadius.circular(45),
                            ),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 20,
                                ),
                                const Icon(
                                  Icons.sports_basketball,
                                  size: 60,
                                  color: Colors.white,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text(
                                  'NBA',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 23,
                                      fontWeight: FontWeight.w600),
                                ),
                                const Text(
                                  "Team Name",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w400),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 35,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    border: Border.all(
                                      color: Colors.white.withOpacity(0.3),
                                      width: 2,
                                    ),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Team Name',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                ),
              )

              // const SizedBox(
              //   height: 20,
              // ),
              // Container(
              //   height: 220,
              //   width: 500,
              //   decoration: BoxDecoration(
              //     //color: Colors.grey[700],
              //     gradient:
              //         const LinearGradient(begin: Alignment.topRight, colors: [
              //       Colors.blue,
              //       Color.fromARGB(255, 74, 30, 233),
              //     ]),
              //     borderRadius: BorderRadius.circular(35),
              //   ),
              //   child: Column(
              //     children: [
              //       const SizedBox(
              //         height: 20,
              //       ),
              //       const Icon(
              //         Icons.sports_basketball,
              //         size: 60,
              //         color: Colors.white,
              //       ),
              //       const SizedBox(
              //         height: 10,
              //       ),
              //       const Text(
              //         'NBA',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 23,
              //             fontWeight: FontWeight.w600),
              //       ),
              //       const Text(
              //         "Team Name",
              //         style: TextStyle(
              //             color: Colors.grey,
              //             fontSize: 18,
              //             fontWeight: FontWeight.w400),
              //       ),
              //       const SizedBox(
              //         height: 10,
              //       ),
              //       Container(
              //         height: 35,
              //         width: 300,
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(20),
              //           border: Border.all(
              //             color: Colors.white.withOpacity(0.3),
              //             width: 2,
              //           ),
              //         ),
              //         child: const Center(
              //           child: Text(
              //             'Team Name',
              //             style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 14,
              //                 fontWeight: FontWeight.w500),
              //           ),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
              // const SizedBox(
              //   height: 20,
              // ),
              // Container(
              //   height: 220,
              //   width: 500,
              //   decoration: BoxDecoration(
              //     //color: Colors.grey[700],
              //     gradient:
              //         const LinearGradient(begin: Alignment.topRight, colors: [
              //       Colors.deepPurple,
              //       Colors.purple,
              //     ]),
              //     borderRadius: BorderRadius.circular(35),
              //   ),
              //   child: Column(
              //     children: [
              //       const SizedBox(
              //         height: 20,
              //       ),
              //       const Icon(
              //         Icons.sports_basketball,
              //         size: 60,
              //         color: Colors.white,
              //       ),
              //       const SizedBox(
              //         height: 10,
              //       ),
              //       const Text(
              //         'NBA',
              //         style: TextStyle(
              //             color: Colors.white,
              //             fontSize: 23,
              //             fontWeight: FontWeight.w600),
              //       ),
              //       const Text(
              //         "Team Name",
              //         style: TextStyle(
              //             color: Colors.grey,
              //             fontSize: 18,
              //             fontWeight: FontWeight.w400),
              //       ),
              //       const SizedBox(
              //         height: 10,
              //       ),
              //       Container(
              //         height: 35,
              //         width: 300,
              //         decoration: BoxDecoration(
              //           borderRadius: BorderRadius.circular(20),
              //           border: Border.all(
              //             color: Colors.white.withOpacity(0.3),
              //             width: 2,
              //           ),
              //         ),
              //         child: const Center(
              //           child: Text(
              //             'Team Name',
              //             style: TextStyle(
              //                 color: Colors.white,
              //                 fontSize: 14,
              //                 fontWeight: FontWeight.w500),
              //           ),
              //         ),
              //       )
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
