void DrawMap(){
	string TempString = "";				//TempString
	int length;							//GageBar for HP, MP, EXP
	int i, h;							//loopcount
	int px,py;							//TempShell Position

	//CLS
	ClearBlack();

	//SCROLL MAP
	if(moving_frame_x){
		if(moving_frame_x>0)moving_frame_x-=6;
		else moving_frame_x+=6;
	}else if(moving_frame_y){
		if(moving_frame_y>0)moving_frame_y-=6;
		else moving_frame_y+=6;
	}
	
	//Shell Display Position
	px = Actor.x + map_position_x;		
	py = Actor.y + map_position_y;

	//PRINT MAP
	for(i = -1; i<=9; i++){
		for(h = -1; h<=9; h++){
			if(i + py < MapSize_y && h + px < MapSize_x && i + py >= 0 && h + px >= 0){
				//PRINT MAP LAYER 1
				CopyImage(h*14+map_start_x + moving_frame_x, i*14+map_start_y + moving_frame_y, subchip[subfield[i + py][h + px]]);
				//PRINT MAP LAYER 2
				CopyImage(h*14+map_start_x + moving_frame_x, i*14+map_start_y + moving_frame_y, subchip[midfield[i + py][h + px]]);
			}
		}
	}

	//PRINT MAP LAYER 3+ OVER CHARA -
	for(i = -1; i<=3; i++){
		for(h = -1; h<=9; h++){
			if(i + py < MapSize_y && h + px < MapSize_x && i + py >= 0 && h + px >= 0){
				//PRINT MAP LAYER 3+ OVER CHARA
				if(overfield[i+py][h+px] < 100){
					CopyImage(h*14+map_start_x + moving_frame_x, i*14+map_start_y + moving_frame_y, subchip[overfield[i + py][h + px]]);
				}else{
					CopyImage(h*14+map_start_x + moving_frame_x -4, i*14+map_start_y + moving_frame_y-27, chara2[NPC[overfield[i + py][h + px]-100].direction * 4]);
				}
			}
		}
	}
	//PRINT Actor
	if(moving_frame_x || moving_frame_y){
		//MOVE
		Actor.motion = (Actor.motion+1) % 4;
	}else{
		//NOT MOVE
		Actor.motion = (Actor.motion) % 4;
	}
	SetImageAlpha(0);
	CopyImage(3*18+map_start_x -2, 3*18+map_start_y-25, chara2[Actor.direction*4 + Actor.motion]);

	//PRINT MAP LAYER 3+ OVER CHARA +
	for(i = 4; i<=9; i++){
		for(h = -1; h<=9; h++){
			if(i + py < MapSize_y && h + px < MapSize_x && i + py >= 0 && h + px >= 0){
				if(i==4 && h==4)SetImageAlpha(1);
				if(overfield[i+py][h+px] < 100){
					CopyImage(h*14+map_start_x + moving_frame_x, i*14+map_start_y + moving_frame_y, subchip[overfield[i + py][h + px]]);
				}else{
					CopyImage(h*14+map_start_x + moving_frame_x -4, i*14+map_start_y + moving_frame_y-27, chara2[NPC[overfield[i + py][h + px]-100].direction * 4]);
				}
				SetImageAlpha(0);
			}
		}
	}
	//Map Border
	SetColorRGB(0, 0, 0);
	DrawRect(0, 0, 127, 127);
	//PRINT INTERFACE
	CopyImage(0,121, sysmain);				//INTERFACE BASE
	if(Actor.CurHp > 0){					//PRINT HEALTH GAGE, Max Length:36, Max Y:69
		length = Actor.CurHp * 36 / Actor.MaxHp + 33;
		SetColorRGB(255, 126, 0);
		DrawHLine(33, length, 125); 
		SetColorRGB(255, 242, 0);
		DrawHLine(33, length, 126);
	}
	if(Actor.CurMp > 0){					//PRINT MANA GAGE
		length = Actor.CurMp * 36 / Actor.MaxMp + 33;
		SetColorRGB(0, 179, 217);
		DrawHLine(33, length, 128);
		SetColorRGB(140, 218, 255);
		DrawHLine(33, length, 129);
	}

	if(Actor.Exp > 0){						//PRINT EXP GAGE
		length = Actor.Exp * 16 / 100 + 104;
		SetColorRGB(241, 75, 228);
		DrawHLine(104, length, 127);
		SetColorRGB(253, 153, 245);
		DrawHLine(104, length, 128);
	}

	CopyImage(17,124, sysjob[Actor.Job]);	//PRINT JOB ICON
	
											//PRINT LEVEL
	SetFontType(S_FONT_SMALL, S_WHITE, S_BLACK, S_ALIGN_CENTER);
	MakeStr1(TempString, "%d", Actor.Level);
	DrawStr(9, 125, TempString);
	
	//FREE, CAN DELETE, PRINT TIME & CURRENT POSITION
	SetFontType(S_FONT_SMALL, S_BLACK, S_BLACK, S_ALIGN_CENTER);
	MakeStr3(TempString, "TIME : %4d, POSITION : %d x %d", counter++, Actor.x, Actor.y);
	DrawStr(64, 135, TempString);
}