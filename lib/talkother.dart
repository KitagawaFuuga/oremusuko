import 'other.dart';
import 'dart:math';

class talktalk{
  static var word1 = [
    ['あいうえお','ぁぃぅぇぉ'],
    ['かきくけこ','ヵきクケコ'],
    ['さしすせそ','サシスセソ'],
    ['たちつてと','タチツテト'],
  ];
  
  static var word2 = [
    
  ];
  
  static var ranning = [];

}


void runevent(){
  int num = Random().nextInt(100);
  if(date.turn >= 10){
    if(num <= 10){
      int runnum = Random().nextInt(talktalk.word1.length);
      talktalk.ranning = talktalk.word1[runnum];
      date.talkingevent = true;
    }
  }
}