// --------------------------------------------------------------------------
// Copyright (c) Microsoft Corporation. All rights reserved.
// Licensed under the MIT License. See License.txt in the project root for
// license information.
//
// Code generated by Microsoft (R) AutoRest Code Generator.
// Changes may cause incorrect behavior and will be lost if the code is
// regenerated.
// --------------------------------------------------------------------------

import AzureCore
import Foundation
// swiftlint:disable superfluous_disable_command
// swiftlint:disable identifier_name
// swiftlint:disable line_length
// swiftlint:disable cyclomatic_complexity

/// Collection of chat threads.
public struct ChatThreadsInfoCollection: Codable {
    // MARK: Properties

    /// Collection of chat threads.
    public let value: [ChatThreadInfo]?
    /// If there are more chat threads that can be retrieved, the next link will be populated.
    public let nextLink: String?

    // MARK: Initializers

    /// Initialize a `ChatThreadsInfoCollection` structure.
    /// - Parameters:
    ///   - value: Collection of chat threads.
    ///   - nextLink: If there are more chat threads that can be retrieved, the next link will be populated.
    public init(
        value: [ChatThreadInfo]? = nil, nextLink: String? = nil
    ) {
        self.value = value
        self.nextLink = nextLink
    }

    // MARK: Codable

    enum CodingKeys: String, CodingKey {
        case value = "value"
        case nextLink = "nextLink"
    }

    /// Initialize a `ChatThreadsInfoCollection` structure from decoder
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.value = try? container.decode([ChatThreadInfo].self, forKey: .value)
        self.nextLink = try? container.decode(String.self, forKey: .nextLink)
    }

    /// Encode a `ChatThreadsInfoCollection` structure
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if value != nil { try? container.encode(value, forKey: .value) }
        if nextLink != nil { try? container.encode(nextLink, forKey: .nextLink) }
    }
}
