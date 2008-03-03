#define _PlayerPosition 4
#define _SubChipMoveable 99		//이동 가능한 하위칩 마지막 번호
#define _SupChipMoveable 39		//이동 가능한 상위칩 마지막 번호
#define _SupChipWall 139		//장애물에 대한 상위칩 마지막 번호



int ScrollMapX = 0;
int ScrollMapY = 0;

struct Map{
	int x_start, y_start;
	int x_size, y_size;
	int backchip;			//배경 맵칩
}Area[1];

//맵 영역 설정
void SetArea(){
	Area[0].x_start = 0;
	Area[0].y_start = 0;
	Area[0].x_size = 30;
	Area[0].y_size = 30;
	Area[0].backchip = 85;		//풀밭142 검정85
}

//맵 스크롤
void MapScroll(){
	if(ScrollMapX)
	{
		if(ScrollMapX>0)ScrollMapX-=3;
		else ScrollMapX+=3;
	}
	else if(ScrollMapY)
	{
		if(ScrollMapY>0)ScrollMapY-=3;
		else ScrollMapY+=3;
	}
}

//하위 맵 그리기 - 주인공보다 하위 맵
void DrawSubLayer(){
	int x, y;

	for(x=-1;x<10;x++)
	{
		for(y=-1;y<10;y++)
		{
			if(x + Player.x - _PlayerPosition >= 0 && y + Player.y - _PlayerPosition >= 0 && x + Player.x - _PlayerPosition < Area[Player.map].x_size && y + Player.y - _PlayerPosition  < Area[Player.map].y_size)
				CopyImage(x * 16 - 8 + ScrollMapX, y * 16 - 8 + ScrollMapY, subchip[SubLayer[y + Area[Player.map].y_start + Player.y - _PlayerPosition][x + Area[Player.map].x_start + Player.x - _PlayerPosition]]);
			else 
				CopyImage(x * 16 - 8 + ScrollMapX, y * 16 - 8 + ScrollMapY, subchip[Area[Player.map].backchip]);
		}
	}
}

//상위 맵 그리기 - 맵 번호에 따라 바닥 / 장애물 / 천장이나 하늘로 출력
void DrawSupLayer(int Level){
	int x, y;

	switch(Level)
	{
		case 0:	//바닥, 벽
			for(x=-1;x<10;x++)
			{
				for(y=-1;y<10;y++)
				{
					if(x + Player.x - _PlayerPosition >= 0 && y + Player.y - _PlayerPosition >= 0 && x + Player.x - _PlayerPosition < Area[Player.map].x_size && y + Player.y - _PlayerPosition  < Area[Player.map].y_size)
						if(SupLayer[y + Area[Player.map].y_start + Player.y - _PlayerPosition][x + Area[Player.map].x_start + Player.x - _PlayerPosition] <= _SupChipWall)
							CopyImage(x * 16 - 8 + ScrollMapX, y * 16 - 8 + ScrollMapY, supchip[SupLayer[y + Area[Player.map].y_start + Player.y - _PlayerPosition][x + Area[Player.map].x_start + Player.x - _PlayerPosition]]);
				}
			}
			break;
		case 1:	//천장이나 하늘
			for(x=-1;x<10;x++)
			{
				for(y=-1;y<10;y++)
				{
					if(x + Player.x - _PlayerPosition >= 0 && y + Player.y - _PlayerPosition >= 0 && x + Player.x - _PlayerPosition < Area[Player.map].x_size && y + Player.y - _PlayerPosition  < Area[Player.map].y_size)
						if(SupLayer[y + Area[Player.map].y_start + Player.y - _PlayerPosition][x + Area[Player.map].x_start + Player.x - _PlayerPosition] > _SupChipWall)
						{
							if(x >= 3 && y >= 3 && x <= 5 && y <= 5)CopyImageEx(x * 16 - 8 + ScrollMapX, y * 16 - 8 + ScrollMapY, supchip[SupLayer[y + Area[Player.map].y_start + Player.y - _PlayerPosition][x + Area[Player.map].x_start + Player.x - _PlayerPosition]],2,0,0,0);
							else CopyImageEx(x * 16 - 8 + ScrollMapX, y * 16 - 8 + ScrollMapY, supchip[SupLayer[y + Area[Player.map].y_start + Player.y - _PlayerPosition][x + Area[Player.map].x_start + Player.x - _PlayerPosition]],0,0,0,0);
						}
				}
			}
	}
}