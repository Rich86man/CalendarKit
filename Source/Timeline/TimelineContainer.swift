import UIKit

class TimelineContainer: UIScrollView, ReusableView {

  var timeline: TimelineView!

  override func layoutSubviews() {
    timeline.frame = CGRect(x: 0, y: 0, width: frame.width, height: timeline.fullHeight)
    contentSize = timeline.frame.size
  }

  func prepareForReuse() {
    timeline.prepareForReuse()
  }
}
