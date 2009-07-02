
void DrawTitle(){
	ClearBlack();
	//*
	DrawStr(0, 0, "AHYANE-125");
	SetFontType(S_FONT_MEDIUM, S_YELLOW, S_BLACK, S_ALIGN_CENTER);
	DrawStr(120,145,"Press OK, please.");
	SetFontType(S_FONT_MEDIUM, S_WHITE, S_BLACK, S_ALIGN_RIGHT);
	DrawStr(230,276,"by Ahyane");
	//*/

	/*
	FrameCounting(Mode);

	SetColor(S_ROSE);
	DrawPolygon();
	
	SetColor(S_APRICOT);
	

	SetColor(S_ORANGE);
	for(i = 0; i < 12; i++){
		RotatePolygon(X, Y, Edge, CounterX, CounterY, CounterR - i * 30, i, i*5);
	}
	//*/
}
