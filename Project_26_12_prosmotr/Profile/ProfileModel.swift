//
//  ProfileModel.swift
//  Project_26_12_prosmotr
//
//  Created by MacBook - Latter on 20.12.2024.
//

import SwiftUI

struct UserProfile: Identifiable {
    var id = UUID()
    var firstName: String
    var lastName: String
    var description: String
    var avatar: UIImage?
}
