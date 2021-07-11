// Copyright (C) 
// Author: Dylan Muller

typedef  unsigned  long  int uintptr;
typedef  long  int intptr;

void* syscall(
	void* syscall_number,
	void* param1,
	void* param2,
	void* param3,
	void* param4,
	void* param5
);

static intptr print(void  const* data, uintptr nbytes)
{
	return (intptr)
		syscall(
		(void*)1, /* sys_write */
		(void*)(intptr)1, /* STD_OUT */
		(void*)data,
		(void*)nbytes,
		0,
		0
		);
}

int main(int agrc, char *argv[]){
	print("Hello, World", 12);
	return 0;
}
