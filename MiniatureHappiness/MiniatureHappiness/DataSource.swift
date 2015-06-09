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
    var photosGroupedByDate = [[PHAsset]]()
    var momentsFetchResult: PHFetchResult?


    func populatePhotos(){
        
        let fetchOptions = PHFetchOptions()
        fetchOptions.sortDescriptors = [
            NSSortDescriptor(key: "creationDate", ascending: false)
        ]
        
        self.photosFetchResult = PHAsset.fetchAssetsWithMediaType(PHAssetMediaType.Image, options: fetchOptions)
        self.videosFetchResult = PHAsset.fetchAssetsWithMediaType(PHAssetMediaType.Video, options: fetchOptions)

        println("photos: \(photosFetchResult!.count) and videos: \(videosFetchResult!.count)")
        
        groupIntoDays()
        
    }
 
    
    func groupIntoDays(){
        
        // clear out existing values
        self.photosGroupedByDate = []
        var currentDateOfFilter = NSDate()
        var currentAssetsGroup = [PHAsset]()
        
        // loop through PHFetchResult to separate into arrays where all dates are the same
        if let retrievedPhotosFetchResult = photosFetchResult {
            for index in 0...retrievedPhotosFetchResult.count-1 {
                let value = retrievedPhotosFetchResult[index] as! PHAsset
                if NSDate.areDatesSameDay(currentDateOfFilter, dateTwo: value.creationDate) {
                    currentAssetsGroup.append(value)
                } else {
                    photosGroupedByDate.append(currentAssetsGroup)
                    currentAssetsGroup = []
                    currentAssetsGroup.append(value)
                    currentDateOfFilter = value.creationDate
                }
            }
            
        }
     
        println("number of days: \(self.photosGroupedByDate.count)")
        
    }
    
    
    
    
    
    
    
    
    
    // didn't really work
    func populateMoments(){
        self.momentsFetchResult = PHCollectionList.fetchCollectionListsWithType(PHCollectionListType.MomentList, subtype: PHCollectionListSubtype.MomentListYear, options: nil)
        
        println("count of moments: \(self.momentsFetchResult!.count)")
        
    }
    
    
    
    
    
}
