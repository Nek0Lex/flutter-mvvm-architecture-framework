import 'package:stacked/stacked.dart';

class HomePageViewModel extends BaseViewModel{
	int _counter = 0;
	int get counter => _counter;

	void counterIncrement(){
		_counter++;
		notifyListeners();
	}
}