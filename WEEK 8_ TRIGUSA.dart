void main() {
  print('====================================================');
  print('   WEEK 8: FAST FOOD ORDER SYSTEM (LOGIC & CONTROL)  ');
  print('====================================================\n');

  String itemName = 'Burger Meal';
  double pricePerItem = 120.0;
  bool isTakeout = true;

  print('--- Step 1: Input Validation & Error Handling ---');
  
  String rawUserQuantityInput = '2_invalid'; 
  int quantity = 0;

  try {
    quantity = int.parse(rawUserQuantityInput);
    print('Input successfully parsed: $quantity');
  } catch (e) {
    print('CRITICAL: Caught input error ("$rawUserQuantityInput").');
    print('RECOVERY: Defaulting order quantity to 2.\n');
    quantity = 2; 
  }

  double subtotal = calculateSubtotal(quantity, pricePerItem);

  print('--- Step 2: Itemized Processing (For Loop) ---');
  print('Processing $quantity x $itemName(s):');
  for (int i = 1; i <= quantity; i++) {
    print('  [Item #$i] Preparing $itemName ... PHP ${pricePerItem.toStringAsFixed(2)}');
  }
  print('');

  print('--- Step 3: Conditional Promos & Packaging Fee ---');
  String promoMessage = evaluatePromoTier(subtotal);
  double finalTotal = applyPackagingFee(subtotal, isTakeout);

  print('\n====================================================');
  print('                 FINAL RECEIPT SUMMARY               ');
  print('====================================================');
  print('Item Ordered           : $itemName');
  print('Quantity               : $quantity');
  print('Price Per Item         : PHP ${pricePerItem.toStringAsFixed(2)}');
  print('Takeout Order          : $isTakeout');
  print('----------------------------------------------------');
  print('Subtotal               : PHP ${subtotal.toStringAsFixed(2)}');
  print('Final Total Cost       : PHP ${finalTotal.toStringAsFixed(2)}');
  print('Promo Status           : $promoMessage');
  print('====================================================');
}

double calculateSubtotal(int qty, double unitPrice) {
  return qty * unitPrice;
}

String evaluatePromoTier(double totalAmount) {
  if (totalAmount >= 300.0) {
    return 'Qualifies for Free Extra Dips + 10% Discount!';
  } else if (totalAmount >= 200.0) {
    return 'Qualifies for Free Extra Dips!';
  } else if (totalAmount >= 100.0) {
    return 'Qualifies for Free Drink Upgrade!';
  } else {
    return 'No active promotions applied.';
  }
}

double applyPackagingFee(double total, bool takesOut) {
  double packagingFee = 15.0;

  if (takesOut) {
    print('Takeout detected: Packaging fee of PHP ${packagingFee.toStringAsFixed(2)} added.');
    return total + packagingFee;
  } else {
    print('Dine-in detected: No packaging fee applied.');
    return total;
  }
}