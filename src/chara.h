#define _CenterPositionX 52//4*16-(8)-? -12 : 3
#define _CenterPositionY 40//4*16-(8)-? -16 : 20

struct Chara{
	int map;
	int	x, y;
	int direction;
	int frame;

	int LV, EXP; 
	int MAXHP, HP;
	int MAXMP, MP;

	int STR, DEF, WIS, DEX;
	int GOLD;
}Player;

//주인공 그리기
void DrawPlayer(){

	if(ScrollMapX || ScrollMapY)
		Player.frame = (Player.frame+1) % 16;	//MOVE
	else
		Player.frame = (Player.frame) % 16;		//NOT MOVE
	CopyImage(_CenterPositionX, _CenterPositionY, chara[16 * 3 + Player.direction*4 + Player.frame/4]); //4패턴(*) 4배 감속(/)
}