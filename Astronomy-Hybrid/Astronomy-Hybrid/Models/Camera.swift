//
//  Camera.swift
//  Astronomy-Hybrid
//
//  Created by Percy Ngan on 1/29/20.
//  Copyright © 2020 Lamdba School. All rights reserved.
//

import Foundation

@objc(PNCCamera)
class Camera: NSObject {
	let id: Int
	let name: String
	let roverId: Int
	let fullName: String

	@objc init(id: Int, name: String, roverId: Int, fullName: String) {
		self.id = id
		self.name = name
		self.roverId = roverId
		self.fullName = fullName


	}
}
