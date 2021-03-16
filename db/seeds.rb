# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
authors_list = {
    "KJ Charles" => {
      :first_name => "KJ",
      :last_name => "Charles"
    },

    "Talia Hibbert" => {
      :first_name => "Talia",
      :last_name => "Hibbert"
    },

    "Alyssa Cole" => {
      :first_name => "Alyssa",
      :last_name => "Cole"
    }
}

authors_list.each do |author, hash|
    a = Author.new
    hash.each do |attribute, value|
        a[attribute] = value
    end
    a.save
  end

books_list = {
    "Slippery Creatures" => {
      :author_id => 1,
      :summary => "Will Darling came back from the Great War with a few scars, a lot of medals, and no idea what to do next. Inheriting his uncle’s chaotic second-hand bookshop is a blessing…until strange visitors start making threats. First a criminal gang, then the War Office, both telling Will to give them the information they want, or else.<br><br>

        Will has no idea what that information is, and nobody to turn to, until Kim Secretan—charming, cultured, oddly attractive—steps in to offer help. As Kim and Will try to find answers and outrun trouble, mutual desire grows along with the danger.<br><br>
        
        And then Will discovers the truth about Kim. His identity, his past, his real intentions. Enraged and betrayed, Will never wants to see him again. <br><br>
        
        But Will possesses knowledge that could cost thousands of lives. Enemies are closing in on him from all sides—and Kim is the only man who can help.<br><br>
        
        <i>A 1920s m/m romance trilogy in the spirit of Golden Age pulp fiction.</i>",
      :img_url => "../images/slippery-creatures.png"
    },

    "The Sugared Game" => {
        :author_id => 1,
        :summary => "It’s been two months since bookseller Will Darling saw Kim Secretan and he doesn’t expect to see him again. What do a rough and ready ex-soldier and a disgraced shady aristocrat have to do with each other anyway?<br><br>

          But when Will encounters a face from the past in a disreputable nightclub, Kim turns up again—as shifty, unreliable, and irresistible as ever. And before Will knows it, he’s been dragged back into Kim’s shadowy world of criminal conspiracies and underhand dealings.<br><br>
          
          This time, though, things are underhand even by Kim standards. This time, the danger is too close to home. And if Will and Kim can’t find common ground against unseen enemies, they risk losing everything.<br><br>
          
          <i>A 1920s m/m romance trilogy in the spirit of Golden Age pulp fiction.</i>",
        :img_url => "../images/sugared-game.jpg"
    },

    "The Magpie Lord" => {
        :author_id => 1,
        :summary => "<b>A lord in danger. A magician in turmoil. A snowball in hell.</b><br><br>

        <i>A Charm of Magpies, Book 1</i><br><br>
        
        Exiled to China for twenty years, Lucien Vaudrey never planned to return to England. But with the mysterious deaths of his father and brother, it seems the new Lord Crane has inherited an earldom. He’s also inherited his family’s enemies. He needs magical assistance, fast. He doesn’t expect it to turn up angry.<br><br>
        
        Magician Stephen Day has good reason to hate Crane’s family. Unfortunately, it’s his job to deal with supernatural threats. Besides, the earl is unlike any aristocrat he’s ever met, with the tattoos, the attitude…and the way Crane seems determined to get him into bed. That’s definitely unusual.<br><br>
        
        Soon Stephen is falling hard for the worst possible man, at the worst possible time. But Crane’s dangerous appeal isn’t the only thing rendering Stephen powerless. Evil pervades the house, a web of plots is closing round Crane, and if Stephen can’t find a way through it—they’re both going to die.<br><br>
        
        This is a new edition of the book previously published by Samhain. The text has been lightly edited but there are no significant changes.",
        :img_url => "../images/magpie-lord.jpg"
    },
    
    "A Case Of Posession" => {
        :author_id => 1,
        :summary => "<b>Magic in the blood. Danger in the streets.</b><br><br>

        <i>A Charm of Magpies, Book 2</i><br><br>
        
        Lord Crane has never had a lover quite as elusive as Stephen Day. He knows Stephen’s job as justiciar requires secrecy, but the magician is doing his disappearing act more than seems reasonable—especially since Crane will soon return to his home in China. When a blackmailer threatens to expose their illicit relationship, there’s only one thing stopping Crane from leaving the country he loathes: Stephen.<br><br>
        
        Stephen has problems of his own. As he investigates a plague of giant rats sweeping London, his sudden increase in power, boosted by his blood-and-sex bond with Crane, is rousing suspicion that he’s turned warlock. With all eyes on him, the threat of exposure grows. Stephen could lose his friends, his job and his liberty over his relationship with Crane. He’s not sure if he can take that risk much longer. Crane isn’t sure if he can ask him to.<br><br>
        
        The rats are closing in, and something has to give…",
        :img_url => "../images/case-of-posession.jpg"
    },

    "Flight of Magpies" => {
        :author_id => 1,
        :summary => "<b>Danger in the air. Lovers on the brink.</b><br><br>
        
        <i>A Charm of Magpies, Book 1</i><br><br>

        With the justiciary understaffed, a series of horrifying occult murders to be investigated, and a young student flying off the rails, magical law enforcer Stephen Day is under increasing stress. And the strain is starting to show in his relationship with his aristocratic lover, Lord Crane.<br><br>

        Crane chafes at the restrictions of England’s laws, and there’s a worrying development in the blood-and-sex bond he shares with Stephen. A development that makes a sensible man question if they should be together at all.<br><br>
        
        Then a devastating loss brings the people he most loves into bitter conflict. Old enemies, new enemies, and unexpected enemies are painting Stephen and Crane into a corner, and the pressure threatens to tear them apart…",
        :img_url => "../images/flight-of-magpies.jpg"
    },

    "Jackdaw" => {
        :author_id => 1,
        :summary => "If you stop running, you fall.<br><br>

        This story is linked to the Charm of Magpies series, coming after Flight of Magpies, but can be read as a standalone if you must.<br><br>
        
        Jonah Pastern is a magician, a liar, a windwalker, a professional thief…and for six months, he was the love of police constable Ben Spenser’s life. Until his betrayal left Ben jailed, ruined, alone, and looking for revenge.<br><br>
        
        Ben is determined to make Jonah pay. But he can’t seem to forget what they once shared, and Jonah refuses to let him. Soon Ben is entangled in Jonah’s chaotic existence all over again, and they’re running together—from the police, the justiciary, and some dangerous people with a lethal grudge against them.<br><br>
        
        Threatened on all sides by betrayals, secrets, and the laws of the land, can they find a way to live and love before the past catches up with them?",
        :img_url => "../images/jackdaw.jpg"
    },

    "A Queer Trade" => {
        :author_id => 1,
        :summary => "Apprentice magician Crispin Tredarloe returns to London to find his master dead, and his papers sold. Papers with secrets that could spell death. Crispin needs to get them back before anyone finds out what he’s been doing, or what his magic can do.<br><br>

          Crispin tracks his quarry down to waste paper dealer Ned Hall. He needs help, and Ned can’t resist Crispin’s pleading—and appealing—looks. But can the waste-man and the magician prevent a disaster and save Crispin’s skin?<br><br>
          
          A 16,000 word story set in the Charm of Magpies world, and a prequel to the novel Rag and Bone (1 March 2016). This story was first published as part of the Charmed & Dangerous anthology.",
        :img_url => "../images/queer-trade.jpg"
    },
    
    "Rag and Bone" => {
        :author_id => 1,
        :summary => "<b>It’s amazing what people throw away…</b><br><br>

        Rag and Bone is a story set in the Charm of Magpies universe, featuring the characters who first appear in ‘A Queer Trade’.<br><br>
        
        Crispin Tredarloe never meant to become a warlock. Freed from his treacherous master, he’s learning how to use his magical powers the right way. But it’s brutally hard work. Not everyone believes he’s a reformed character, and the strain is putting unbearable pressure on his secret relationship with waste-man Ned Hall.<br><br>
        
        Ned’s sick of magic. Sick of the trouble it brings, sick of its dangerous grip on Crispin and the miserable look it puts in his eyes, and sick of being afraid that a gentleman magician won’t want a street paper-seller forever—or even for much longer.<br><br>
        
        But something is stirring among London’s forgotten discards. An ancient evil is waking up and seeking its freedom. And when wild magic hits the rag-and-bottle shop where Ned lives, a panicking Crispin falls back onto bad habits. The embattled lovers must find a way to work together—or London could go up in flames.",
        :img_url => "../images/rag-and-bone.jpg"
    },

    "Get A Life, Chloe Brown" => {
      :author_id => 2,
      :summary => "Chloe Brown is a chronically ill computer geek with a goal, a plan, and a list. After almost—but not quite—dying, she’s come up with six directives to help her “Get a Life”, and she’s already completed the first: finally moving out of her glamourous family’s mansion. The next items?<br><br>

      <ul><li>Enjoy a drunken night out.</li>
      <li>Ride a motorcycle.</li>
      <li>Go camping.</li>
      <li>Have meaningless but thoroughly enjoyable sex.</li>
      <li>Travel the world with nothing but hand luggage.</li>
      <li>And… do something bad.</li></ul><br><br>
      But it’s not easy being bad, even when you’ve written step-by-step guidelines on how to do it correctly. What Chloe needs is a teacher, and she knows just the man for the job.<br><br>
      
      Redford ‘Red’ Morgan is a handyman with tattoos, a motorcycle, and more sex appeal than ten-thousand Hollywood heartthrobs. He’s also an artist who paints at night and hides his work in the light of day, which Chloe knows because she spies on him occasionally. Just the teeniest, tiniest bit.<br><br>
      
      But when she enlists Red in her mission to rebel, she learns things about him that no spy session could teach her. Like why he clearly resents Chloe’s wealthy background. And why he never shows his art to anyone. And what really lies beneath his rough exterior…",
      :img_url => "../images/chloe_brown.jpg"
    },

    "Take A Hint, Dani Brown" => {
      :author_id => 2,
      :summary => "Danika Brown knows what she wants: professional success, academic renown, and an occasional roll in the hay to relieve all that career-driven tension. But romance? Been there, done that, burned the T-shirt. Romantic partners, whatever their gender, are a distraction at best and a drain at worst. So Dani asks the universe for the perfect friend-with-benefits—someone who knows the score and knows their way around the bedroom.<br><br>

      When brooding security guard Zafir Ansari rescues Dani from a workplace fire drill gone wrong, it’s an obvious sign: PhD student Dani and ex-rugby player Zaf are destined to sleep together. But before she can explain that fact, a video of the heroic rescue goes viral. Now half the internet is shipping #DrRugbae—and Zaf is begging Dani to play along. Turns out, his sports charity for kids could really use the publicity. Lying to help children? Who on earth would refuse?<br><br>
      
      Dani’s plan is simple: fake a relationship in public, seduce Zaf behind the scenes. The trouble is, grumpy Zaf’s secretly a hopeless romantic—and he’s determined to corrupt Dani’s stone-cold realism. Before long, he’s tackling her fears into the dirt. But the former sports star has issues of his own, and the walls around his heart are as thick as his… um, thighs.<br><br>
      
      Suddenly, the easy lay Dani dreamed of is more complex than her thesis. Has her wish backfired? Is her focus being tested? Or is the universe just waiting for her to take a hint?",
      :img_url => "../images/dani_brown.jpg"
    },
    
    "Act Your Age, Eve Brown" => {
      :author_id => 2,
      :summary => "Eve Brown is a certified hot mess. No matter how hard she strives to do right, her life always goes horribly wrong—so she’s given up trying. But when her personal brand of chaos ruins an expensive wedding (someone had to liberate those poor doves), her parents draw the line. It’s time for Eve to grow up and prove herself—even though she’s not entirely sure how…<br><br>

      Jacob Wayne is in control. Always. The bed and breakfast owner’s on a mission to dominate the hospitality industry—and he expects nothing less than perfection. So when a purple-haired tornado of a woman turns up out of the blue to interview for his open chef position, he tells her the brutal truth: not a chance in hell. Then she hits him with her car—supposedly by accident. Yeah, right.<br><br>
      
      Now his arm is broken, his B&B is understaffed, and the dangerously unpredictable Eve is fluttering around, trying to help. Before long, she’s infiltrated his work, his kitchen—and his spare bedroom. Jacob hates everything about it. Or rather, he should. Sunny, chaotic Eve is his natural-born nemesis, but the longer these two enemies spend in close quarters, the more their animosity turns into something else. Like Eve, the heat between them is impossible to ignore—and it’s melting Jacob’s frosty exterior.",
      :img_url => "../images/eve_brown.jpg"
    },

    "A Girl Like Her" => {
      :author_id => 2,
      :summary => "RUTH KABBAH IS OKAY WITH BEING AN OUTCAST.<br><br>
      Between her autism, her comic book nerdery, and the whiff of scandal her small town can’t forget, Ruth will always be Ravenswood’s black sheep. Since she prefers silence and solitude to gossip and pub crawls, that suits her just fine – until Evan Miller comes to town.<br><br>
      
      Ex-military man Evan is gorgeous, confident… and he’s Ruth’s new neighbour. Unlike everyone else, he doesn’t seem to mind her crotchety ways or her cooking disasters. In fact, if Ruth didn’t know any better, she might think Evan likes her.<br><br>
      
      But Ruth’s been burned before, and some lessons are hard to forget.<br><br>
      
      She can’t let her guard down—no matter how many home-cooked meals Evan brings over. Because affection is temporary, trust is made to be broken, and the heat of desire is a dangerous thing to play with.<br><br>
      
      So why does this man feel so safe?",
      :img_url => "../images/a-girl-like-her.jpg"
    },

    "A Princess In Theory" => {
      :author_id => 3,
      :summary => "<b>From acclaimed author Alyssa Cole comes the tale of a city Cinderella and her Prince Charming in disguise . . .</b><br><br>

      Between grad school and multiple jobs, Naledi Smith doesn’t have time for fairy tales…or patience for the constant e-mails claiming she’s betrothed to an African prince. Sure. Right. Delete! As a former foster kid, she’s learned that the only things she can depend on are herself and the scientific method, and a silly e-mail won’t convince her otherwise.<br><br>
      
      Prince Thabiso is the sole heir to the throne of Thesolo, shouldering the hopes of his parents and his people. At the top of their list? His marriage. Ever dutiful, he tracks down his missing betrothed. When Naledi mistakes the prince for a pauper, Thabiso can’t resist the chance to experience life—and love—without the burden of his crown.<br><br>
      
      The chemistry between them is instant and irresistible, and flirty friendship quickly evolves into passionate nights. But when the truth is revealed, can a princess in theory become a princess ever after?<br><br>
      
      <b>Selected as one of the New York Times 100 Notable Books of 2018!</b>",
      :img_url => "../images/princess_in_theory.jpg"
    },

    "A Duke by Default" => {
      :author_id => 3,
      :summary => "New York City socialite and perpetual hot mess Portia Hobbs is tired of disappointing her family, friends, and—most importantly—herself. An apprenticeship with a struggling swordmaker in Scotland is a chance to use her expertise and discover what she’s capable of. Turns out she excels at aggravating her gruff silver fox boss…when she’s not having inappropriate fantasies about his sexy Scottish burr***.***<br><br>

      Tavish McKenzie doesn’t need a rich, spoiled American telling him how to run his armory…even if she is infuriatingly good at it. Tav tries to rebuff his apprentice—and his attraction to her—but when Portia accidentally discovers that he’s the secret son of a duke, rough-around-the-edges Tav becomes her newest makeover project.<br><br>
      
      Forging metal into weapons and armor is one thing, but when desire burns out of control and the media spotlight gets too hot to bear, can a commoner turned duke and his posh apprentice find lasting love?",
      :img_url => "../images/duke_by_default.jpg"
    },

    "Once Ghosted, Twice Shy" => {
      :author_id => 3,
      :summary => "While her boss the prince was busy wooing his betrothed, Likotsi had her own love affair after swiping right on a dating app. But her romance had ended in heartbreak, and now, back in NYC again, she’s determined to rediscover her joy—so of course she runs into the woman who broke her heart.<br><br>

      When Likotsi and Fabiola meet again on a stalled subway train months later, Fab asks for just one cup of tea. Likotsi, hoping to know why she was unceremoniously dumped, agrees. Tea and food soon leads to them exploring the city together, and their past, with Fab slowly revealing why she let Likotsi go, and both of them wondering if they can turn this second chance into a happily ever after.<br><br>",
      :img_url => "../images/once-ghosted-twice-shy.jpg"
    },

    "Can't Escape Love" => {
      :author_id => 3,
      :summary => "Regina Hobbs is nerdy by nature, businesswoman by nurture. She's finally taking her pop culture-centered media enterprise, Girls with Glasses, to the next level, but the stress is forcing her to face a familiar supervillain: insomnia. The only thing that helps her sleep when things get this bad is the deep, soothing voice of puzzle-obsessed live streamer Gustave Nguyen. The problem? His archive has been deleted.<br><br>

      Gus has been tasked with creating an escape room themed around a romance anime…except he knows nothing about romance or anime. Then mega-nerd and anime expert Reggie comes calling, and they make a trade: his voice for her knowledge. But when their online friendship has IRL chemistry, will they be able to escape love?",
      :img_url => "../images/cant-escape-love.jpg"
    },

    "A Prince On Paper" => {
      :author_id => 3,
      :summary => "<b>The Reluctant Royals series returns with a good girl searching for the life that’s not too big, and not too small, and the bad boy prince who might be just right for her…</b><br><br>

      Nya Jerami fled Thesolo for the glitz and glamour of NYC but discovered that her Prince Charming only exists in her virtual dating games. When Nya returns home for a royal wedding, she accidentally finds herself up close and personal—in bed—with the real-life celebrity prince who she loves to hate.<br><br>
      
      For Johan von Braustein, the red-headed step-prince of Liechtienbourg, acting as paparazzi bait is a ruse that protects his brother—the heir to the throne—and his own heart. When a royal referendum threatens his brother’s future, a fake engagement is the perfect way to keep the cameras on him.<br><br>
      
      Nya and Johan both have good reasons to avoid love, but as desires are laid bare behind palace doors, they must decide if their fake romance will lead to a happily-ever-after.",
      :img_url => "../images/prince-on-paper.jpg"
    }
  }

books_list.each do |title, book_hash|
  b = Book.new
  b.title = title
  book_hash.each do |attribute, value|
      b[attribute] = value
  end
  b.save
end

