# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Article.destroy_all

Article.create!([{
                  title: 'Three Ways to Have a More Secure Online Experience',
                  author: 'Joe Doe',
                  image: 'online-security.png',
                  excerpt:
    'Criminals have gotten more and more clever when it comes to their ' \
    'ability to track and hack.',
                  text:
    'Criminals have gotten more and more clever when it comes to their ' \
    "ability to track and hack.\n\nBut it isn’t just criminals you have to " \
    'worry about. Sure, they can use cookies and pixels and other tools to ' \
    'track your online movements looking for a weakness or for you to make ' \
    'a mistake and expose yourself (like clicking a phishing link), but what ' \
    'about marketers, governments, and even your own internet service ' \
    'provider? How do you hide your information and online presence from ' \
    "your own internet company?\n\nLet’s look at a few ways that you can " \
    "protect your identity and secure your online transactions.\n\nTor " \
    "Browser\n\nTor is one of the easiest ways to protect yourself online. " \
    'Just like you can use Google to download Mozilla Firefox or Opera, you ' \
    'can search ‘download Tor’ and safely add the browser to your desktop.' \
    "\n\nBut what is Tor?\n\nThe Tor project, originally called The Onion " \
    'Router, is open-source software that enables anonymous online ' \
    'communication. If you’re reading this and thinking some slightly ' \
    'nefarious thoughts about hacking your school’s computers to change your ' \
    'grades or hacking your office to play a prank … it is not that ' \
    'secure—at least not in its basic stock form. That said, you can adjust ' \
    'your Tor settings, run it off a segmented virtual machine, and then ' \
    'couple it with VPNs, andyou’ll be safe against marketers, criminals, ' \
    "and even your own ISP!\n\n How does it work?\n\nIt’s like an onion. " \
    'Hence, The Onion Router. It has nested application layers that are ' \
    'encrypted (like an onion). Basically, Tor encrypts your data and the ' \
    'IP address multiple times and sends it through a series of random Tor ' \
    'relays. The relays each decipher a piece of the encryption before ' \
    'passing it on to the next relay for further decoding. This makes it ' \
    'extremely difficult for any network surveillance to determine the ' \
    "source and destination.\n\nBitCoin\n\nYou may be wondering why Bitcoin " \
    'will secure your transactions and protect your identity. Well, just as ' \
    'we stated above, marketers sometimes sell info. But often, it’s not ' \
    'even them. Even though they have taken steps to secure your ' \
    'information against criminals, the internet service provider ' \
    'may be looking over their shoulders. If you are using Tor browser ' \
    'and handle your purchases in BTC, it’s nearly impossible for an ' \
    "opportunistic hack or identity theft to occur.\n\nBitcoin is not " \
    'nearly as anonymous as people once thought; you have to purchase it ' \
    'after all. But you can look at it similarly to replacing all of that ' \
    'information you fill out when making an online purchase, bank card ' \
    'number, billing address, name, etc. with just an email address. With ' \
    'BTC, the blockchain verifies the transaction, so you don’t need to go ' \
    'through the normal, archaic process of verifying your identity with ' \
    'banks talking back and forth to one another. If the website you are ' \
    'purchasing from does end up getting scraped for information, the most ' \
    'potential criminals will get your BTC address. They can’t do much with ' \
    'it … it’s like someone having your email address, but much more secure.' \
    ' The most they can do is send funds to your address, which wouldn’t be ' \
    "too bad!\n\nBitcoin is used by many online outlets due to Standard wire " \
    'transfers and foreign purchases typically involve fees and exchange ' \
    'costs. Since bitcoin transactions have no intermediary institutions or ' \
    'government involvement, in terms of the costs of transacting are kept ' \
    'very low. This can be a major advantage for travelers, also in terms '\
    'of accessibility users are able to send and receive bitcoins with only ' \
    'a smartphone or computer, making it very attractive to many types of ' \
    'industries like Microsoft, AT&T, Fast Food chain restaurants, Airlines, ' \
    'the gambling industry, Gift card online retailers even Amazon (though ' \
    "not directly).\n\nOrchid\n\nOrchid is a great way to secure your " \
    'online activities while on your mobile devices. It’s a crypto-powered ' \
    'VPN that operates on the Ethereum network. You can use ETH to buy a few ' \
    'Orchid, which is used to purchase affordable prepaid VPN services ' \
    'throughout the Orchid VPN app. The coolest part is that you have ' \
    'complete control, and there is no singular VPN provider—like when you '\
    'buy a monthly service subscription—that could in turn and sell your ' \
    "information.\n\nEssentially, you log on to Orchid, and it searches for " \
    'the most viable bandwidth and rents it for you so that your sessions ' \
    'are split between different providers. You can even choose multiple ' \
    'VPNs so that Orchid periodically jumps from one provider to the next, ' \
    'so no singular service has the entire picture of your online activities.'
                },
                 {
                   title: '7 Best Examples of Educational Technologies ',
                   author: 'Joe Doe',
                   image: 'edu-tech-min.png',
                   excerpt:
                     'Since technology advances by the day, keeping up with innovations in ' \
                     'the classroom can seem daunting.',
                   text:
                     'Since technology advances by the day, keeping up with innovations in ' \
                     'the classroom can seem daunting. Each day, new technologies meant for ' \
                     'both students and educators are developed. And without hesitation, they'  \
                     "are quickly piloted or adopted by schools on a full-scale basis.\n\n" \
                     'Meanwhile, the majority of stakeholders in education continue to ' \
                     'appreciate the value of technology. From the moment these two concepts ' \
                     'merged, students have reported better grades, and teachers have an ' \
                     'easier time managing their routine responsibilities. As we go into the ' \
                     'future, we can be confident that tech will make things only better as ' \
                     "far as education is concerned. \n\nThis article focuses on seven " \
                     'examples of innovative educational technologies that are making their ' \
                     "way into the classroom. Have a look.\n\n1. 3D Printing\n\n3D printing " \
                     '(prototyping) enables scholars to learn better. It allows them to'  \
                     'produce tangible/physical prototypes for science, art, biology, ' \
                     'engineering, and other lessons. With these items, students can better ' \
                     'comprehend how things work, their design, and much more. This technology ' \
                     'comes with several advantages, but here, we highlight two of them. The ' \
                     'first one is student curiosity. With 3D printing, learners can convert ' \
                     'their imaginations into reality, satisfying both their creativity and ' \
                     'curiosity. Another advantage of this technology is time-saving. Since ' \
                     'educators do not have to spend lots of hours developing models for ' \
                     'class (3D printers will do that), they can save time. This way, they ' \
                     'can focus on other aspects of their job, making the learning process ' \
                     "more productive.\n\n2. Virtual & Augmented Learning Experiences\n\n " \
                     'Virtual Reality (VR) and Augmented Reality (AR) are an excellent and ' \
                     'welcome technological addition to education. With these solutions, ' \
                     'students gain an immersive learning experience without the need to move ' \
                     'a lot. For example, students learning about space can watch a 3D film ' \
                     'on VR devices that give them sensations of floating in the galaxy. ' \
                     'Better yet, educators can offer a background voice to explain various ' \
                     'things in space. For students studying medical disciplines, these ' \
                     'technologies can offer more practical experience for surgeries. ' \
                     'By doing this, students get to understand theoretical concepts ' \
                     "better.\n\n3. Video Conferencing\n\nThanks to the high-speed Internet, " \
                     'it is now possible to link lecture rooms in different places and ' \
                     'participate in the same classes. This approach has since made it easy ' \
                     'for learners and educators to work together no matter their destinations ' \
                     "on the globe.\n\nMoreover, this technology has helped cut down on the " \
                     'number of missed classes. If a teacher or professor is not close to ' \
                     'school, they could video conference with students during class hours. ' \
                     'Still, this technology has made it possible for students and educators ' \
                     'to organize face-to-face sessions with parents and other stakeholders.' \
                     "\n\n4. Gamification\n\nGames are a more fun way to learn. Thanks to " \
                     'technology, students can now access various educational games during ' \
                     'class or even at home. According to research, challenge-based ' \
                     "gamification may improve learners' performance by up to 89.45% compared " \
                     "to only being present in class.\n\n5. Cloud Computing\n\nThis technology " \
                     'has perhaps done a lot for high tech education than any other. With ' \
                     'cloud computing, people can access information whenever and from ' \
                     'wherever. This has made it possible for students and teachers to access' \
                     "courses and other educational resources conveniently.\n\nToday, a" \
                     'learner can keep reading a book and cooperate with their peers/educators ' \
                     'on the go. Better yet, they no longer need to acquire massive drives to ' \
                     'store their educational material. These resources can be stored in and ' \
                     "accessed from the cloud whenever and at any location.\n\n6. Tablets\n\n" \
                     'This educational technology has enabled students to access digital course ' \
                     'material, boosting engagement via mixed media. Also, since learners do ' \
                     'not have to buy physical books, this technology has helped students and ' \
                     "parents save money.\n\nBesides, given that modern-day students are way " \
                     'more tech-savvy, using tablets during classes makes their learning ' \
                     'easier. Importantly, these devices allow learners to access their ' \
                     "institution's learning management system and other useful academic help " \
                     'services. On such educational platforms, a student can buy essay or get ' \
                     "advice on handling various assignments.\n\n7. Artificial Intelligence " \
                     "(AI)\n\nThis technology has found its way into the education sector " \
                     'in different ways. For one, it has led to the automation of tasks such ' \
                     'as student grading, streamlining of administrative responsibilities, ' \
                     "and individualized learning.\n\nFinal Words\n\nEducational " \
                     'establishments have more technological solutions at their disposal than ' \
                     'ever before. It is up to them to gauge their resources to determine the ' \
                     'best tools for their students and educators. Already, studies show that ' \
                     'tech can enhance the learning process and yield impressive outcomes .' \
                     'Importantly, in this age, incorporating tech into the classroom is not a ' \
                     'luxury but a necessity.'
                 }])

User.create!(email: 'admin@techblog.com', password: 'admin', is_admin: true)
