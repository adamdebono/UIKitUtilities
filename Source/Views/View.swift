import UIKit

open class View: UIView,
    FontTraitEnvironment, UserInterfaceStyleTraitEnvironment {

    public init() {
        super.init(frame: .zero)

        self.updateFonts()
        self.updateUserInterfaceStyle()
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

        self.updateFonts()
        self.updateUserInterfaceStyle()
    }

    // MARK: - Traits

    open func updateFonts() {}
    open func updateUserInterfaceStyle() {}

    open override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)

        self.checkFontTraits(from: previousTraitCollection)
        if #available(iOS 12.0, *) {
            self.checkUserInterfaceStyleTraits(from: previousTraitCollection)
        }
    }
}

