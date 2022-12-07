//
//  ViewController.swift
//  MockApp
//
//  Created by user on 2022/12/01.
//

import UIKit

struct PokemonIdName {
    var id:Int
    var name:String
}

class ViewController: UIViewController {

    var subClass: SubClass!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.subClass = SubClass(viewController: self)
    }

    class SubClass {
        
        private let viewController: ViewController

        init(viewController: ViewController) {
            self.viewController = viewController
        }
        
        //テストしたい関数
        func getPokemon(id: Int)->PokemonIdName{
            //idのポケモンの名前をリターンしたい
            let pokemon = PokemonIdName(id: id, name: getMockName(id: id))
            return pokemon
        }
        
        //未完成
        func getName(id: Int) -> String{
            //ポケモンのnameをgetする処理
            let pokemonName = "getしたpokemonのname"
            return pokemonName
        }
        
        
        
        
        //getName 関数のMock
        func getMockName(id: Int) -> String{
            if id == 1 {
                let pokemonName = "bulbasaur"
                return pokemonName
            }
            return "id error"
        }
        
    }

}
