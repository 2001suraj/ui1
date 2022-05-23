
  class SelectedBook12{
    // ignore: non_constant_identifier_names
      
  final List<String> image = [
    'assets/images/book1.jpg',
    'assets/images/book2.jpg',
    'assets/images/book3.jpg',
    'assets/images/book4.jpg',
    'assets/images/book5.jpg',
    'assets/images/book6.jpg',
    'assets/images/book7.jpg',
    'assets/images/book8.jpg',
    'assets/images/book9.jpg',
    'assets/images/book10.jpg',
  ];
  final List<String> title = [
    '''Mathematics in Computing
An Accessible Guide to Historical, Foundational and Application Contexts
''',
    '''Cambridge IGCSE Computer Science by Dave Watson''',
    '''Computer Science Principles''',
  ];
  final List<String> author = [
    'Gerard O’Regan',
    'Dave Watson; Helen Williams',
    'Mr. Kevin P Hare, Pindar Van Arman'
  ];
   final List<String> desc = [
    '''This illuminating textbook provides a concise review of the core concepts in mathematics essential to computer scientists. 
    Emphasis is placed on the practical computing applications enabled by seemingly abstract mathematical ideas, presented within their h
    istorical context. The text spans a broad selection of key topics, ranging from the use of finite field theory to correct code and the
     role of number theory in cryptography, to the value of graph theory when modelling networks and the importance of formal methods for 
     safety critical systems.
This fully updated new edition has been expanded with a more comprehensive treatment of algorithms, logic, automata theory, model checking, software reliability and dependability, algebra, sequences and series, and mathematical induction.Topics and features: includes numerous pedagogical features, such as chapter-opening key topics, chapter introductions and summaries, review questions, and a glossary; describes the historical contributions of such prominent figures as Leibniz, Babbage, Boole, and von Neumann; introduces the fundamental mathematical concepts of sets, relations and functions, along with the basics of number theory, algebra, algorithms, and matrices; explores arithmetic and geometric sequences and series, mathematical induction and recursion, graph theory, computability and decidability, and automata theory; reviews the core issues of coding theory, language theory, software engineering, and software reliability, as well as formal methods and model checking; covers key topics on logic, from ancient Greek contributions to modern applications in AI, and discusses the nature of mathematical proof and theorem proving; presents a short introduction to probability and statistics, complex numbers and quaternions, and calculus.This engaging and easy-to-understand book will appeal to students of computer science wishing for an overview of the mathematics used in computing, and to mathematicians curious about how their subject is applied in the field of computer science. The book will also capture the interest of the motivated general reader.''',
    '''Endorsed by Cambridge Assessment International Education.
Develop computational thinking and programming skills with complete coverage of the latest syllabus from experienced examiners and teachers.
- Follows the order of the syllabus exactly, ensuring complete coverage
- Introduces students to self-learning exercises, helping them learn how to use their knowledge in new scenarios
Accompanying animation files of the key concepts are available to download for free online. See the Quick Links to the left to access.

This book covers the IGCSE (0478), O Level (2210) and US IGCSE entry (0473) syllabuses, which are for first examination 2015. It may also be a useful reference for students taking the new Computer Science AS level course (9608''',
    '''NEW for 2020 with updated curriculum and College Board updates. Over 30% new content including more on Boolean logic and gates, databases, compression, info security, the impacts of computing, and more! ***Computer science is the world's fastest growing field of study, and this growth is showing no signs of slowing down. As a new field, computer science can seem intimidating, but it should not be scary to learn or difficult to understand.
If you have ever turned on a phone or surfed the Internet then you have used a computer and should have a basic understanding of what happens when you click the mouse or touch the screen—and how fast it happens! Computer Science Principles introduces the creative side of computing. Once you've made your way through this book, you'll be editing photos, designing websites, coding JavaScript, and getting organized with spreadsheets—and along the way you'll learn the foundational concepts of computer science. How do computers convert information into ones and zeros and send it thousands of miles in a blink of the eye? What is an IP address? What do TCP/IP, DNS, HTML, and CSS stand for? How can a hard drive store large movies and thousands of songs? How can secrets be sent in plain sight? These questions—and more—are answered in Computer Science Principles.Units include:1 - Hardware, Software, Number Systems, and Boolean Expressions2 – Pixels, Images, and Adobe Photoshop3 - Compressing Data4 – Storing Data: Spreadsheets and Databases5 - Protecting Data: Heuristics, Security, and Encryption6 - The Internet7 – Web Design: HTML and CSS8 - Programming: JavaScript9 – Impact of Computing '''
  ];

}

   
class PopularBookModel {
  String title, author, price, image, description;
  int color;

  PopularBookModel(this.title, this.author, this.price, this.image, this.color,
      this.description);
}

// List<PopularBookModel> populars = popularBookData
//     .map((item) => PopularBookModel(item!['title'], item!['author'],
//         item!['price'], item!['image'], item['color'], item['description']))
//     .toList();

var popularBookData = [
  {
    "title": "You’re A Miracle",
    "author": "Mike McHargue",
    "price": "20",
    "image": "assets/images/img_popular_book1.png",
    "color": 0xFFFFD3B6,
    "description":
        "“Holding brain science in one hand and rich emotional presence in the other, this book feels timely and necessary.”—Shauna Niequist, New York Times bestselling author of Present Over Perfect\n\nWhy is there such a gap between what you want to do and what you actually do? The host of Ask Science Mike explains why our desires and our real lives are so wildly different—and what you can do to close the gap.\n\nFor thousands of years, scientists, philosophers, and self-help gurus have wrestled with one of the basic conundrums of human life: Why do we do the things we do? Or, rather, why do we so often not do the things we want to do? As a podcast host whose voice goes out to millions each month, Mike McHargue gets countless emails from people seeking to understand their own misbehavior—why we binge on Netflix when we know taking a walk outside would be better for us, or why we argue politics on Facebook when our real friends live just down the street. Everyone wants to be a good person, but few of us, twenty years into the new millennium, have any idea how to do that.\n\nIn You’re a Miracle (and a Pain in the Ass), McHargue addresses these issues. We like to think we’re in control of our thoughts and decisions, he writes, but science has shown that a host of competing impulses, emotions, and environmental factors are at play in every action we undertake. Touching on his podcast listeners’ most pressing questions, from relationships and ethics to stress and mental health, and sharing some of the biggest triumphs and hardships from his own life, McHargue shows us how some of our qualities that seem most frustrating—including “negative” emotions like sadness, anger, and anxiety—are actually key to helping humans survive and thrive. In doing so, he invites us on a path of self-understanding and, ultimately, self-acceptance.\n\nYou’re a Miracle (and a Pain in the Ass) is a guided tour through the mystery of human consciousness, showing readers how to live more at peace with themselves in a complex world."
  },
  {
    "title": "Pattern Maker",
    "author": "Kerry Johnston",
    "price": "40",
    "image": "assets/images/img_popular_book2.png",
    "color": 0xFF2B325C,
    "description":
        "There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn't anything embarrassing hidden in the middle of text.\n\nAll the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc."
  },
  {
    "title": "Pa/percra/f",
    "author": "Mike Brown",
    "price": "60",
    "image": "assets/images/img_popular_book3.png",
    "color": 0xFFF7EA4A,
    "description":
        "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.\n\nThe standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham."
  }
];


