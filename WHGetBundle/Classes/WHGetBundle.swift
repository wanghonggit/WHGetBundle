//
//  WHGetBundle.swift
//  WHGetBundle
//
//  Created by wanghong on 2023/5/31.
//

import UIKit
let kWHFrameworks = "Frameworks"
let kWHFramework = "framework"
let kWHBundle = "bundle"
@objc public class WHGetBundle: NSObject {
    /// 获取组件中的Bundle资源
    @objc public static func wh_getBundleWith(bundleName: String) -> Bundle? {
        return wh_getBundleWith(bundleName: bundleName, frameWorksName: bundleName)
    }
    
    /// 获取组件中的frameWorks中的资源
    @objc public static func wh_getBundleWith(bundleName: String, frameWorksName: String) -> Bundle? {
        // 获取打包资源的真实路径 Products -> Project_Example -> Frameworks -> frameWorksName.framework -> frameWorksName.bundle
        var bundleUrl = Bundle.main.url(forResource: kWHFrameworks, withExtension: nil)
        bundleUrl = bundleUrl?.appendingPathComponent(frameWorksName).appendingPathExtension(kWHFramework)
        guard let bundleUrl = bundleUrl else {
            return nil
        }
        // 获取bundle
        let bundle = Bundle(url: bundleUrl)
        // 获取实际的bundleurl
        guard let realBundleUrl = bundle?.url(forResource: bundleName, withExtension: kWHBundle) else {
            return nil
        }
        // 获取实际的bundle
        guard let realBundle = Bundle(url: realBundleUrl) else {
            return nil
        }
        return realBundle
    }
}

public extension Bundle {
    /// 获取bundle中的image
    @objc func getImageWith(imageName: String) -> UIImage? {
        return UIImage(named: imageName, in: self, compatibleWith: nil)
    }
}
