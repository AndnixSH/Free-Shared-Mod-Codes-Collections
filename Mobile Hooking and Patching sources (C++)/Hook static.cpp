bool IsClientDetectedCheater() {
     return false;
}
MSHookFunction((void *) getAbsoluteAddress(libName, 0x1B53198), (void *) IsClientDetectedCheater, NULL);