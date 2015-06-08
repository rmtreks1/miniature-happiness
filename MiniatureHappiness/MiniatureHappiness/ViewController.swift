//
//  ViewController.swift
//  MiniatureHappiness
//
//  Created by Roshan Mahanama on 8/06/2015.
//  Copyright (c) 2015 RMTREKS. All rights reserved.
//

import UIKit
import Photos

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        countOfPhotos()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    func countOfPhotos(){
        var photosResult: PHFetchResult = PHAsset.fetchAssetsWithMediaType(PHAssetMediaType.Image, options: nil)
//        println(photosResult.count)
        
        var videosResult: PHFetchResult = PHAsset.fetchAssetsWithMediaType(PHAssetMediaType.Video, options: nil)
        println("photos: \(photosResult.count) and videos: \(videosResult.count)")
        
        
//        
//        
//        
//        PHFetchResult *smartAlbums = [PHAssetCollection fetchAssetCollectionsWithType:PHAssetCollectionTypeSmartAlbum subtype:PHAssetCollectionSubtypeAlbumRegular options:nil];
//        PHFetchResult *topLevelUserCollections = [PHCollectionList fetchTopLevelUserCollectionsWithOptions:nil];
//        self.collectionsFetchResults = @[smartAlbums, topLevelUserCollections];
//        self.collectionsLocalizedTitles = @[NSLocalizedString(@"Smart Albums", @""), NSLocalizedString(@"Albums", @"")];
//        
//        [[PHPhotoLibrary sharedPhotoLibrary] registerChangeObserver:self];
//        
//        
//        
        
        
        
    }
    
    
}

