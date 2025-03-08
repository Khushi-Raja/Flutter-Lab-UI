class ChatMessage {
  final String name;
  final String image;
  final String message;
  final String date;

  ChatMessage({
    required this.name,
    required this.image,
    required this.message,
    required this.date,
  });
}

// Assuming you have a list of ChatMessage objects
List<ChatMessage> chatMessages = [
  ChatMessage(
    name: "Dombo",
    image: "assets/images/dumbo.png",
    message: "Cool",
    date: "03:05pm",
  ),
  ChatMessage(
    name: "Pooh",
    image: "assets/images/pooh.png",
    message: "How many coins you...",
    date: "12:01am",
  ),
  ChatMessage(
      name: "Donald Duck",
      image: "assets/images/donaldDuck.png",
      message: "I WON!!!",
      date: "Today"),
  ChatMessage(
      name: "Doraemon",
      image: "assets/images/doraemon.png",
      message: "Awesome!",
      date: "Yesterday"),
  ChatMessage(
      name: "Olaf",
      image: "assets/images/olaf.png",
      message: "Update...",
      date: "3 days ago"),
  ChatMessage(
      name: "Goofy",
      image: "assets/images/Goofy.png",
      message: "I'm ready bro",
      date: "Wednesday"),
  ChatMessage(
      name: "Jerry",
      image: "assets/images/jerry.png",
      message: "Let's Play",
      date: "A week ago"),
  ChatMessage(
      name: "Mickey",
      image: "assets/images/mickey.png",
      message: "Shared a Photo...",
      date: "13 April"),
  ChatMessage(
      name: "Minnie",
      image: "assets/images/minnie.png",
      message: "Liked Your Message",
      date: "Months ago"),
  ChatMessage(
      name: "Shinchan",
      image: "assets/images/shin.png",
      message: "Losser...",
      date: "6 Months ago"),// Add more ChatMessage objects
];
