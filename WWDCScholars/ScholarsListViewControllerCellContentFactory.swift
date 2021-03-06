//
//  ScholarsListViewControllerCellContentFactory.swift
//  WWDCScholars
//
//  Created by Andrew Walker on 21/05/2017.
//  Copyright © 2017 WWDCScholars. All rights reserved.
//

import Foundation

internal final class ScholarsListViewControllerCellContentFactory {
    
    // MARK: - Lifecycle
    
    private init() {}
    
    // MARK: - Internal Functions
    
    internal static func scholarSectionContent(from scholars: [Scholar], delegate: ScholarCollectionViewCellContentDelegate) -> ScholarSectionContent {
        let section = ScholarSectionContent()
        for scholar in scholars {
            let scholarCellContent = self.scholarCellContent(from: scholar, delegate: delegate)
            section.add(cellContent: scholarCellContent)
        }
        return section
    }
    
    // MARK: - Private Functions
    
    private static func scholarCellContent(from scholar: Scholar, delegate: ScholarCollectionViewCellContentDelegate) -> ScholarCollectionViewCellContent {
        let cellContent = ScholarCollectionViewCellContent(scholar: scholar, action: { [unowned delegate] in
            delegate.presentProfile(for: scholar)
        })
        return cellContent
    }
}
