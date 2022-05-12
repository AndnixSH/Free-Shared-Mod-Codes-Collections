monoString(*orig_TotalTickets)(void *instance);
monoString TotalTickets(void *instance) {
	return YourCreateString(NULL, "999999");
}

void StoryscapeHook(){
	MSHookFunction((void *)getRealOffset(0x4232E0), (void *)TotalTickets, (void **) &orig_TotalTickets);
}