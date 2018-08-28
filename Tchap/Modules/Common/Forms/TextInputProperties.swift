/*
 Copyright 2018 New Vector Ltd
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

import Foundation

/// Represent a part of text input properties exposed by `UITextInputTraits` protocol.
struct TextInputProperties {
    var isSecureTextEntry: Bool = false
    var keyboardType: UIKeyboardType = .default
    var autocorrectionType: UITextAutocorrectionType = .no
    var autocapitalization: UITextAutocapitalizationType = .none
    var returnKeyType: UIReturnKeyType = .default
    var font: UIFont = UIFont.systemFont(ofSize: 16.0)
    
    // Tips to use @available with stored properties
    private var _textContentType: Any? = nil
    
    @available(iOS 10.0, *)
    var textContentType: UITextContentType? {
        get {
            guard let textContentType = _textContentType as? UITextContentType else {
                return nil
            }
            return textContentType
        }
        set {
            _textContentType = newValue
        }
    }
    
}
