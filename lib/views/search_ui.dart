import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchUI extends StatelessWidget {
  const SearchUI({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      "assets/images/img1.jpg",
      "assets/images/img2.jpg",
      "assets/images/img3.jpg",
      "assets/images/img4.jpg",
      "assets/images/img5.jpg",
      "assets/images/img6.jpg",
      "assets/images/img7.jpg",
      "assets/images/img8.jpg",
      "assets/images/img9.jpg",
      "assets/images/img10.jpg",
      "assets/images/img11.jpg",
      "assets/images/img12.png",
      "assets/images/img13.jpg",
      "assets/images/img14.jpg",
      "assets/images/img15.jpg",
      "assets/images/img16.jpg",
      "assets/images/img17.jpg",
      "assets/images/img18.png"
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              color: Colors.grey[300],
              height: 1.0,
            ),
            preferredSize: const Size.fromHeight(2.0)),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          'SEARCH',
          style: GoogleFonts.kanit(
            fontSize: MediaQuery.of(context).size.width * 0.05,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.88,
                child: Row(
                  children: [
                    SizedBox(
                      child: Text(
                        'SEARCH',
                        style: GoogleFonts.kanit(
                          fontSize: MediaQuery.of(context).size.width * 0.04,
                          textStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.03,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.92,
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: GoogleFonts.kanit(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 3,
                        color: Colors.black,
                      ),
                    ),
                    hintStyle: GoogleFonts.kanit(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.07,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.92,
                child: Row(
                  children: [
                    SizedBox(
                      child: Text(
                        'ALL RESULTS',
                        style: GoogleFonts.kanit(
                          fontSize: MediaQuery.of(context).size.width * 0.035,
                          textStyle: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.05,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.68,
                width: MediaQuery.of(context).size.width * 0.92,
                child: GridView.builder(
                  padding: EdgeInsets.all(0.0),
                  physics: ScrollPhysics(),
                  itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 12.0,
                    mainAxisSpacing: 12.0,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    return Image.asset(images[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
