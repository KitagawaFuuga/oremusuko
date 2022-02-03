import 'other.dart';
import 'dart:math';

class talktalk {
  //? トークシーンの会話管理
  static var word1 = [
    //? ターン1のときに登場する会話
    ['あいうえお', 'ぁぃぅぇぉ', ''],
    ['かきくけこ', 'ヵきクケコ', ''],
    ['さしすせそ', 'サシスセソ', ''],
    ['たちつてと', 'タチツテト', ''],
  ];

  static var word2 = [
    //? ターン2のときに登場する会話
  ];

  static var wordFaulure = ['fjdshajhfda', 'jgakldjlkajlkgjlajdg', ''];

  static var wordSleeping = [
    ['あまり寝られなかった。', '嫌だねー', '体力を30回復した', ''],
    ['普通に睡眠をした', 'やったね', '体力とかを50回復した', ''],
    ['72時間寝た', 'やったね', '体力とかを70回復した', '']
  ];

  static var ranning = []; //? 実行される会話を代入

}

void runevent() {
  //? イベントをランするか決める関数
  int num = Random().nextInt(10); //? ランダムに100を代入
  if (date.turn >= 10) {
    if (num <= 10) {
      int runnum = Random().nextInt(talktalk.word1.length);
      talktalk.ranning = talktalk.word1[runnum]; //? ranningに代入
      date.talkingevent = true; //? イベントを会話するやつ
      talktalk.word1.removeAt(runnum);
    }
  }
}

void trainingFaulure() {
  talktalk.ranning = talktalk.wordFaulure;
}

void sleeping() {
  int num = Random().nextInt(1000); //? ランダムに5を代入
  if (num <= 109) {
    talktalk.ranning = talktalk.wordSleeping[0];
    if (date.HP >= date.MaxHP - 30) {
      date.HP = date.MaxHP;
    } else {
      date.HP += 30;
    }
  } else if (num <= 362 && num > 109) {
    talktalk.ranning = talktalk.wordSleeping[2];
    if (date.HP >= date.MaxHP - 70) {
      date.HP = date.MaxHP;
    } else {
      date.HP += 70;
    }
  } else {
    talktalk.ranning = talktalk.wordSleeping[1];
    if (date.HP >= date.MaxHP - 50) {
      date.HP = date.MaxHP;
    } else {
      date.HP += 50;
    }
  }
}
