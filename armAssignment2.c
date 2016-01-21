/* driver program for finding an integer in an array and returning the index */
#include <stdio.h>
#include <stdlib.h>

extern int biggest( int intarray[], int size, int look ) ;

int main( char * argv[], int argc )
{
	int array[] = { 3, 5, 7, 11, 2048, 31, 63 } ;
	int size = sizeof(array)/sizeof(int) ;
	int look = 31 ;
	int result ;

	result = biggest( array, size, look ) ;
	if( result < 0 )
		printf( "Element not in array\n" ) ;
	else
		printf( "Element at %d in array\n", result ) ;
	
	exit( 0 ) ;
}