class Buttons {
  List <String> _numberButtons = ['0','1','2','3','4','5','6','7','8','9'];

  List <String> _arithmeticOperations = ['+','=','-','x','.','/'];

  List <String> _otherOperations = ['C','%'];

  List <String> _firstRow = ['C','+/-','%','/'];

  List <String> _secondRow = ['7','8','9','x'];


  List <String> _thirdRow = ['4','5','6','-',];

  List <String> _forthRow = ['1','2','3','+'];

  List <String> _fifthRow = ['0','.','='];


  List <String> get numbers {
    return _numberButtons;
  }

  List <String> get arithmetic{
    return _arithmeticOperations;
  }

  List <String> get others{
    return _otherOperations;
  }

  int get itemsNumber {
    return _arithmeticOperations.length + _otherOperations.length + numbers.length;
  }

  List<String> get secondRow => _secondRow;

  List<String> get forthRow => _forthRow;

  List<String> get thirdRow => _thirdRow;

  List<String> get fifthRow => _fifthRow;

  List<String> get firstRow => _firstRow;

}

