
import UIKit

class ViewController: UIViewController {

override func viewDidLoad() {
    super.viewDidLoad()
    xOpcional(num: 5)
    xOpcional(num: nil)
    forceUnwrap(value: "Pochti 9 ey")
    forceUnwrap(value: nil)
    guardOpt(value: nil)
    guardOpt(value: 29)
    convertToInt("29111993")
    convertToInt("blablabla 54")
    enum Book {
        case title(String)
        case author(String)
        case pages(Int)
    }
    
    let myBook = [
        Book.title("1984"),
        Book.author("Джон Орвелл"),
        Book.pages(329)
        ]
    
    printBookDescription(book: myBook)
    
    enum Clothes {
        case shirt
        case pants
        case shoes
    }
    
    let chosenClothes = Clothes.shirt
    Clothes(clothes: chosenClothes)
    
    func xOpcional(num: Int?){
        if let unwraped = num{
            print("result: \(unwraped * 2)")
        }else{
            print("nothing")
        }
    }
    
    func forceUnwrap(value: String?){
        let nothing = value
        if nothing == nil{
            print("nothing")
    }   else{
            let unwraped = value!
            print("result forceunwrap: \(unwraped)")
        }
    }
    
    func guardOpt(value: Int?){
         guard let unwrappVal = value else {
         print("не удалось получить значение")
         return
      }
         print("значение \(unwrappVal)")
}
    func convertToInt(_ input: String) {
        if let convertedNumber = Int(input) {
            print("Преобразованная строка в целое число: \(convertedNumber)")
        } else {
            print("Невозможно преобразовать строку в целое число")
        }
    }
   
    func printBookDescription(book: [Book]) {
        for item in book{
            switch item {
            case .title(let title):
                print("Название книги: \(title)")
            case .author(let author):
                print("Автор книги: \(author)")
            case .pages(let pageCount):
                print("Количество страниц: \(pageCount)")
            }
        }
    }
    func Clothes(clothes: Clothes) {
        switch clothes {
            case .shirt:
                print("Выбрана рубашка")
            case .pants:
                print("Выбраны брюки")
            case .shoes:
                print("Выбраны обувь")
        }
    }

   
    
    
}
}




//1.Написать функцию, которая принимает опциональное число и, если оно есть, умножает его на 2
//2.Использовать force unwrap для извлечения значения из опциональной переменной. Затем добавьте условие, чтобы обработать случай, если значение равно nil.
//3.Написать функцию, использующую оператор guard для проверки опционального значения. Если значение равно nil, выведите сообщение об ошибке, в противном случае выполните операцию с извлеченным значением. 3-4 примера
//4.Напишите функцию, которая принимает строку и пытается преобразовать ее в целое число. Если преобразование возможно, верните число, если нет - nil
//5.Создать перечисление Book. Напишите функцию, которая принимает Book и выводит описание книги
//6.Создайте перечисление Clothes. Напишите функцию, которая принимает Clothes в качестве параметра и выводит сообщение о выбранной одежде.

