//
//  ViewController.swift
//  fruits
//
//  Created by Anar Suleymanli on 06.10.22.
//

import UIKit
import Firebase

class HomeViewC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var interfaceView2: UIImageView!    
    @IBOutlet weak var imageViewStar: UINavigationItem!
    
    
    
    var fruits = [String]()
    var fruitsImage = [UIImage]()
    var fruitLabel = [String]()
    var choosefruitName = ""
    var choosefruitImage = UIImage()
    var choosefruitLabel = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        
        fruits.append("1. Apple")
        fruits.append("2. Avakado")
        fruits.append("3. Coconut")
        fruits.append("4. Banana")
        fruits.append("5. Pineapple Guava")
        fruits.append("6. Kiwi")
        fruits.append("7. Lychee")
        fruits.append("8. Mango")
        fruits.append("9. Mangosteen")
        fruits.append("10. Marakuje")
        fruits.append("11. Orange")
        fruits.append("12. Pineapple")
        fruits.append("13. Strawberry")
        fruits.append("14. Lemon")
        fruits.append("15. Pomegranate")
        fruits.append("16. Blackberries")
        fruits.append("17. Grapefruit")
        fruits.append("18. Blueberries")
        fruits.append("19. Cantaloupe")
        fruits.append("20. Peaches")
        fruits.append("21. Cherries")
        fruits.append("22. Pears")
        fruits.append("23. Plum")
        fruits.append("24. Figs")
        fruits.append("25. Raisins")
        fruits.append("26. Drupes")
        fruits.append("27. Pomes")
        fruits.append("28. Apricots")
        fruits.append("29. Durian")
        fruits.append("30. Gooseberry")
        fruits.append("31. Guava")
        fruits.append("32. Jackfruit")
        fruits.append("33. Kumquat")
        fruits.append("34. Papaya")
        fruits.append("35. Watermelon")
        fruits.append("36. Jujube")
        fruits.append("37. Persimmon")
        fruits.append("38. Dragonfruit")
        fruits.append("39. Prickly Pear")
        fruits.append("40. Salak")
        fruits.append("41. Santol")
        fruits.append("42. Water Apple")
        fruits.append("43. Duku")
        fruits.append("44. Miracle Fruit")
        fruits.append("45. Cloudberry")
        fruits.append("46. Pepine Melon")
        fruits.append("47. Cucamelon")
        fruits.append("48. Soursop")
        fruits.append("49. Star Apple")
        fruits.append("50. Jambolan")
        fruits.append("51. Olive")
        fruits.append("52. Carambola")
        fruits.append("54. Grape")
        fruits.append("55. Custard Apple")
        fruits.append("56. Quince")
        fruits.append("57. Walnut")
        fruits.append("58. Hazelnut")
        fruits.append("59. Pistachios")
        fruits.append("60. Cashews")
        
        
        
        
        fruitsImage.append(UIImage(named: "apple")!)
        fruitsImage.append(UIImage(named: "avakado")!)
        fruitsImage.append(UIImage(named: "coconut")!)
        fruitsImage.append(UIImage(named: "banana")!)
        fruitsImage.append(UIImage(named: "pineapple-guava")!)
        fruitsImage.append(UIImage(named: "kiwi")!)
        fruitsImage.append(UIImage(named: "lychee")!)
        fruitsImage.append(UIImage(named: "mango")!)
        fruitsImage.append(UIImage(named: "mangosteen")!)
        fruitsImage.append(UIImage(named: "marakuje")!)
        fruitsImage.append(UIImage(named: "orange")!)
        fruitsImage.append(UIImage(named: "pineapple")!)
        fruitsImage.append(UIImage(named: "strawberry")!)
        fruitsImage.append(UIImage(named: "lemon")!)
        fruitsImage.append(UIImage(named: "pomegranate")!)
        fruitsImage.append(UIImage(named: "blackberries")!)
        fruitsImage.append(UIImage(named: "grapefruit")!)
        fruitsImage.append(UIImage(named: "blueberries")!)
        fruitsImage.append(UIImage(named: "cantaloupe")!)
        fruitsImage.append(UIImage(named: "peaches")!)
        fruitsImage.append(UIImage(named: "cherries")!)
        fruitsImage.append(UIImage(named: "pears")!)
        fruitsImage.append(UIImage(named: "plum")!)
        fruitsImage.append(UIImage(named: "figs")!)
        fruitsImage.append(UIImage(named: "raisins")!)
        fruitsImage.append(UIImage(named: "drupes")!)
        fruitsImage.append(UIImage(named: "pomes")!)
        fruitsImage.append(UIImage(named: "apricots")!)
        fruitsImage.append(UIImage(named: "durian")!)
        fruitsImage.append(UIImage(named: "gooseberry")!)
        fruitsImage.append(UIImage(named: "guava")!)
        fruitsImage.append(UIImage(named: "jackfruit")!)
        fruitsImage.append(UIImage(named: "kumquat")!)
        fruitsImage.append(UIImage(named: "papaya")!)
        fruitsImage.append(UIImage(named: "watermelon")!)
        fruitsImage.append(UIImage(named: "jujube")!)
        fruitsImage.append(UIImage(named: "persimmon")!)
        fruitsImage.append(UIImage(named: "dragonfruit")!)
        fruitsImage.append(UIImage(named: "prickly-pear")!)
        fruitsImage.append(UIImage(named: "salak")!)
        fruitsImage.append(UIImage(named: "santol")!)
        fruitsImage.append(UIImage(named: "water-apple")!)
        fruitsImage.append(UIImage(named: "duku")!)
        fruitsImage.append(UIImage(named: "miracle-fruit")!)
        fruitsImage.append(UIImage(named: "cloudberry")!)
        fruitsImage.append(UIImage(named: "pepine-melon")!)
        fruitsImage.append(UIImage(named: "cucamelon")!)
        fruitsImage.append(UIImage(named: "soursop")!)
        fruitsImage.append(UIImage(named: "star-apple")!)
        fruitsImage.append(UIImage(named: "jambolan")!)
        fruitsImage.append(UIImage(named: "olive")!)
        fruitsImage.append(UIImage(named: "carambola")!)
        fruitsImage.append(UIImage(named: "grape")!)
        fruitsImage.append(UIImage(named: "custard-apple")!)
        fruitsImage.append(UIImage(named: "quince")!)
        fruitsImage.append(UIImage(named: "walnut")!)
        fruitsImage.append(UIImage(named: "hazelnut")!)
        fruitsImage.append(UIImage(named: "pistachios")!)
        fruitsImage.append(UIImage(named: "cashews")!)

    
        
        fruitLabel.append("APPLE: Source Of. One serving, or one medium apple, provides about 95 calories, 0 gram fat, 1 gram protein, 25 grams carbohydrate, 19 grams sugar (naturally occurring), and 3 grams fiber. Apples are a good source of fiber and vitamin C. They also contain antioxidants, like vitamin E, and polyphenols that contribute to the fruit's numerous health benefits.")
        
        
        fruitLabel.append("AVAKADO: A whole medium avocado contains about 240 calories, 13 grams carbohydrate, 3 grams protein, 22 grams fat (15 grams monounsaturated, 4 grams polyunsaturated, 3 grams saturated), 10 grams fiber, and 11 milligrams sodium. Along with their low sodium levels, avocados contain no cholesterol.")
        
        fruitLabel.append("COCONUT: Coconut meat is particularly high in calories, saturated fat, and fiber. It also contains a variety of minerals, including manganese, copper, selenium, phosphorus, potassium and iron.")
        
        fruitLabel.append("BANANA: One serving, or one medium ripe banana, provides about 110 calories, 0 gram fat, 1 gram protein, 28 grams carbohydrate, 15 grams sugar (naturally occurring), 3 grams fiber, and 450 mg potassium.")
        
        fruitLabel.append("PINEAPPLE GUAVA: They are filled with antioxidant-rich vitamin C, as well as B vitamins, vitamin E, and vitamin K. Feijoas also have plenty of great minerals in them too including calcium and magnesium. They will keep you healthy and free of illnesses, plus they are filled with fiber so you'll stay full for longer.")
        
        fruitLabel.append("KIWI: Kiwi fruits are exceptionally rich in immune-supportive nutrients including the vitamins C, E, K and folate, as well as carotenoids, fibre and phytochemicals.")
                           
        fruitLabel.append("LYCHEE: Lychees contain several healthy minerals, vitamins, and antioxidants, such as potassium, copper, vitamin C, epicatechin, and rutin. These may help protect against heart disease, cancer, and diabetes")
        
        fruitLabel.append("MANGO:  Calories: 202. Protein: 3 grams. Fat: 1 gram. Carbohydrates: 50 grams. Fiber: 5 grams. Sugar: 45 grams.")
        
        fruitLabel.append("MANGOSTEEN: Mangosteen peel contains xanthonoids, such as mangostin, and other phytochemicals. Polysaccharide and xanthone compounds are found in the fruit, leaves, and heartwood of the mangosteen. Fully ripe fruit contain xanthones, garthanin, 8 disoxygartanin, and normangostin.")
        
        fruitLabel.append("MARAKUJE: Raw passion fruit is 73% water, 22% carbohydrates, 2% protein and 0.7% fat (table). In a 100 gram reference amount, raw passion fruit supplies 97 calories and is a rich source (20% or more of the Daily Value, DV) of vitamin C (36% DV) and a moderate source (10-19% DV) of riboflavin, niacin, iron and phosphorus (table).")
        
        fruitLabel.append("ORANGE: One medium-sized orange has: 60 calories. No fat or sodium. 3 grams of fiber. 12 grams of sugar. 1 gram of protein. 14 micrograms of vitamin A. 70 milligrams of vitamin C. 6% of your daily recommended amount of calcium.")
        
        fruitLabel.append("PINEAPPLE: Loaded With Vitamins and Minerals: In addition to large amounts of vitamin C and manganese, pineapples add to your daily value of vitamin B6, copper, thiamin, folate, potassium, magnesium, niacin, riboflavin, and iron.")
        
        fruitLabel.append("STRAWBERRY: Strawberries are bright red, juicy, and sweet. They're an excellent source of vitamin C and manganese and also contain decent amounts of folate (vitamin B9) and potassium. Strawberries are very rich in antioxidants and plant compounds, which may have benefits for heart health and blood.Calories: 91. Protein: 0.67 gram. Fat: 0.3 gram. Carbohydrates: 7.68 grams. Fiber: 2 grams. Sugar: 4.89 grams.")
        
        fruitLabel.append("LEMON: In addition to vitamin C, lemons also contain other important nutrients: fructose, fibre, potassium, calcium, magnesium and copper, as well as vitamins B1, B2, B6, folate and pantothenic acid. A persistent lack of vitamin C can lead to scurvy in adults.")
        
        fruitLabel.append("POMEGRANATE: Pomegranates are a good source of vitamin C, vitamin K, and potassium, as well as several other key nutrients. In fact, eating one pomegranate gives you about 28 mg of vitamin C, which is almost 50 percent of your daily recommended intake (DRI).")
        
        fruitLabel.append("BLACKBERRIES: Blackberries are a very fiber-rich source of nutrition with plenty of vitamin K, potassium, magnesium, and vitamin C. They also offer potent antioxidants and are naturally low in calories and fat. Blackberries are also an excellent source of: Vitamin E. Vitamin K. A one-cup serving of raw blackberries contains: Calories: 62. Protein: 2 grams. Fat: Less than 1 gram. Carbohydrates: 14 grams. Fiber: 8 grams. Sugar: 7 grams.")
        
        fruitLabel.append("GRAPEFRUIT: Raw grapefruit is 90% water, 8% carbohydrates, 1% protein, and negligible fat. In a 100 gram reference amount, raw grapefruit provides 33 kilocalories and is a rich source of vitamin C, with no other micronutrients in significant content. Contains: Grapefruit is a source of vitamin C, fiber, potassium, pectin, and other nutrients.")
        
        fruitLabel.append("BLUEBERRIES: Blueberries primarily consist of 14% carbs, 84% water, and small amounts of protein and fat. Most of the carbs come from simple sugars like glucose and fructose, but blueberries also contain some fiber.")
        
        fruitLabel.append("CANTALOUPE: A one-cup serving of cantaloupe has only 53 calories, but it contains 106 percent of the vitamin A daily value and 95 percent of vitamin C. It's also a good source of potassium and folate. A cup of honeydew has 60 calories, 51 percent vitamin C daily value and 11 percent of potassium. Other nutrients in cantaloupes include:Vitamin A. Potassium. Folate. Vitamin K. Vitamin B3. Calcium. Magnesium. Manganese.")
        
        fruitLabel.append("PEACHES: One raw medium peach (147 grams) has 50 calories, 0.5 grams of fat, 0 grams of cholesterol and sodium, 15 grams of carbohydrate, 13 grams of sugar, 2 grams of fiber and 1 gram of protein. It provides 6% of your daily vitamin A needs and 15% of daily vitamin C needs.")
        
        fruitLabel.append("CHERRIES: Cherries are low in calories and chock full of fiber, vitamins, minerals, nutrients, and other good-for-you ingredients. You'll get vitamins C, A, and K. Each long-stemmed fruit delivers potassium, magnesium, and calcium too. They also bring antioxidants, like beta-carotene, and the essential nutrient choline.")
        
        fruitLabel.append("PEARS: 1. Highly nutritious Calories: 101. Protein: 1 gram. Carbs: 27 grams. Fiber: 6 grams. Vitamin C: 12% of the. Daily Value (DV) Vitamin K: 6% of DV. Potassium: 4% of the DV. Copper: 16% of DV.")
        
        fruitLabel.append("PLUM: Summary. Plums are a low-fat, low-calorie, high-fiber source of carbohydrates. Plums contain antioxidants and some vitamin C, vitamin A, vitamin K, copper, and manganese. Plums are also a good source of: Calcium, Magnesium, Phosphorus, Potassium and Folate.")
        
        fruitLabel.append("FIGS: One medium (2 ¼ inch) fig contains: Calories: 37. Fat: 0 grams. Cholesterol: 0 milligrams. Sodium: 0.5 milligram. Carbohydrates: 10 grams. Fiber: 1.45 grams. Sugar: 8 grams. Protein: 0 grams.")
        
        fruitLabel.append("RAISINS: A quarter-cup of raisins contains: Calories: 108. Protein: 1 gram. Fat: 0 grams. Carbohydrates: 29 grams. Fiber: 1 gram. Sugar: 21 grams")
        
        
        fruitLabel.append("DRUPE:  A drupe is a fruit with a hard stony covering enclosing the seed (like a peach or olive) and comes from the word drupa meaning overripe olive. A coconut, and all drupes, have three layers: the exocarp (outer layer), the mesocarp (fleshy middle layer), and the endocarp (hard, woody layer that surrounds the seed).")
        
        
        fruitLabel.append("POMES: Pome contains high amounts of oil and grease. Although the effluent is nontoxic, it has a very high concentration of biochemical oxygen demand (BOD). Pome composition includes water, oil and suspended solids. Acidic and rich in organic content, POME contaminates watercourses and produces greenhouse gases when a ponding system is used.")
        
        fruitLabel.append("APRICOTS: Apricots are low in fat but rich in vitamin A and beta-carotene. These nutrients act as antioxidants to protect your cells from damage. One whole, fresh apricot contains: Calories: 17. Protein: Less than 1 gram. Fat: 0 grams. Carbohydrates: 4 grams. Fiber: 1 gram. Sugar: 3 grams. Cholesterol: 0 milligrams. Sodium: 0 milligrams.")
        
        fruitLabel.append("DURIAN: Raw durian is composed of 65% water, 27% carbohydrates (including 4% dietary fibre), 5% fat and 1% protein. In 100 grams, raw or fresh frozen durian provides 33% of the Daily Value (DV) of thiamine and moderate content of other B vitamins, vitamin C, and the dietary mineral manganese (15–24% DV, table).")
        
        fruitLabel.append("GOOSEBERRIES: Gooseberries are low in calories and fat, yet packed with nutrients. Just 1 cup (150 grams) of gooseberries contains: Highly nutritious Calories: 66. Protein: 1 gram. Fat: less than 1 gram. Carbs: 15 grams. Fiber: 7 grams. Vitamin C: 46% of the Daily Value (DV). Vitamin B5: 9% of the DV. Vitamin B6: 7% of the DV.")
        
        fruitLabel.append("GUAVA: One whole Guava contains: Calories: 37. Fat: 0.5 gram. Cholesterol: 0 milligrams. Sodium: 1 milligram. Carbohydrates: 8 grams. Fiber: 3 grams. Sugar: 5 grams. Protein:1 gram.")
        
        fruitLabel.append("JACKFRUIT: Jackfruit contains vitamin A, vitamin C, thiamin, riboflavin, calcium, potassium, iron, sodium, zinc, and niacin, among many other nutrients. Jackfruit has a low caloric content; 100 g of jackfruit only contains 94 calories.")
        
        fruitLabel.append("KUMQUAT: Kumquats have about 13 calories each. That's about 90 calories a serving. They're high in vitamins C (about 8 mg each) and offer some vitamin A (about 3 mcg each). The skin is full of fiber and antioxidants (substances that can protect your cells).")
        
        fruitLabel.append("PAPAYA: Papayas contain high levels of antioxidants vitamin A, vitamin C, and vitamin E. Diets high in antioxidants may reduce the risk of heart disease. The antioxidants prevent the oxidation of cholesterol. When cholesterol oxidizes, it's more likely to create blockages that lead to heart disease.")
        
        fruitLabel.append("WATERMELON: Watermelon consists mostly of water (91%) and carbs (7.5%). It provides almost no protein or fat and is very low in calories. The nutrients in 2/3 cup (100 grams) of raw watermelon are 1: Calories: 30. One cup of watermelon contains: 46 calories. 12 grams of carbohydrates. 865 international units (IU) of vitamin A — (equates to . 26 milligrams) 12 milligrams of vitamin C. 170 milligrams of potassium. 0.1 milligrams of vitamin B6. Zero fat, cholesterol or sodium.")
        
        fruitLabel.append("JUJUBE: The scientific evidence has shown that Jujube fruits contain a high amount of various bioactive compounds, including ascorbic acid, triterpenic acids, phenolic acids, amino acids, saponins, cerebrosides, flavonoids, polysaccharides, and mineral constituents.")
        
        fruitLabel.append("PERSIMMON: Persimmons are high in important vitamins and minerals, including vitamins A, C and B, potassium and manganese. They also contain beneficial plant compounds like tannins and flavonoids.")
        
        fruitLabel.append("DRAGONFRUIT:In one 6-ounce serving of dragon fruit cubes, you'll get: Calories: 102. Fat: 0 grams. Protein: 2 grams. You'll also get these vitamins and minerals: Vitamin A: 100 international units (IU) Vitamin C: 4 milligrams. Calcium: 31 milligrams. Iron: 0.1 milligram. Magnesium: 68 milligrams.")
        
        fruitLabel.append("PRICKLY PEAR: This fruit contains approximately 85% water, 15% sugar, 0.3% ash, and less than 1% protein. The flesh is a good source of minerals and several types of amino acids (alanine, arginine, and asparagine). The magnesium, potassium, and calcium in prickly pears are key nutrients for healthy blood pressure, while vitamin C plays an important role in immune system health. Prickly pears also contain many beneficial plant compounds, including phenolic acids, flavonoids, and pigments, which act as antioxidants")
        
        fruitLabel.append("SALAK: Salak has high levels of potassium, thiamine, iron, calcium and vitamin C. It also has anti-diarrheal properties and if too much of the fruit is consumed it can result in constipation")
        
        fruitLabel.append("SANTOL: Santol fruits are a good source of iron, which is a mineral that can help move oxygen in the blood and fiber, which can help regulate digestion. The fruits also contain calcium, phosphorus, and vitamin C.")
        
        fruitLabel.append("WATER APPLE: Water apples are very low in calories because of their high water content—91.6%! They have some fiber, calcium, magnesium, potassium, and Vitamin C, but little protein or fat.")
        
        fruitLabel.append("DUKU: It is a spheroid fruit about 4 cm in diameter with thick skin. It does not contain seeds or latex, but contains a sweet, sugary, aromatic pulp.")
        
        fruitLabel.append("MIRACLE FRUIT: The miracle berry contains vitamin C, vitamin A, vitamin E, and vitamin K. Vitamin C stimulates white cell production which is the body's first defense against infections and pathogens.")
        
        fruitLabel.append("CLOUDBERRY: Cloudberries are rich in vitamin C and ellagic acid, citric acid, malic acid, α-tocopherol, anthocyanins and the provitamin A carotenoid, β-carotene in contents which differ across regions of Finland due to sunlight exposure, rainfall or temperature.")
        
        fruitLabel.append("PEPINE MELON: Pepino Melon has lots of Vitamin A, C, K and also B Vitamins, protein, plus iron and copper, which are essential for a healthy immune system, and calcium for bones, potassium which is needed for relaxing and lowering blood pressure, and Pepino is a good diuretic.")
        
        
        fruitLabel.append("CUCAMELON: Cucamelon is actually jam-packed with nutrients and can even be considered a superfood. The fruit contains: powerful antioxidants (including lycopene and beta-carotene). Fiber. Vitamin C. Vitamin E. Vitamin K. Potassium.")
        
        fruitLabel.append("SOURSOP: Soursop contains many essential vitamins and minerals, including: Vitamin B1. Vitamin B2. Vitamin B3. One entire soursop fruit provides: Calories: 413. Protein: 6 grams. Fat: 2 grams. Carbohydrates: 105 grams. Fiber: 21 grams. Sugar: 85 grams.")
        
        fruitLabel.append("STAR APPLE: African star apples are a rich source of natural antioxidants such as flavonoids and vitamin E, C, and A. They prevent oxidative damage of cells and promote heart health. Studies have also shown that the African star apple contains glycosides. They are antioxidants that help fight heart disease. CONTAINS: Protein, fat, fiber, carbohydrates, calories, potassium, calcium, phosphorus.")
        
        fruitLabel.append("JAMBOLAN: The fresh pulp of cumini, magnesium, calcium, sodium, phosphorus and iron.")
        
        fruitLabel.append("OLIVE: Olives are a good source of vitamin E, iron, copper, and calcium. They may also contain high amounts of sodium if packaged in saltwater. This fruit's beneficial compounds include: Vitamin E. High-fat plant foods usually contain high amounts of this powerful antioxidant: Iron, Copper, Calcium, Sodium.")
        
        fruitLabel.append("CARAMBOLA: Carambolas contain caramboxin and oxalic acid. Both substances are harmful to individuals suffering from kidney failure, kidney stones, or those under kidney dialysis treatment. Consumption by those with kidney failure can produce hiccups, vomiting, nausea, mental confusion, and sometimes death.")
        
        fruitLabel.append("GRAPE: Raw grapes are 81% water, 18% carbohydrates, 1% protein, and have negligible fat (table). A 100-gram (3+1⁄2-ounce) reference amount of raw grapes supplies 288 kilojoules (69 kilocalories) of food energy and a moderate amount of vitamin K (14% of the Daily Value), with no other micronutrients in significant content.")
        
        fruitLabel.append("CUSTARD APPLE: A: Custard Apple is enriched with nutrients like calcium, vitamin C, A and B6, magnesium, iron, potassium, copper and fibre. Its daily consumption has many health benefits. CONTAINS: Calories, proteins, dietary fiber, total fat, carbohydrates.")
        
        fruitLabel.append("QUINCE: Quince contains 52 calories, 0.37 grams of protein, THIAMINE(VITAMIN B1), Vitamin B6, 0.09 grams of fat, 14 grams of carbohydrates, 1.7 grams of fiber, and 13 grams of sugar. They're an adequate source of vitamin C, potassium, iron, copper, and zinc, as well as pectin.")
        
        fruitLabel.append("WALNUT: Walnuts are an excellent source of several vitamins and minerals. These include copper, folic acid, phosphorus, vitamin B6, manganese, calories, monounsaturated fat, saturated fat, protein, carbohydrates, fiber, sugar and vitamin E.")
        
        fruitLabel.append("HAZELNUT: Hazelnuts are also packed with the following key nutrients: Vitamin E, Thiamin, Magnesium, Copper, Manganese, Vitamin B6, Folate, Phosphorus, Vitamin B6, Potassium, Zinc.")
        
        fruitLabel.append("PISTACHIOS: Pistachios also contain significant amounts of minerals (, potassium, phosphorus, magnesium, calcium; Figure 1B) and vitamins such as vitamin A, vitamin E (especially γ-tocopherol), vitamin C, vitamin B (except B12), vitamin K, and folate (Table 2).")
        
        fruitLabel.append("CASHEWS Contains: Calories, Protein, Fat, Carbohydrates, Fiber, Sugar.")
        
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fruits.count
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = fruits[indexPath.row]
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        choosefruitName = fruits[indexPath.row]
        choosefruitImage = fruitsImage[indexPath.row]
        choosefruitLabel = fruitLabel[indexPath.row]
        
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            destinationVC.selectedName = choosefruitName
            destinationVC.selectedImage = choosefruitImage
            destinationVC.selectedInfo = choosefruitLabel
            
        }
        
    }
    
}
