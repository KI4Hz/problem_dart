void main(){
  Map<String, int> scores = {'Alice': 95, 'Bob': 85, 'Charlie': 90};
  String result = findHighestScorer(scores);
  print('Highest Scorer: $result');
}

String findHighestScorer (Map<String, int> scores){
  var highscore = scores.entries.reduce((a,b) => a.value > b.value ? a: b);
  return '${highscore.key} with ${highscore.value} point';
}