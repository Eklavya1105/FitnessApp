//
//  ViewController.swift
//  FitnessApp
//
//  Created by Naman Alagh on 14/02/23.
//

import UIKit

class CitiesTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var dataModel: DataModel = DataModel()

    @IBOutlet weak var citiesTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.citiesTableView.dataSource = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataModel.getCities().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = citiesTableView.dequeueReusableCell(withIdentifier: "city_cell", for: indexPath)
        let cityCell = cell as? CityTableViewCell
        
        let city = dataModel.getCity(by: indexPath.row)
        
        cityCell?.cityNameLabel?.text = city.name
        cityCell?.cityImageView?.image = UIImage(named: city.thumbnail)
        cityCell?.placesCountLabel.text = "\(city.places.count) places"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 84.0
    }


}

