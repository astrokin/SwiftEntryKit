//
//  WidthSelectionTableViewCell.swift
//  SwiftEntryKit_Example
//
//  Created by Daniel Huri on 4/25/18.
//  Copyright © 2018 CocoaPods. All rights reserved.
//

import UIKit

class WidthSelectionTableViewCell: SelectionTableViewCell {
    override func configure(attributesWrapper: EntryAttributeWrapper) {
        super.configure(attributesWrapper: attributesWrapper)
        titleValue = "Entry Width Constraint"
        descriptionValue = "Describes the entry's width inside the screen"
        insertSegments(by: ["Stretch", "20pts Offset", "90% Screen"])
        selectSegment()
    }
    
    private func selectSegment() {
        switch attributesWrapper.attributes.positionConstraints.width {
        case .offset(value: let value):
            if value == 0 {
                segmentedControl.selectedSegmentIndex = 0
            } else {
                segmentedControl.selectedSegmentIndex = 1
            }
        case .ratio(value: _):
            segmentedControl.selectedSegmentIndex = 2
        default:
            break
        }
    }
    
    @objc override func segmentChanged() {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            attributesWrapper.attributes.positionConstraints.width = .offset(value: 0)
        case 1:
            attributesWrapper.attributes.positionConstraints.width = .offset(value: 20)
        case 2:
            attributesWrapper.attributes.positionConstraints.width = .ratio(value: 0.9)
        default:
            break
        }
    }
}