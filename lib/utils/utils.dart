class DartUtils {

  String getLogo(String cnpj){
    switch (cnpj) {
      case "60746948000112":
        return "bradesco";
      case "92702067000196": 
        return "banrisul";
      case "33885724000119": 
      case "60701190000104": 
        return "itau";
      default:
        return "";
    }
  }

  String transformPersonalLoan(String word){
    if (word.isEmpty) {
    return word;
  }

  word = word.replaceAll("_", " ")
    .toLowerCase()
    .replaceAll("emprestimo", "empréstimo")
    .replaceAll("consignacao", "consignação")
    .replaceAll("credito", "crédito");

  return word[0].toUpperCase() + word.substring(1);
  }
}