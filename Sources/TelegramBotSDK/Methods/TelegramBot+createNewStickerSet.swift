// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import Dispatch

public extension TelegramBot {
    typealias CreateNewStickerSetCompletion = (_ result: Bool?, _ error: DataTaskError?) -> ()

    /// Use this method to create new sticker set owned by a user. The bot will be able to edit the created sticker set. Returns True on success.
    /// - Parameters:
    ///     - user_id: User identifier of created sticker set owner
    ///     - name: Short name of sticker set, to be used in t.me/addstickers/ URLs (e.g., animals). Can contain only english letters, digits and underscores. Must begin with a letter, can't contain consecutive underscores and must end in “_by_<bot username>”. <bot_username> is case insensitive. 1-64 characters.
    ///     - title: Sticker set title, 1-64 characters
    ///     - png_sticker: Png image with the sticker, must be up to 512 kilobytes in size, dimensions must not exceed 512px, and either width or height must be exactly 512px. Pass a file_id as a String to send a file that already exists on the Telegram servers, pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. More info on Sending Files »
    ///     - emojis: One or more emoji corresponding to the sticker
    ///     - contains_masks: Pass True, if a set of mask stickers should be created
    ///     - mask_position: A JSON-serialized object for position where the mask should be placed on faces
    /// - Returns: Bool on success. Nil on error, in which case `TelegramBot.lastError` contains the details.
    /// - Note: Blocking version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#createnewstickerset>
    @discardableResult
    public func createNewStickerSetSync(
            user_id: Int64,
            name: String,
            title: String,
            png_sticker: FileInfo,
            emojis: String,
            contains_masks: Bool? = nil,
            mask_position: MaskPosition? = nil,
            _ parameters: [String: Any?] = [:]) -> Bool? {
        return requestSync("createNewStickerSet", defaultParameters["createNewStickerSet"], parameters, [
            "user_id": user_id,
            "name": name,
            "title": title,
            "png_sticker": png_sticker,
            "emojis": emojis,
            "contains_masks": contains_masks,
            "mask_position": mask_position])
    }

    /// Use this method to create new sticker set owned by a user. The bot will be able to edit the created sticker set. Returns True on success.
    /// - Parameters:
    ///     - user_id: User identifier of created sticker set owner
    ///     - name: Short name of sticker set, to be used in t.me/addstickers/ URLs (e.g., animals). Can contain only english letters, digits and underscores. Must begin with a letter, can't contain consecutive underscores and must end in “_by_<bot username>”. <bot_username> is case insensitive. 1-64 characters.
    ///     - title: Sticker set title, 1-64 characters
    ///     - png_sticker: Png image with the sticker, must be up to 512 kilobytes in size, dimensions must not exceed 512px, and either width or height must be exactly 512px. Pass a file_id as a String to send a file that already exists on the Telegram servers, pass an HTTP URL as a String for Telegram to get a file from the Internet, or upload a new one using multipart/form-data. More info on Sending Files »
    ///     - emojis: One or more emoji corresponding to the sticker
    ///     - contains_masks: Pass True, if a set of mask stickers should be created
    ///     - mask_position: A JSON-serialized object for position where the mask should be placed on faces
    /// - Returns: Bool on success. Nil on error, in which case `error` contains the details.
    /// - Note: Asynchronous version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#createnewstickerset>
    public func createNewStickerSetAsync(
            user_id: Int64,
            name: String,
            title: String,
            png_sticker: FileInfo,
            emojis: String,
            contains_masks: Bool? = nil,
            mask_position: MaskPosition? = nil,
            _ parameters: [String: Any?] = [:],
            queue: DispatchQueue = .main,
            completion: CreateNewStickerSetCompletion? = nil) {
        return requestAsync("createNewStickerSet", defaultParameters["createNewStickerSet"], parameters, [
            "user_id": user_id,
            "name": name,
            "title": title,
            "png_sticker": png_sticker,
            "emojis": emojis,
            "contains_masks": contains_masks,
            "mask_position": mask_position],
            queue: queue, completion: completion)
    }
}

