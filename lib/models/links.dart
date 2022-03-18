class Links{
  final String links;
  bool isDone;
  Links({required this.links,this.isDone=false});
void doneChange(){
  isDone= ! isDone;
}
}