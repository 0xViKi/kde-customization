/*
 *   Copyright 2016 David Edmundson <davidedmundson@kde.org>
 *
 *   This program is free software; you can redistribute it and/or modify
 *   it under the terms of the GNU Library General Public License as
 *   published by the Free Software Foundation; either version 2 or
 *   (at your option) any later version.
 *
 *   This program is distributed in the hope that it will be useful,
 *   but WITHOUT ANY WARRANTY; without even the implied warranty of
 *   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *   GNU General Public License for more details
 *
 *   You should have received a copy of the GNU Library General Public
 *   License along with this program; if not, write to the
 *   Free Software Foundation, Inc.,
 *   51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */

import QtQuick 2.2
import org.kde.plasma.core 2.0 as PlasmaCore
import org.kde.plasma.components 2.0 as PlasmaComponents
import QtGraphicalEffects 1.0

Item {
    id: root
    property alias text: label.text
    property alias iconSource: icon.source
    property alias containsMouse: mouseArea.containsMouse
    property alias font: label.font
    signal clicked
    activeFocusOnTab: true

    property int iconSize: units.gridUnit * 2.5

    implicitWidth: Math.max(iconSize + units.largeSpacing * 2, label.contentWidth) 
    implicitHeight: iconSize + units.smallSpacing + label.implicitHeight 

    PlasmaCore.IconItem {
        id: icon
        anchors {
            top: parent.top
            horizontalCenter: parent.horizontalCenter
        }
        width: iconSize
        height: iconSize

        colorGroup: PlasmaCore.ColorScope.colorGroup
        active: mouseArea.containsMouse || root.activeFocus
    }
    PlasmaComponents.Label {
        id: label
        anchors {
            top: icon.bottom
            topMargin: units.smallSpacing
            left: parent.left
            right: parent.right
        }
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignTop
        wrapMode: Text.WordWrap
        font.underline: root.activeFocus
    }

    DropShadow {
        anchors.fill: label
        source: label
        verticalOffset: 2
        color: "#000000"
        radius: 3
        samples: 6
        }

    MouseArea {
        id: mouseArea
        hoverEnabled: true
        onClicked: root.clicked()
        anchors.fill: parent
    }

    Keys.onEnterPressed: clicked()
    Keys.onReturnPressed: clicked()
    Keys.onSpacePressed: clicked()

    Accessible.onPressAction: clicked()
    Accessible.role: Accessible.Button
    Accessible.name: label.text
}
