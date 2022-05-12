%hook SKPaymentTransaction
-(int) transactionState {
        return 1;
}
%end