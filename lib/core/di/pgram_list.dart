import 'package:flutter/material.dart';
import 'package:yoga/domain/programms/model/programms.dart';

class Program {
  final String? image;
  final String? description;
  final String? id;
  final String? mainTitle;
  final String? subTitle;
  final LinearGradient? linearGradient;
  final Color? bgColor;
  final Color? txtColor;

  const Program({
    this.description,
    this.image,
    this.id,
    this.mainTitle,
    this.subTitle,
    this.linearGradient,
    this.bgColor,
    this.txtColor,
  });
}

List<Program> p = const [
  Program(
    bgColor: Color(0xff06021D),
    txtColor: Colors.white,
    linearGradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff06021D),
        Color(0xff06021D),
        Color(0xff06021D),
        Color(0xff736A99),
        Color(0xff736A99),
      ],
    ),
    image: "asset/image/13-min.png",
    description:
        "Self-defensive technique is a necessity in every human life, though you do not want to hurt anyone, in some situations you need to master the art of defense to protect your own or your dear ones' life and this art form is the master of all defensive techniques, learned from nature by observing the defensive techniques adopted by animals, birds, snakes etc. The physical defensive mastery is to follow the Ist limb in Astanga Yoga 'Yama by Maha Rishi Sage Patanjali in His Yoga Sutras. When practiced can develop muscle memories and this in turn can be the self-defense strategy the body adopts on its own by the amazing reflexes at times in danger..",
    // mainTitle: "Art of Self Defense",
    // subTitle: "",
    id: "karali",
  ),
  Program(
    bgColor: Color(0xffE6CBAE),
    txtColor: Colors.black,
    linearGradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xffE6CBAE),
        Color(0xffE6CBAE),
        Color(0xffE6CBAE),
        Color(0xffE6CBAE),
        Color(0xffA57338),
      ],
    ),
    image: "asset/image/12-min.png",
    description:
        'Too much of heat or too much of cold destroys the body. "Ha" means cold "tha" means heat, balancing of these temperatures in our body upkeeps the body or the self. The balance between heat and cold by postural stretching [asanas] the body and by the breathing adopted during such practices forms the base of Hatha Yoga.Any human being from the age of six years can start to balance these health giving techniques to upkeep a strong physical mental and emotional wellness at all times.This is the beauty of this ancient knowledge for every living human being to experience it for themselves. It is not a blind belief but an experiential wisdom for any individual who cares for their well-being to adopt and adapt a healthy lifestyle at all times. It is a universal knowledge of wellness for our global community.',
    // mainTitle: "Art of Self Defense",
    // subTitle: "",
    id: "hathayoga ladies",
  ),
  Program(
    bgColor: Color(0xff7D8379),
    txtColor: Colors.black,
    linearGradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff909692),
        Color(0xff909692),
        Color(0xff909692),
        Color(0xff909692),
        Color(0xff7D8379),
      ],
    ),
    image: "asset/image/14-min.png",
    description:
        'Pregnancy is a Joyful time for any expecting Mother. However, as Pregnancy can be physically & mentally straining, prenatal yoga is very beneficial Pregnancy is an exciting time that often causes the mind to over think and be stressed. With yoga, women can escape the anxieties & focus on themselves in a calm and relaxing environment. It is important to practice relaxation breathing exercises prior to labour. This will allow for an easier childbirth because the body will be trained to remain calm. As the body changes, aches and pains are inevitable. With regular prenatal yoga, stretches and poses can soothe, sore and tender muscles. Strength is needed at every stage of pregnancy, especially as weight is gained. Building strength will increase mobility balance and circulation. Strengthens & Conditions the vital muscles groups to ease pregnancy, labour & recovery. Prevents complication during pregnancy such as diabetes & high blood pressure. To alleviate pregnancy discomforts and prepare for labour.',
    // mainTitle: "Art of Self Defense",
    // subTitle: "",
    id: "pre natal yoga",
  ),
  Program(
    bgColor: Color(0xff927297),
    txtColor: Colors.white,
    linearGradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff927297),
        Color(0xff927297),
        Color(0xff927297),
        Color(0xff4E3054),
        Color(0xff4E3054),
      ],
    ),
    image: "asset/image/15-min.png",
    description:
        'POWER is a power packed session for your young ones to blossom to a dynamic personality.when the mind is without fear and the true knowledge of wellbeing is initiated into young mindS it gathers mommentum in life to succeed in life from adversities. physical ,mental and emotional training is imbibed in the little minds and this is effective for the all round growth in a child for studies,concentration,physical training to enhance stamina building ETC .This traning is called as "Realize your super powers" in short as POWER  These classes are availiable from the age of 6 years to the teens.',
    // mainTitle: "Art of Self Defense",
    // subTitle: "",
    id: "power",
  ),
  Program(
    bgColor: Color(0xffB9A896),
    txtColor: Colors.black,
    linearGradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xffD5C9BB),
        Color(0xffD5C9BB),
        Color(0xffD5C9BB),
        Color(0xffD5C9BB),
        Color(0xffB9A896),
      ],
    ),
    image: "asset/image/16-min.png",
    description:
        'An unique program to blossom your life to its fullest potential. Brings in great deal of physical quietness, emotional peace and mental tranquility. Very good practice to clean away from all phobias, trauma and neurosis and enlighten lives to its fullest. Transform to everything you need to become by just lying down in this power packed session to realize your dreams effectively.',
    // mainTitle: "Art of Self Defense",
    // subTitle: "",
    id: "yoga nidgra",
  ),
  Program(
    bgColor: Color(0xff879001),
    txtColor: Colors.white,
    linearGradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff858D04),
        Color(0xff858D04),
        Color(0xff858D04),
        Color(0xff879001),
        Color(0xff879001),
      ],
    ),
    image: "asset/image/17-min.png",
    description:
        'A master program at Sanjeev Krishna yoga Conducted by Sanjeev Krishna himself. Awaken the inner University within and Know the world through your divine eyesA program that opens up  the highest potential , to realize and succeed.DURATION Special 10  day wellness course 2 hours each day followed by healthy juices and treats .CONTENT Health rejuvenation combined with energising breathing techniques followed by meditation. A Mind setter to succeed and celebrate  every moment in life.Detoxify and be reborn to a new you.  Experience a world of difference in relationships, concepts of food and Wellbeing  at all levels. An exciting ten days for a life time knowledge and wisdom. Thousands across the globe has benefited.',
    // mainTitle: "Art of Self Defense",
    // subTitle: "",
    id: "ritham of life",
  ),
  Program(
    bgColor: Color(0xff7D83BD),
    txtColor: Colors.black,
    linearGradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff7D83BD),
        Color(0xff7D83BD),
        Color(0xff7E87C2),
        Color(0xff7E87C2),
        Color(0xff7E87C2),
      ],
    ),
    image: "asset/image/18-min.png",
    description:
        'This is a special program of Sanjeev Krishna Yoga centre for beginners on the path of hatha yoga practices and also for the elderly for all types of aches and pains to be eliminated. any person of any age can start these practices and benefit immensely by regularity and dedication to oneself. contact the centre for more information. Improves overall health and a complete detox for the body and mind- 5 days programPhysical health issues like Joint aches and pains, spinal and back issues, obesity, arthritis, Mind-related issues like depression, stress, Blood pressure, Diabetes, cholesterol, asthma etc. Food and nutrition for healthy living',
    // mainTitle: "Art of Self Defense",
    // subTitle: "",
    id: "sky",
  ),
  Program(
    bgColor: Color(0xffBBC1CD),
    txtColor: Colors.black,
    linearGradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xffBBC1CD),
        Color(0xffBBC1CD),
        Color(0xffBBC1CD),
        Color(0xffBBC1CD),
        Color(0xff4A556B),
      ],
    ),
    image: "asset/image/19-min.png",
    description:
        'gnite your Divine light from within to   Enlighten the light of knowledge and  wisdom around. Certified by  Council for Yoga Accredition Council An  ISO Certified Yoga Centre  200 hours Teacher Training[ Beginner level] Course will guide you through a transformational journey into the yogic science led by Guruji Sanjeev Krishna as well as other guest instructors. You will learn Yoga sutras, series of Asanas, Basic Knowledge on Anatomy & Physiology of human body, Breathing Techniques, knowledge on Shatkarmas and Pancha koshas. A deeper understanding on the subject will enhance the teacher to understand life and also be an instrument to pass on the knowledge. This program is for those dedicated to grow in this knowledge and wisdom and to bring in good will, good health, peace and happiness to themselves and the world around them',
    // mainTitle: "Art of Self Defense",
    // subTitle: "",
    id: "yoga teacher",
  ),
  Program(
    bgColor: Color(0xFF9F5C7B),
    txtColor: Colors.white,
    linearGradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFF9F5C7B),
        Color(0xFF9F5C7B),
        Color(0xFF9F5C7B),
        Color(0xFF9F5C7B),
        Color(0xFF9F5C7B),
      ],
    ),
    image: "asset/image/20-min.png",
    description:
        'Personal  sessions Through the yogic wisdom ,guidance is given in relation to any health requirements Personal care is initiated by  prior understanding on the health conditions with the ',
    mainTitle: "Personal Session (Yoga)",
    // subTitle: "",
    id: "PERSONAL SESSION YOGAA",
  ),

















   Program(
    bgColor: Color(0xFF734A4E),
    txtColor: Colors.white,
    linearGradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFF734A4E),
        Color(0xFF734A4E),
        Color(0xFF734A4E),
        Color(0xFF734A4E),
        Color(0xFF734A4E),
      ],
    ),
    image: "asset/image/21-min.png",
    description:
        'These sessions are specially dedicated for those undergoing any health Issues and to benefit lives from imbalances on a personal level. It focuses on the path of Yoga as a healing journey that brings balance to the body and mind through experiential understanding.',
    // mainTitle: "Personal Session (Yoga)",
    // subTitle: "",
    id: "therapeutic",
  ),












  Program(
    bgColor: Color(0xFF8D8A85),
    txtColor: Colors.white,
    linearGradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
      
        Color(0xFF8D8A85),
        Color(0xFF8D8A85),
      ],
    ),
    image: "asset/image/22-min.png",
    description:'Subject: Awareness to maintain a healthy body and mind for developing high efficiency in all facets of life. \nTime : One hour and Thirty minutes \nSchedule and the subject to be introduced: \nBasics of health and personal management. \nProgram: \nSubject covered on the following topics by Guruji Sanjeev. \nIntroduction on the subject to maintain a healthy and harmonious body and mind. How to have a work - life balance. \nPractices on certain energizing techniques. \nPractice and learning session to enjoy a healthy spirit and body stretching and these yoga postural practices take away the stiffness and stagnancy of the physical body that accumulates due to present stress and long hours of physical strain. \nInitiating meditation session. \nDiscussion on healthy eating and nutrition \nInteractive Q & A session. \nConcluding session and practice module',
    // mainTitle: "Personal Session (Yoga)",
    // subTitle: "",
    id: "sky",
  ),



   Program(
    bgColor: Color(0xFFDADBD6),
    txtColor: Colors.black,
    linearGradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFDADBD6),
        Color(0xFFDADBD6),
   
      ],
    ),
    image: "asset/image/23-min.png",
    description: 'SKY Corporate Retreats \n1.An introduction with a combination of basics on all subjects.  /n2.Practices of yogic discipline which includes physical body toning. \n3.Introducing to energizing and purifying techniques with the art of breathing practices. \n4.Formulating and enhancing personal management and communication skills. \n 5.Team building and introducing the participants to healthy lifestyle module. \n 6.Distribution of manuals and CDs for daily practice. \n7.Practice modules for consistency and enhancing physical and mental well being by enhanced knowledge on life principles',




    // mainTitle: "Personal Session (Yoga)",
    // subTitle: "",
    id: "sky",
  ),



   Program(
    bgColor: Color(0xFFDADBD6),
    txtColor: Colors.black,
    linearGradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFDADBD6),
        Color(0xFFDADBD6),
   
      ],
    ),
    image: "asset/image/24-min.png",
    description: 'SKY Corporate Rhythm We make them individually strong but also instill in them the power of teamwork and the vision of the visionary behind any corporate industry to create a beautiful world of tomorrow with the healthy mind and a healthy body. \nCourse contents \n1. An introduction with a combination of basics on all subjects. \n2. Practices of yogic discipline which include physical body toning. \n3. Introducing energizing and purifying techniques with the art of breathing practices. \n4. Formulating and enhancing personal management and communication skills. \n5. Team building and introducing the participants to the healthy lifestyle module. \n6. Distribution of manuals and CDs for daily practice. \n7. Practice modules for consistency and enhancing physical and mental well-being by enhanced knowledge of life principles',
    // mainTitle: "Personal Session (Yoga)",
    // subTitle: "",
    id: "PERSONAL SESSION YOGAA",
  ),


   Program(
    bgColor: Color(0xFFCCCCCC),
    txtColor: Colors.black,
    linearGradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFCCCCCC),
        Color(0xFFCCCCCC),

       
      ],
    ),
    image: "asset/image/25-min.png",
    description: 'Meditation Meditation is an art to master the self with various techniques to sublimate any types of disturbances and from any distractions of the mind, Classes periodically conducted, register with the centre to know more about the program schedules.  \nPranayama \nSpecial classes to master the art of energising techniques and experience life with high energy levels throughout life. \nVarious breathing practices conducted to suit one and all. Register with the centre to know more about the program schedules.',

    // mainTitle: "Personal Session (Yoga)",
    // subTitle: "",
    id: "PERSONAL SESSION YOGAA",
  ),
];










Programs programList = Programs(
  status: 200,
  data: [
    Datum(
      image: "asset/image/12-min.png",
      description:
          'Too much of heat or too much of cold destroys the body. "Ha" means cold "tha" means heat, balancing of these temperatures in our body upkeeps the body or the self. The balance between heat and cold by postural stretching [asanas] the body and by the breathing adopted during such practices forms the base of Hatha Yoga.Any human being from the age of six years can start to balance these health giving techniques to upkeep a strong physical mental and emotional wellness at all times.This is the beauty of this ancient knowledge for every living human being to experience it for themselves. It is not a blind belief but an experiential wisdom for any individual who cares for their well-being to adopt and adapt a healthy lifestyle at all times. It is a universal knowledge of wellness for our global community.',
      id: 1,
      mainTitle: "dsdsds",
      subTitle: "ddadadad",
    ),
    Datum(
      image: "asset/image/13-min.png",
      description: "",
      id: 1,
      mainTitle: "",
      subTitle: "",
    ),
    Datum(
      image: "asset/image/14-min.png",
      description: "",
      id: 1,
      mainTitle: "",
      subTitle: "",
    ),
    Datum(
      image: "asset/image/15-min.png",
      description: "",
      id: 1,
      mainTitle: "",
      subTitle: "",
    ),
    Datum(
      image: "asset/image/17-min.png",
      description: "",
      id: 1,
      mainTitle: "",
      subTitle: "",
    ),
    Datum(
      image: "asset/image/18-min.png",
      description: "",
      id: 1,
      mainTitle: "",
      subTitle: "",
    ),
    Datum(
      image: "asset/image/19-min.png",
      description: "",
      id: 1,
      mainTitle: "",
      subTitle: "",
    ),
    Datum(
      image: "asset/image/20-min.png",
      description: "",
      id: 1,
      mainTitle: "",
      subTitle: "",
    ),
    Datum(
      image: "asset/image/24-min.png",
      description: "",
      id: 1,
      mainTitle: "",
      subTitle: "",
    ),
    Datum(
      image: "asset/image/25-min.png",
      description: "",
      id: 1,
      mainTitle: "",
      subTitle: "",
    ),
    Datum(
      image: "asset/image/12-min.png",
      description: "",
      id: 1,
      mainTitle: "",
      subTitle: "",
    ),
    Datum(
      image: "asset/image/12-min.png",
      description: "",
      id: 1,
      mainTitle: "",
      subTitle: "",
    ),
    Datum(
      image: "asset/image/12-min.png",
      description: "",
      id: 1,
      mainTitle: "",
      subTitle: "",
    ),
    Datum(
      image: "asset/image/12-min.png",
      description: "",
      id: 1,
      mainTitle: "",
      subTitle: "",
    ),
  ],
);
