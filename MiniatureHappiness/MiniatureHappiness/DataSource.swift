//
//  DataSource.swift
//  MiniatureHappiness
//
//  Created by Roshan Mahanama on 8/06/2015.
//  Copyright (c) 2015 RMTREKS. All rights reserved.
//

import UIKit
import Photos

class DataSource: NSObject {
   
    static let sharedInstance = DataSource()
    var photosFetchResult: PHFetchResult?
    var videosFetchResult: PHFetchResult?


    func populatePhotos(){
        
        let fetchOptions = PHFetchOptions()
        fetchOptions.sortDescriptors = [
            NSSortDescriptor(key: "creationDate", ascending: false)
        ]
        
        self.photosFetchResult = PHAsset.fetchAssetsWithMediaType(PHAssetMediaType.Image, options: fetchOptions)
        self.videosFetchResult = PHAsset.fetchAssetsWithMediaType(PHAssetMediaType.Video, options: fetchOptions)

        println("photos: \(photosFetchResult!.count) and videos: \(videosFetchResult!.count)")
        
    }
 
    
    
    
    
    
    
    
}
