class CRUDOperation {
//Create Function
  void createData(
      {required List<Map<String, String>> list,
      required Map<String, String> lists}) {
    list.add(lists);

    print('Record Create Successfully');
  }

//Read Function
  void readData(List<Map<String, String>> lists) {
    if (lists.length > 0) {
      for (var i = 0; i < lists.length; i++) {
        print('$i. ${lists[i]}');
      }
    } else {
      print('Record Not Found');
    }
  }

//Update Function

  void updateData(
      {required List<Map<String, String>> lists, index, key, newValue, role}) {
    if (index >= 0 && index < lists.length) {
      if (role != "") {
        if (role == 'admin') {
          lists[index][key] = newValue;
          print('Record Update Successfully');
        } else {
          print('Only Admin Update StudentInfo');
        }
      } else {
        lists[index][key] = newValue;
        print('Record Update Successfully');
      }
    } else {
      print("Index out of range.");
    }
  }

//Delete Function
  void deleteData(List<Map<String, String>> lists, index) {
    lists.removeAt(index);
    print('Record Delete Successfully');
  }
}
