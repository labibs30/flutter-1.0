class Post {
  String body;
  String author;
  int likes = 0;
  bool userLiked = false;

  Post(this.body, this.author);

  void likePost() {
    this.userLiked = !this.userLiked;
    if (this.userLiked) {
      likes += 1;
    } else {
      likes -= 1;
    }
  }
}
