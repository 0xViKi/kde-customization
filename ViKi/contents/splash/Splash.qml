import QtQuick 2.5


Rectangle {
    id: root
    color: "#26292e"

     property int stage

    onStageChanged: {
        if (stage == 1) {
            introAnimation.running = true
        }
      }

    Text {
            id: date
            text:Qt.formatDateTime(new Date(),"dddd, dd MMMM, yyyy")
            font.pointSize: 35
            color: "#ff7c4c"
            opacity:0.9
            font { family: "NotoSans MED"; weight: Font.Light ;capitalization: Font.Capitalize}
            anchors.horizontalCenter: parent.horizontalCenter
            y: (parent.height - height) / 9.5
        }

    Item {
        id: content
        anchors.fill: parent
        opacity: 0
        TextMetrics {
            id: units
            text: "M"
            property int gridUnit: boundingRect.height
            property int largeSpacing: units.gridUnit
            property int smallSpacing: Math.max(2, gridUnit/4)
        }

        Image {
            id: logo
            //match SDDM/lockscreen avatar positioning
            property real size: units.gridUnit * 8

            anchors.centerIn: parent
            anchors.horizontalCenter: parent.horizontalCenter
            source: "images/viki.png"

            sourceSize.width: 500
            sourceSize.height: 500
        }

        Image {
            id: busyIndicator
            y: parent.height - (parent.height - logo.y) / 2 - height/2
            anchors.horizontalCenter: parent.horizontalCenter
            source: "images/busy.png"
            sourceSize.height: units.gridUnit * 3
            sourceSize.width: units.gridUnit * 3
            RotationAnimator on rotation {
                id: rotationAnimator
                from: 0
                to: 360
                duration: 800
                loops: Animation.Infinite
            }
        }

    }

    OpacityAnimator {
        id: introAnimation
        running: true
        target: content
        from: 0
        to: 1
        duration: 1000
        easing.type: Easing.InOutQuad
    }
}
