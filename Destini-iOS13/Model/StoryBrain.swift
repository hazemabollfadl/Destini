import Foundation

struct StoryBrain{
    
    var destination=0
    let storyArray:[Story]=[
        //0
        Story(
            title: "You've been working all day, dreaming of what to eat after your 13 and a half hour shift. You've got two options this late at night.",
            choice: ["Koshary El tahrir", "Buffalo Burger"],
            choiceDestination: [11,1]),
        //1
        Story(
            title: "You drive to Buffalo Burger, But suddenly Remembered that you're 'ka7ian', There is just enough time to make it to koshary El tahrir if you hurry now. What shall you do?",
            choice: ["Drift your way back to Koshary El tahrir", "Go home and wonder what could have been."],
            choiceDestination: [2,3]),
        //2
        Story(
            title: "You gaze into the light at the end of the tunnel. It's the beautiful menu glowing in the night. You have two options to satisfy your cravings, But Hurry you're late for home!.",
            choice: ["Taba2 SuperStar.", "Taba2 Family."],
            choiceDestination: [4,4]),
        //3
        Story(
            title: "I'm not mad, I'm just dissapointed, saying to yourself while dreaming about Taba2 el Koshary el mtarsham, two roads a head of you.",
            choice: ["long Empty Road", "Short crowded Road"],
            choiceDestination: [17,13]),
        //4
        Story(
            title: "You toke your delecious meal with you and started heading back home!",
            choice: ["Take the long Empty Road", "Take a Short crowded Road"],
            choiceDestination: [17,13]),
        //5
        Story(
            title: "Suddenly Your car has blown a tire on a empty road in the middle of nowhere with no cell phone reception. You decide to hitchhike.\n A rusty pickup truck rumbles to a stop next to you. A man with a wide rugged hat with soulless eyes opens the passenger door for you and Said: 'Bsssst...Malak ya 2amar fe eh tegi awaslk ;) ?'.",
            choice: ["I'll hop in. Thanks for the help!","Better ask him if he's a murderer or Gay first."],
            choiceDestination: [7,6]
             ),
        //6
        Story(
            title: "He nods slowly, unfazed by the question.",
            choice: ["At least he's honest. I'll climb in.", "wait i know how to change a tire."],
            choiceDestination: [7, 8]
             ),
        //7
        Story(
            title: "As he begins to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two seperated fingers, a used Condom, rainbow flag, and a cassette tape of Amr diab. You reache for the glove box.",
            choice: ["I love Amr Diab! Hand him the cassette tape.", "It's him or me! You take the knife and stab him before he literally 'fucks' you."],
            choiceDestination: [10, 9]
             ),
        //8
        Story(
            title: "You relaized that you're privilege guy who can't change a tire and died of thirst... ",
            choice: ["The", "End"],
            choiceDestination: [0, 0]
             ),
        //9
        Story(
            title: "As you smash through the guardrail and carry on towards the pointy rocks below, you reflect on the dumb wisdom of stabbing someone while they are driving a car you are in while continuessly cursing Amr Diab.",
            choice: ["The","End"],
            choiceDestination: [0, 0]
             ),
        //10
        Story(
            title: "You bond with the Gay murderer while repeating verses of 'Tamaaly m3aak'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            choice: ["The", "End"],
            choiceDestination: [0,0]
        ),
        //11
        Story(
            title: "You drive to Koshary el tahrir, Found a menu setting on the counter what will you do?",
            choice: ["Take it", "Leave It"],
            choiceDestination: [2,12]
        ),
        //12
        Story(
            title: "Bro! Then why are you even here that's stupid!!!\n 'GM INTERVENTION: player will take the menu!... Eat that koshary Bitch.",
            choice: ["Curse GM", "Love the GM"],
            choiceDestination: [2,2]
             ),
        //13
        Story(
            title: "Ther's alot of traffic ahead of you, Suddenly a woman in the car next to you screamed loudly..'ENTA BETKHOONYY M3AAHAA YA AHMEEDD?!!'",
            choice: ["Say Nothing", "Say 'Waty sotek ya wlia'"],
            choiceDestination: [18,14]
             ),
        //14
        Story(
            title: "The man called 'Ahmed' Looked at you furiouslly and said 'Bet2ol le mean kda Yalaa?'",
            choice: ["Say Nothing and look away", "Say 'To your ugly girlfriend'"],
            choiceDestination: [2,15]
             ),
        //15
        Story(
            title: "Ahmed opened his car door slowly and stood up, your face begins to sweet and your eyes gaze upward dumbfounded by the '210cm tall, mascular man' infront of you!",
            choice: ["Say 'I..I..I'm Sorry' while detouring to the long road", "You too get down from your car"],
            choiceDestination: [17,16]
             ),
        //16
        Story(
            title: "The behemoth of a man called Ahmed beats the crap out of you as you're '160cm, 0.5kg total Muscle mass' man.",
            choice: ["Take a detour to the long empty road while cursing 'Neswan masr'", "Take a detour to the long road empty road while cursing your family genetics"],
            choiceDestination: [17,17]
             ),
        //17
        Story(
            title: "As you driving home you hear a weird Noise from your Car... 'krrkkrkkkrkk'.",
            choice: ["Stop and see what's wrong.", "Continue on your way."],
            choiceDestination: [5,5]
             )  ,
        //18
        Story(
            title: "The screams of the woman Keep getting louder and louder...'MSH OLTLY ENHA ZMELTAK FEL SHOGHL BAS??!'",
            choice: ["Say Nothing while eavesdropping.", "Say 'Waty sotek ya wlia'."],
            choiceDestination: [19,14]
             ),
        //19
        Story(
            title: "The man called 'Ahmed' looked at you and noticed that you're trying to overhear their conversation and gets inraged.",
            choice: ["Say 'Uhhumm.. my mistake'.", " Say 'Msh 2olna nemsa7 el chat!'. "],
            choiceDestination: [15,15]
             )
        

        
    ]
    
    
    func getQustionAnswer() -> [String]{
        return storyArray[destination].choice
    }
    
    func getQustionDestination()->[Int]{
        return storyArray[destination].choiceDestination
    }
    mutating func updateDestination(_ currentDistenation:Int){
        destination=currentDistenation
    }
}

