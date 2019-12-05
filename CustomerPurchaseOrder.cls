// You must implement and interface not extend it
public with sharing class CustomerPurchaseOrder implements PurchaseOrder{
    public double discount() {
        return .05;
    }
}
