public class TestDataFactory {
        public static List<Product2> createTestProducts() {
            List<Product2> products = new List<Product2>{
                new Product2(Name='% Sodium', Family='ETP Inlet Water Sample Analysis', IsActive=true),
                new Product2(Name='Particulate Matter PM10', Family='Ambient Air Quality Monitoring (EM)', IsActive=true)
            };
            insert products;
            return products;
        }
    public static Id createStandardPricebook() {
            PriceBook2 standardPriceBook = new PriceBook2(Name = 'Standard Pricebook', isActive = true);
            insert standardPriceBook;
            return standardPriceBook.Id;
        }
    public static PriceBookEntry createPricebookEntry(Id productId, Id pricebookId, Decimal unitPrice) {
            PriceBookEntry pbe = new PriceBookEntry(
                Pricebook2Id = pricebookId,
                Product2Id = productId,
                UnitPrice = unitPrice,
                IsActive = true
            );
            insert pbe;
            return pbe;
        }
}