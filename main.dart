class Worker {
  String? name;
  String? surname;
  int? rate;
  int? days;

  num getSalary(){
    final result = rate! * days!;
    return result;
  }

  @override
  String toString(){
    return 'name is $name, surname is $surname, rate is $rate, days is $days';
  }
}

class MyString {
  String? text;

  String reverse(arg){
    return arg.split('').reversed.join('');
  }

  String ucFirst(arg){
    return arg.substring(0, 1).toUpperCase() + arg.substring(1).toLowerCase();;
  }

  String ucWords(arg){
    return arg.split(' ').map((el) => this.ucFirst(el)).join(' ');
  }

  @override
  String toString(){
    return 'text is $text';
  }
}

void main() {
  Worker info = Worker();
  info.name = 'Vasya';
  info.surname = 'Pupkin';
  info.rate = 500;
  info.days = 10;
  // print(info);
  // print(info.getSalary());

  MyString inputText = MyString();
  inputText.text = 'Реализуйте класс MyString';

  // print(inputText.reverse('перевернутый текст'));
  // print(inputText.ucFirst('привет мир!'));
  print(inputText.ucWords('привет мир это просто текст!'));
}


// 1. Реализуйте класс Worker (Работник), который будет иметь
// следующие свойства: name (имя), surname (фамилия), rate (ставка за
// день работы), days (количество отработанных дней). Также класс
// должен иметь метод getSalary(), который будет выводить зарплату
// работника. Зарплата - это произведение (умножение) ставки rate на
// количество отработанных дней days.

// 2 Реализуйте класс MyString, который будет иметь следующие
// методы: метод reverse(), который параметром принимает строку, а
// возвращает ее в перевернутом виде, метод ucFirst(), который
// параметром принимает строку, а возвращает эту же строку, сделав ее
// первую букву заглавной и метод ucWords, который принимает строку и
// делает заглавной первую букву каждого слова этой строки.