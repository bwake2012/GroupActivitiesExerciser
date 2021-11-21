//
//  ExerciserActivity.swift
//  GroupActivitiesExerciser
//
//  Created by Bob Wakefield on 6/10/21.
//

import GroupActivities
import UIKit

struct ExerciserActivity: GroupActivity {

    // specify the activity type to the system
    static let activityIdentifier = "net.cockleburr.GroupActivityExerciser"

    static var metadataAccessCount = 0

    // provide information about the activity
    var metadata: GroupActivityMetadata {

        Self.metadataAccessCount += 1

        var metadata = GroupActivityMetadata()

        metadata.type = .generic
        metadata.title = NSLocalizedString("GroupActivityExerciser by Bob Wakefield", comment: "")
        metadata.subtitle = NSLocalizedString("Exercise GroupActivities \(Self.metadataAccessCount)", comment: "")

        metadata.previewImage = UIImage(named: "SplashIcon")?.cgImage

        return metadata
    }
}

extension ExerciserActivity: Equatable {}
