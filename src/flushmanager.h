#define BUFFER_STOPED	0
#define BUFFER_UPDATED	1
#define BUFFER_BASED	2

int BufferLevel = 0;

void UpdateBuffer(){
	BufferLevel = BUFFER_UPDATED;
}

void BaseBuffer(){
	BufferLevel = BUFFER_BASED;
}

void StopBuffer(){
	BufferLevel = BUFFER_STOPED;
}

void SaveBuffer(){
	if(BufferLevel == BUFFER_UPDATED){
		SaveLCD();
		StopBuffer();
	}
}
