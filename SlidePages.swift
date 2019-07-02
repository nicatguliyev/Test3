
import UIKit

class InformationController: UIViewController {
    
    @IBOutlet weak var horizontalScrollView: UIScrollView!

    var page1 = FirstPage()
    var page2 = SecondPage()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2, execute: {
            self.addPages()
        })

    }
         
    func addPages(){
        let screenWidth = UIScreen.main.bounds.size.width // Ekranin uzunlugunu tapiriq

        horizontalScrollView.contentSize = CGSize(width: screenWidth * CGFloat(3), height: horizontalScrollView.frame.height) // Scrollun nece dene page-den ibaret olacagini gosteririk
        
        page1 = Bundle.main.loadNibNamed("FirstPage", owner: self, options: nil)?.first as! FirstPage //  Yaratdigimiz FirtPage view-nu gotururuk
        page1.frame = CGRect(x: view.frame.size.width * CGFloat(0), y: 0, width: view.frame.size.width, height: horizontalScrollView.frame.height) // FirstPage-in kordinantlarini gosteririk Burada x = 0, y = 0 olacaq.
        horizontalScrollView.addSubview(page1) // Scrolla elave edirik
    
        page2 = Bundle.main.loadNibNamed("SecondPage", owner: self, options: nil)?.first as! SecondPage
        page2.frame = CGRect(x: view.frame.size.width * CGFloat(1), y: 0, width: view.frame.size.width, height: horizontalScrollView.frame.height)
        horizontalScrollView.addSubview(page2)
        
             
    }
    

}
