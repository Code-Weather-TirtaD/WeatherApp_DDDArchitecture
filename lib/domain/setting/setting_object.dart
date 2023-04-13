class SelectUnit {
  final List<bool> unitActive;
  final bool isChange;
  const SelectUnit._(this.unitActive, this.isChange);

  factory SelectUnit(List<bool> unitActive, int selectedIndex) {
    var flag = false;
    if (unitActive[selectedIndex] == false) {
      flag = true;
      for (int i = 0; i < unitActive.length; i++) {
        unitActive[i] = i == selectedIndex;
      }
    }

    return SelectUnit._(unitActive, flag);
  }
}
