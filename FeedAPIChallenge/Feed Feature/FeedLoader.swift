//
//  Copyright © Essential Developer. All rights reserved.
//

import Foundation

public enum Error: Swift.Error {
	case connectivity
	case invalidData
}

public protocol FeedLoader {
	typealias Result = Swift.Result<[FeedImage], Error>
	func load(completion: @escaping (Result) -> Void)
}
