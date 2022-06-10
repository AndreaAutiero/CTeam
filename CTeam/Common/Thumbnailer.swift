//
//  Thumbnailer.swift
//  CTeam
//
//  Created by Andrea Autiero on 09/06/22.
//

import Foundation
import AVFoundation
import UIKit

func getThumbnailFrom(path: URL) -> UIImage? {
    do {
        let asset = AVURLAsset(url: path , options: nil)
        let imgGenerator = AVAssetImageGenerator(asset: asset)
        imgGenerator.appliesPreferredTrackTransform = true
        let timestamp = asset.duration
        print("Timestemp:   \(timestamp)")
        let cgImage = try imgGenerator.copyCGImage(at: timestamp, actualTime: nil)
        let thumbnail = UIImage(cgImage: cgImage)
        return thumbnail
    } catch let error {
        print("*** Error generating thumbnail: \(error.localizedDescription)")
        return nil
    }
}
