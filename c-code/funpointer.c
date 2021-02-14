#include<stdio.h>
void fun(int a)
{
	printf("value of a is %dn",a);
}
int main()
{
	//ponting to afunction
	void (*fun_ptr)(int) = &fun;
	
	//calling  fuction pointer
	(*fun_ptr)(10);
	
}
