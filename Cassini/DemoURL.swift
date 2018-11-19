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
            "Cassini" : "http://img1.imgtn.bdimg.com/it/u=2440728367,476027694&fm=26&gp=0.jpg",
            "Earth" : "http://pic19.nipic.com/20120308/4970979_102637717125_2.jpg",
            "Saturn" : "http://www.pptbz.com/pptpic/UploadFiles_6909/201211/2012111719294197.jpg"
        ]
        var urls = Dictionary<String, URL>()
        for (key, value) in NASAURLStrings {
            urls[key] = URL(string: value)
        }
        return urls
    }()
}
