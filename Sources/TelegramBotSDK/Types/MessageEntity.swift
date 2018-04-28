// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation


/// This object represents one special entity in a text message. For example, hashtags, usernames, URLs, etc.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#messageentity>

public struct MessageEntity: JsonConvertible, InternalJsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: Any {
        get {
            return internalJson.object
        }
        set {
            internalJson = JSON(newValue)
        }
    }
    internal var internalJson: JSON

    /// Type of the entity. Can be mention (@username), hashtag, bot_command, url, email, bold (bold text), italic (italic text), code (monowidth string), pre (monowidth block), text_link (for clickable text URLs), text_mention (for users without usernames)
    public var typeString: String {
        get { return internalJson["type"].stringValue }
        set { internalJson["type"].stringValue = newValue }
    }

    /// Offset in UTF-16 code units to the start of the entity
    public var offset: Int {
        get { return internalJson["offset"].intValue }
        set { internalJson["offset"].intValue = newValue }
    }

    /// Length of the entity in UTF-16 code units
    public var length: Int {
        get { return internalJson["length"].intValue }
        set { internalJson["length"].intValue = newValue }
    }

    /// Optional. For “text_link” only, url that will be opened after user taps on the text
    public var url: String? {
        get { return internalJson["url"].string }
        set { internalJson["url"].string = newValue }
    }

    /// Optional. For “text_mention” only, the mentioned user
    public var user: User? {
        get {
            let value = internalJson["user"]
            return value.isNullOrUnknown ? nil : User(json: value)
        }
        set {
            internalJson["user"] = newValue?.internalJson ?? JSON.null
        }
    }

    internal init(json: JSON = [:]) {
        self.internalJson = JSON(json)
    }
    public init(jsonObject: Any) {
        self.internalJson = JSON(jsonObject)
    }
}
