//
//  DemoURL.swift
//  Cassini
//
//  Created by 有种网 on 2018/11/8.
//  Copyright © 2018 王之昂. All rights reserved.
//

import Foundation

struct DemoURL {
    static let stanford = URL(string: "https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1541671207033&di=8dbfed8f4ccf60b4b4522d0b5e941ad4&imgtype=0&src=http%3A%2F%2Fe.hiphotos.baidu.com%2Fimage%2Fpic%2Fitem%2F4b90f603738da9773ded4541bd51f8198718e39e.jpg")
    static var NASA: Dictionary<String, URL> = {
        let NASAURLStrings = [
            "Cassini" : "http://www.jp1.nassa.gov/images/cassini/20090202/pia03883-full.jpg",
            "Earth" : "http://www.nassa.gov/sites/default/files/wave_earth_mosaic_3.jpg",
            "Saturn" : "http://www.nassa.gov/sites/default/files/saturn_collage.jpg"
        ]
        var urls = Dictionary<String, URL>()
        for (key, value) in NASAURLStrings {
            urls[key] = URL(string: value)
        }
        return urls
    }()
}
