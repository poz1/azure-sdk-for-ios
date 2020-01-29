// --------------------------------------------------------------------------
//
// Copyright (c) Microsoft Corporation. All rights reserved.
//
// The MIT License (MIT)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the ""Software""), to
// deal in the Software without restriction, including without limitation the
// rights to use, copy, modify, merge, publish, distribute, sublicense, and/or
// sell copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED *AS IS*, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
// FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS
// IN THE SOFTWARE.
//
// --------------------------------------------------------------------------

import AzureCore
import Foundation

/// Storage service-specific HTTP headers.
public enum StorageHTTPHeader: String {
    case blobSequenceNumber = "x-ms-blob-sequence-number"
    case blobType = "x-ms-blob-type"
    case contentCRC64 = "x-ms-content-crc64"
    case contentMD5 = "Content-MD5"
    case copyCompletionTime = "x-ms-copy-completion-time"
    case copyId = "x-ms-copy-id"
    case copyProgress = "x-ms-copy-progress"
    case copySource = "x-ms-copy-source"
    case copyStatus = "x-ms-copy-status"
    case copyStatusDescription = "x-ms-copy-status-description"
    case creationTime = "x-ms-creation-time"
    case serverEncrypted = "x-ms-server-encrypted"
    case leaseDuration = "x-ms-lease-duration"
    case leaseState = "x-ms-lease-state"
    case leaseStatus = "x-ms-lease-status"
}

extension HTTPHeaders {
    public subscript(index: StorageHTTPHeader) -> String? {
        get {
            return self[index.rawValue]
        }

        set(newValue) {
            self[index.rawValue] = newValue
        }
    }

    public mutating func removeValue(forKey key: StorageHTTPHeader) -> String? {
        return removeValue(forKey: key.rawValue)
    }
}