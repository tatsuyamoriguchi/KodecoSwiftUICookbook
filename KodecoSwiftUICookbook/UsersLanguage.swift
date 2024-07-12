//
//  UsersLanguage.swift
//  KodecoSwiftUICookbook
//
//  Created by Tatsuya Moriguchi on 7/12/24.
//

import SwiftUI

struct UsersLanguage: View {
    var userPreferredLanaguage: String {
        return Locale.preferredLanguages.first ?? "Language preference not found"
    }
    
    var userPrimaryLanguage: String {
        let locale = Locale.autoupdatingCurrent
        guard let primaryLanguage = locale.language.languageCode?.identifier else {
            return "Language code not found"
        }
        return NSLocale.current.localizedString(forLanguageCode: primaryLanguage) ?? "Language not found"
    }
    
    var body: some View {
        VStack {
            Text("Your preferred language is \(userPreferredLanaguage).")
            Text("Your primary language is \(userPrimaryLanguage).")
            
        }
        .padding()
    }
}

#Preview {
    UsersLanguage()
}
