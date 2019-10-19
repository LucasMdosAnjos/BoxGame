import 'dart:ui';
import 'package:game1/langaw-game.dart';

class Fly{
  Rect flyRect;
  Paint flyPaint;
  bool isDead = false;
  final LangawGame game;


  Fly(this.game, double x, double y) {
    flyRect = Rect.fromLTWH(x, y, game.tileSize, game.tileSize);
    flyPaint = Paint();
    flyPaint.color =  Color(0xff6ab04c);
  }
  void render(Canvas c){
    c.drawRect(flyRect, flyPaint);
  }
  void update(double t){
    if (isDead) {
      flyRect = flyRect.translate(0, game.tileSize * 12 * t);
    }
  }
  void onTapDown(){
    flyPaint.color = Color(0xffff4757);
    isDead = true;
  }

}