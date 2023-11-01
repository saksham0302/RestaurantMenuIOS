//
//  HomeViewController.swift
//  RestaurantMenu
//
//  Created by Akkriti Patil on 30/10/23.
//

import UIKit

class HomeViewController: UIViewController {

    // Data
    let chineseCuisineImg = ["chinese1", "chinese2", "chinese3", "chinese4"]
    let chineseCuisineName = ["Dim Sum", "Spring Rolls", "Ramen", "Hakka Noodles"]
    let chineseCuisinePrice = ["200", "250", "400", "250"]
    let chineseCuisineDesc = ["Dim sum is literally translated to mean “touch the heart” and the associated Cantonese phrase yum cha means “to drink tea.” Taken together, dim sum is a meal of small dishes served with tea comprised of a collection of savory and sweet tastes from a variety of steamed and fried buns, dumplings and rolls.",
                  "Spring roll is a traditional Chinese savory snack where a pastry sheet is filled with vegetables, rolled & fried. Spring vegetables like cabbage, spring onions and carrots are used for the filling. Since traditionally they were made during the spring festival with spring vegetables, they are known as spring rolls.",
                  "Ramen, is a Japanese noodle dish. It consists of Chinese-style wheat noodles oserved in a broth; common flavors are soy sauce and miso, with typical toppings including sliced pork , nori (dried seaweed), menma (bamboo shoots), and scallions. Ramen has its roots in Chinese noodle dishes.\nNearly every region in Japan has its own variation of ramen, such as the tonkotsu (pork bone broth) ramen of Kyushu and the miso ramen of Hokkaido.",
                  "Be it brunch, lunch, or dinner; Veg Hakka noodles are a hot favorite at the dining table. The vibrant colours of the vegetables and the silky soft noodles coated with a light sauce and spicier than the regular noodles making this dish irresistible. With Veg Hakka noodles calories around 500 and a meal by itself, it is far healthier than its non-veg counterparts like chicken or shrimp or beef Hakka noodles."]
    
    let frenchCuisineImg = ["french1", "french2", "french3", "french4"]
    let frenchCuisineName = ["Macarons", "Croissant", "French Toast", "Tarte Tatin"]
    let frenchCuisinePrice = ["200", "95", "303", "350"]
    let frenchCuisineDesc = ["A macaron is a meringue-based sandwich cookie made with almond flour, egg whites, confectioners' sugar, and food coloring. Common fillings include buttercream, ganache, and fruit-based jam.\nThe meringues have smooth tops, ruffled edges (called the 'crown', 'foot', or 'pied'), and flat bottoms. As far as texture goes, they're airy, moist, slightly cakey, and a bit chewy. Properly baked macarons should have a distinctive melt-in-your-mouth quality.",
              "A croissant is a buttery, flaky, viennoiserie pastry inspired by the shape of the Austrian kipferl but using the French yeast-leavened laminated dough.\nCroissants are named for their historical crescent shape. The dough is layered with butter, rolled and folded several times in succession, then rolled into a thin sheet, in a technique called laminating. The process results in a layered, flaky texture, similar to a puff pastry.",
              "French toast is a dish of sliced bread soaked in beaten eggs and often milk or cream, then pan fried. Alternative names and variants include eggy bread, Bombay toast, gypsy toast, and poor knights (of Windsor).\nWhen French toast is served as a sweet dish, sugar, vanilla, or cinnamon are also commonly added before pan-frying, and then it may be topped with sugar (often powdered sugar), butter, fruit, or syrup. When it is a savory dish, it is generally fried with a pinch of salt or pepper, and it can then be served with a sauce such as ketchup or mayonnaise.",
              "The tarte Tatin (French pronunciation: named after the Tatin sisters who invented it and served it in their hotel as its signature dish, is a pastry in which the fruit (usually apples) is caramelized in butter and sugar before the tart is baked. It originated in France but has spread to other countries over the years."]
    
    let indianCuisineImg = ["indian1", "indian2", "indian3", "indian4"]
    let indianCuisineName = ["Chole Bhature", "Masala Dosa", "Idli Sambhar", "Dahi Vada"]
    let indianCuisinePrice = ["200", "190", "135", "155"]
    let indianCuisineDesc = ["Chole bhature is a food dish popular in the Northern areas of the Indian subcontinent. It is a combination of chana masala (spicy white chickpeas) and bhatura/puri, a deep-fried bread made from maida.\nChole bhature is often eaten as a breakfast dish, sometimes accompanied with lassi. It can also be street food or a complete meal and may be accompanied with onions, pickled carrots, green chutney or achaar.",
              "Masala Dosa is a South Indian dish. It is a type of dosa and has its origin in the town of Udupi in Karnataka. It is made from rice, lentils, Urad dal, Chana dal, fenugreek, puffed rice, Toor dal, dry red chilli and served with potato curry, chutneys, and sambar. It is popular in South India, but can be found in all other parts of the country and overseas.In South India, the preparation of masala dosa varies from city to city.[5] There are variations in Masala dosa like Davanagere butter dosa and paper masala dosa.",
              "Idli is a type of savoury rice cake, originating from South India, popular as a breakfast food in Southern India and in Sri Lanka. The cakes are made by steaming a batter consisting of fermented black lentils (de-husked) and rice. The fermentation process breaks down the starches so that they are more readily metabolised by the body. \nIdli has several variations, including rava idli, which is made from semolina. Regional variants include sanna of Konkan.",
              "These are deep fried lentil fritters dunked in creamy yogurt, topped with different kinds of sweet spicy chutneys and then garnished with spice powders. Dahi Vada is one of the most popular Indian street foods eaten across India."]
    
    let italianCuisineImg = ["italian1", "italian2", "italian3", "italian4"]
    let italianCuisineName = ["Pizza", "Ravioli", "Risotto", "Pasta"]
    let italianCuisinePrice = ["500", "520", "775", "155"]
    let italianCuisineDesc = ["Pizza is a dish of Italian origin consisting of a usually round, flat base of leavened wheat-based dough topped with tomatoes, cheese, and often various other ingredients (such as various types of sausage, anchovies, mushrooms, onions, olives, vegetables, meat, ham, etc.), which is then baked at a high temperature, traditionally in a wood-fired oven.",
              "Ravioli are a type of pasta comprising a filling enveloped in thin pasta dough. Usually served in broth or with a sauce, they originated as a traditional food in Italian cuisine. Ravioli are commonly square, though other forms are also used, including circular and semi-circular",
              "Risotto is an Italian dish made by cooking a starchy, short grain rice like arborio with stock until it becomes creamy. When you serve it on a plate, risotto should spread out into a silky, spoonable pool. Because it’s made with just a few ingredients, there is a lot of emphasis on the cooking technique: slowly ladling in warm stock to a pan full of rice, stirring until the stock is absorbed, ladling in some more stock and repeating. The dish is often finished with butter and freshly grated Parmesan to really kick up the creamy flavor.",
              "Pasta is a type of food typically made from an unleavened dough of wheat flour mixed with water or eggs, and formed into sheets or other shapes, then cooked by boiling or baking. Rice flour, or legumes such as beans or lentils, are sometimes used in place of wheat flour to yield a different taste and texture, or as a gluten-free alternative. Pasta is a staple food of Italian cuisine."]
    
    var filterDataImg: [String] = []
    var filterDataName: [String] = []
    var filterDataPrice: [String] = []
    var filterDataDesc: [String] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.isUserInteractionEnabled = false
        self.navigationController?.navigationBar.tintColor = UIColor.lightGray
        
        navigationItem.hidesBackButton = true
        self.title = "Restaurant Menu"
        
        tableView.reloadData()
        
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    @IBOutlet weak var categoryValue: UISegmentedControl!
    
    var category = 0
    
    @IBAction func category(_ sender: Any) {
        
        switch categoryValue.selectedSegmentIndex {
            
        case 0: category = 0
            
            tableView.reloadData()
            
            
        case 1: filterDataImg = chineseCuisineImg
            filterDataName = chineseCuisineName
            filterDataPrice = chineseCuisinePrice
            filterDataDesc = chineseCuisineDesc
            
            category = 1
            
            tableView.reloadData()
            
            
        case 2: filterDataImg = frenchCuisineImg
            filterDataName = frenchCuisineName
            filterDataPrice = frenchCuisinePrice
            filterDataDesc = frenchCuisineDesc
            
            category = 2
            
            tableView.reloadData()
            
            
        case 3: filterDataImg = indianCuisineImg
            filterDataName = indianCuisineName
            filterDataPrice = indianCuisinePrice
            filterDataDesc = indianCuisineDesc
            
            category = 3
            
            tableView.reloadData()
            
            
        case 4: filterDataImg = italianCuisineImg
            filterDataName = italianCuisineName
            filterDataPrice = italianCuisinePrice
            filterDataDesc = italianCuisineDesc
            
            category = 4
            
            tableView.reloadData()
                
            
        default: category = 0
            
            tableView.reloadData()
        }
    }
    
}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if category == 0 {
            
            filterDataImg = chineseCuisineImg + frenchCuisineImg + indianCuisineImg + italianCuisineImg
        }
        
        return filterDataImg.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        
        if category == 0 {
            
            filterDataImg = chineseCuisineImg + frenchCuisineImg + indianCuisineImg + italianCuisineImg
                filterDataName = chineseCuisineName + frenchCuisineName + indianCuisineName + italianCuisineName
                filterDataPrice = chineseCuisinePrice + frenchCuisinePrice + indianCuisinePrice + italianCuisinePrice
                filterDataDesc = chineseCuisineDesc + frenchCuisineDesc + indianCuisineDesc + italianCuisineDesc
                
        }
        
        cell.dishImage.image = UIImage(named: filterDataImg[indexPath.row] + ".jpeg")
        cell.dishName.text = filterDataName[indexPath.row]
        cell.dishPrice.text = "Price: ₹" + filterDataPrice[indexPath.row]
            
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        performSegue(withIdentifier: "homeToDish", sender: self)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? DishViewController {
            
            destination.dishImage = filterDataImg[(tableView.indexPathForSelectedRow?.row)!] + ".jpeg"
            destination.dishDesc = filterDataDesc[(tableView.indexPathForSelectedRow?.row)!]
            destination.dishPrice = "Price: ₹" + filterDataPrice[(tableView.indexPathForSelectedRow?.row)!]
            destination.dishName = filterDataName[(tableView.indexPathForSelectedRow?.row)!]
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 430
    }
}
