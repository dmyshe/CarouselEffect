import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let startViewController = MainViewController()
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = startViewController
        window?.makeKeyAndVisible()
        return true
    }

}

