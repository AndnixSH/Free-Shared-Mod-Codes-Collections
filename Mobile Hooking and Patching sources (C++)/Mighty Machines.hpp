void (*Die)() = (void(*)())getRealOffset(0x4A9764);

bool (*orig_TakeDamage)(void* _this);
bool TakeDamage(void* _this) {
	bool m_isAlly = *(int*)((uint64_t)_this + 0x54); //private bool m_isAlly;
    if (!m_isAlly)
    {
        Die(); 
    }
	return orig_TakeDamage(_this); 
}

void MightyMachinesHook(){
	MSHookFunction((void *)getRealOffset(0x1455C34), (void *)TakeDamage, (void **) &orig_TakeDamage);
}