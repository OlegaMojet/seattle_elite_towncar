enum GetQuotesByEnum {
  clientId('clientId'),
  clientStatus('clientStatus');
  
  final String name;
  const GetQuotesByEnum(this.name);
}

class GetQuotesBy {
  final String by;
  final String? val;

  GetQuotesBy({required this.by, required this.val}); 
}