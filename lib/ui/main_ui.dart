import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  final PageController controller = PageController(initialPage: 0);
  final String img_1 = "https://media-cdn.tripadvisor.com/media/photo-c/2560x500/10/e2/f8/43/longest-sea-beach-in.jpg";
  final String img_2 = "https://www.travelmate.com.bd/wp-content/uploads/2019/07/Kaptai-Lake-2.jpg";
  final String img_3 = "https://avijatrik.org/wp-content/uploads/2019/06/cover-3-870x555.jpg";
  final String img_4 = "https://avijatrik.org/wp-content/uploads/2019/06/28052066210_75de6a9fd5_o-870x555.jpg";
  final String description_cox = "Cox’s Bazar is a town on the southeast coast of Bangladesh. "
      "It’s known for its very long, sandy beachfront, stretching from Sea Beach in "
      "the north to Kolatoli Beach in the south. Aggameda Khyang monastery is home to bronze statues "
      "and centuries-old Buddhist manuscripts. South of town, the tropical rainforest of Himchari "
      "National Park has waterfalls and many birds. North, sea turtles breed on nearby Sonadia Island.";
  final String description_kaptai = "Kaptai Lake is the largest lake in Bangladesh. "
      "It is located in the Kaptai Upazila under Rangamati District of Chittagong Division."
      " The lake was created as a result of building the Kaptai Dam on the Karnaphuli River,"
      " as part of the Karnaphuli Hydro-electric project.";
  final String description_st_martin = "St. Martin's Island is a small island in the northeastern part of the Bay of Bengal, "
      "about 9 km south of the tip of the Cox's Bazar-Teknaf peninsula, and forming the southernmost part of Bangladesh. "
      "There is a small adjoining island that is separated at high tide, called Chera Dwip.";
  final String description_sajek = "The name of Sajek Valley came from the Sajek River that originates from Karnafuli river. "
      "The Sajek river works as a border between Bangladesh and India.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(

      ),
    );
  }
  Container design_each_page({img, title, pageNumber, description}) {
    return Container(
      decoration: BoxDecoration(
        //color: Colors.blue,
        image: DecorationImage(
          image: NetworkImage(img),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.2),
              ],
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.0,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(pageNumber.toString(),
                    style: TextStyle(fontSize: 32.0),
                  ),
                  Text("/4",
                    style: TextStyle(fontSize: 16.0),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 32.0,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(description,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
