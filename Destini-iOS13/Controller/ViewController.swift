import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
   
    var storyBrain=StoryBrain()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUi(QuestionDestination: storyBrain.destination)
    }


    @IBAction func choiceMade(_ sender: UIButton) {
        let choiceMade = sender.currentTitle ?? "Error"
        
        let actualQuestionAnswer:[String]=storyBrain.getQustionAnswer()
        
        let currentQuestionDestination:[Int]=storyBrain.getQustionDestination()
        
        if choiceMade==actualQuestionAnswer[0] {
            storyBrain.updateDestination(currentQuestionDestination[0])
        }else{
            storyBrain.updateDestination(currentQuestionDestination[1])
        }
        updateUi(QuestionDestination: storyBrain.destination)
    }
    
    func updateUi(QuestionDestination:Int){
        storyLabel.text=storyBrain.storyArray[storyBrain.destination].title
        choice1Button.setTitle(storyBrain.storyArray[storyBrain.destination].choice[0], for: .normal)
        choice2Button.setTitle(storyBrain.storyArray[storyBrain.destination].choice[1], for: .normal)
    }
    
}

