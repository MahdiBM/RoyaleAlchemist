import SwiftUI
import CoreData
import UIKit
import Foundation

struct IContentView: View {
    
    @EnvironmentObject var appearance: EnvObjs.Appearance
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        TabView(selection: $appearance.tabBarSelection) {
            
            DeckWalletBaseView()
                .tabItem {
                    Image(systemName: appearance.tabBarSelection == "DeckWallet" ? "folder.fill" : "folder")
                    Text("Deck Wallet")
                }
                .tag("DeckWallet")
                .accentColor(.blue)
            
            StatsBaseView()
                .tabItem {
                    Image(systemName: appearance.tabBarSelection == "Stats" ? "person.3.fill" : "person.3")
                    Text("Stats")
                }
                .tag("Stats")
                .accentColor(.blue)
            
            LeaderboardsBaseView()
                .tabItem {
                    Image(systemName: "list.number")
                    Text("Leaderboards")
                }
                .tag("Leaderboards")
                .accentColor(.blue)
            
            SettingsBaseView()
                .tabItem {
                    Image(systemName: appearance.tabBarSelection == "Settings" ? "gearshape.fill" : "gearshape")
                    Text("Settings")
                }
                .tag("Settings")
                .accentColor(.blue)
            
        }
        .accentColor(.pink)
        .onReceive(appearance.$tabBarSelection) { output in
            UD.standardSet(output, forKey: .tabBarSelection)
        }
    }
}

//struct IContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        IContentView()
//            .environmentObject(EnvObjs.Appearance())
//            .environmentObject(EnvObjs.Datas())
//    }
//}
