import 'package:stacked/stacked.dart';

class HomePageViewModel extends BaseViewModel{
	int _counter = 0;
	int get counter => _counter;

	String _title;
	String get title => _title;

	void initialise() {
		_title = 'Title';
		notifyListeners();
	}

	void counterIncrement(){
		_counter++;
		notifyListeners();
	}
}