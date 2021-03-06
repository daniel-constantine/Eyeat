/**
 * Copyright IBM Corporation 2017
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 **/

import Foundation
import RestKit

/** The entities extracted from a sentence in a given document. */
public struct RelationEntity: JSONDecodable {
    
    /// Text that corresponds to the entity.
    public let text: String?
    
    /// Entity type.
    public let type: String?

    /// Used internally to initialize a `RelationEntity` model from JSON.
    public init(json: JSON) throws {
        text = try? json.getString(at: "text")
        type = try? json.getString(at: "type")
    }
}
