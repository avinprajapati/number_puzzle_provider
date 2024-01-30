import 'package:flutter/cupertino.dart';

class controller extends ChangeNotifier {
  List l = ["1", "2", "3", "4", "5", "6", "", "7", "8"];
  bool is_win = false;
  String msg = "";

  reset() {
    msg = "";
    for (int i = 0; i < l.length; i++) {
      is_win = false;
      l=["1", "2", "3", "4", "5", "6", "", "7", "8"];
      // l[i]=true;
      notifyListeners();
    }
  }

  win() {
    if (l[0] == "1" &&
        l[1] == "2" &&
        l[2] == "3" &&
        l[3] == "4" &&
        l[4] == "5" &&
        l[5] == "6" &&
        l[6] == "7" &&
        l[7] == "8" &&
        l[8] == "") {
      msg = "You are win...";
      is_win = true;
    }
    notifyListeners();
  }

  first() {
    if (l[1] == "") {
      l[1] = l[0];
      l[0] = "";
    } else if (l[3] == "") {
      l[3] = l[0];
      l[0] = "";
    }
    win();
    notifyListeners();
  }

  second() {
    if (l[0] == "") {
      l[0] = l[1];
      l[1] = "";
    } else if (l[2] == "") {
      l[2] = l[1];
      l[1] = "";
    } else if (l[4] == "") {
      l[4] = l[1];
      l[1] = "";
    }
    win();
    notifyListeners();
  }

  third() {
    if (l[1] == "") {
      l[1] = l[2];
      l[2] = "";
    } else if (l[5] == "") {
      l[5] = l[2];
      l[2] = "";
    }
    win();
    notifyListeners();
  }

  four() {
    if (l[0] == "") {
      l[0] = l[3];
      l[3] = "";
    } else if (l[4] == "") {
      l[4] = l[3];
      l[3] = "";
    } else if (l[6] == "") {
      l[6] = l[3];
      l[3] = "";
    }
    win();
    notifyListeners();
  }

  five() {
    if (l[1] == "") {
      l[1] = l[4];
      l[4] = "";
    } else if (l[3] == "") {
      l[3] = l[4];
      l[4] = "";
    } else if (l[5] == "") {
      l[5] = l[4];
      l[4] = "";
    } else if (l[7] == "") {
      l[7] = l[4];
      l[4] = "";
    }
    win();
    notifyListeners();
  }

  six() {
    if (l[2] == "") {
      l[2] = l[5];
      l[5] = "";
    } else if (l[4] == "") {
      l[4] = l[5];
      l[5] = "";
    } else if (l[8] == "") {
      l[8] = l[5];
      l[5] = "";
    }
    win();
    notifyListeners();
  }

  seven() {
    if (l[3] == "") {
      l[3] = l[6];
      l[6] = "";
    } else if (l[7] == "") {
      l[7] = l[6];
      l[6] = "";
    }
    win();
    notifyListeners();
  }

  eight() {
    if (l[6] == "") {
      l[6] = l[7];
      l[7] = "";
    } else if (l[4] == "") {
      l[4] = l[7];
      l[7] = "";
    } else if (l[8] == "") {
      l[8] = l[7];
      l[7] = "";
    }
    win();
    notifyListeners();
  }

  nine() {
    if (l[5] == "") {
      l[5] = l[8];
      l[8] = "";
    } else if (l[7] == "") {
      l[7] = l[8];
      l[8] = "";
    }
    win();
    notifyListeners();
  }
}