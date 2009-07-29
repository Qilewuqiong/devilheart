/*******************************************************************

 Title:mem_recorder.h
 Function:Define some data structor to record the state of memory
 Description:
 Define some data structors to record the state of memory in size of
 4G at most.
 Version: 1.2
 Date and author: 2009.07.16 hsqfire
*******************************************************************/

#ifndef _MEM_RECORDER_H
#define _MEM_RECORDER_H

#include <stdlib.h>
#include <fstream>
#include <iomanip>

/* default size of one page in memory*/
#define DEFAULT_PAGE_SIZE 1024

/* default min address and max address*/
#define DEFAULT_MIN_ADDRESS 0
#define DEFAULT_MAX_ADDRESS 0xffffffff

/* wrong memory address              */
#define FAULTADDRESS -1


/* Struct to represent 8 continuous bytes in memory*/
struct MemNode;

struct MemNode{
	/* An unsigned integer to record the state of 32 
	   continuous bytes in memory.
	   Here the lower bit represents the lower byte 
	   of the memory. 
	   Value 0 means this byte of memory is not 
	   tainted and 1 means tainted.                */
	unsigned int state;

	/* Address of the first(the lowest one) byte of
	   the represented memory.                     */
	unsigned int address;

	/* Pointer to next 32 continuous bytes in memory*/
	MemNode *nextNode;
};


/* this class is responsible for recording states of
   all memory                                      */
class MemoryRecorder{

private:
	int amountOfPage;         /* amount of pages   */
	int sizeOfPage;           /* size of a page    */
	unsigned int minAddress;  /* minimun address   */
	unsigned int maxAddress;  /* maximun address   */
	MemNode *(*memoryList);   /* MemNode lists     */

public:
	/* Constructor with no arguments               */
	MemoryRecorder();

	/* Constructor with sizeOfPage argument        */
	MemoryRecorder(int size);

	/* Constructor with 3 arguments                */
	MemoryRecorder(int minAdd,int maxAdd,int size);

	/* Return whether the memory in this address is
	   tainted or not                              */
	unsigned int isTainted(unsigned int address);
	/* Mark the memroy in the address to be tainted*/
	bool markTaintedMemory(unsigned int address);

	/* Dismark the memroy in this address          */
	bool dismarkTaintedMemory(unsigned int address);

	/* Reset the state of memory                   */
	void clearState();

	/* Mark a block of continuous memory           */
	bool markTaintedBlock(unsigned int address, int length);

	/* dismark a block of continuous memory           */
	bool dismarkTaintedBlock(unsigned int address, int length);

	/* Mark a block of continuous memory with the state*/
	bool dismarkTaintedBlock(unsigned int address, int length,int state);

	/* Print the state of memory to the output file*/
	void printState(FILE *output);
};

#endif