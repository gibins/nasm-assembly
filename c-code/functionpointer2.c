#include<stdio.h>
void fun(int a)
{
	printf("Value of a is %d",a);
}
void main()
{
	void (*fun_p)(int) =  fun;
	fun_p(10);

}
