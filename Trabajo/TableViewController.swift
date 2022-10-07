//
//  TableViewController.swift
//  Trabajo
//
//  Created by Alumnos on 7/10/22.
//

import UIKit

class TableViewController: UITableViewController {

    @IBOutlet weak var UItableView: UITableView!
    
          
    let arrayBrands = [
        BrandCar(imageUrl :  "https://i.pinimg.com/originals/76/9e/36/769e367222b218140068d37eae38b9f0.png", brandName: "Mercedes" , description : "Expensive"),
        BrandCar(imageUrl :  "https://i.pinimg.com/originals/41/7f/11/417f11936859a8d4b561fecdd10f37e4.png", brandName: "Audi" , description : "Expensive"),
        BrandCar(imageUrl : "https://i.pinimg.com/originals/00/4c/d3/004cd37b91d199958cdb9aefe0f16dcd.png", brandName: "Renault" , description : "Medium")
    ]
   
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrayBrands.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
//        var image : UIImage = UIImage(named: "logom")
//        var image2 : UIImage = UIImage(named: "logoa")
//        var image3 : UIImage = UIImage(named: "logor")
        

        let cell: MyCell = tableView.dequeueReusableCell(withIdentifier: "customCell", for: indexPath) as! MyCell
        cell.nombre.text = arrayBrands[indexPath.row].getName()
        cell.label.text = arrayBrands[indexPath.row].getDescription()
        cell.ImageBrand.image = getImage(url : arrayBrands[indexPath.row].getImageUrl())
        
        return cell
     
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100.0
    }
    
    func getImage(url: String)->UIImage{
        
        let imgUrl : URL = URL(string: url)!
        let imgData : Data = try! Data(contentsOf: imgUrl)
        
        return UIImage(data: imgData)!
    }

}
