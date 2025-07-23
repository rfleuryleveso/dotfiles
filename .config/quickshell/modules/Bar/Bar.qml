import QtQuick
import QtQuick.Effects
import QtQuick.Layouts
// Bar.qml
import Quickshell
import Quickshell.Hyprland
import Quickshell.Io
import Quickshell.Widgets

Scope {
    id: root

    property string time

    Variants {
        model: Quickshell.screens

        PanelWindow {
            id: bar

            property var modelData

            screen: modelData
            implicitWidth: 50
            color: "transparent"

            anchors {
                top: true
                left: true
                bottom: true
            }

            margins {
                left: 10
                top: 10
                bottom: 10
            }

            MultiEffect {
                blur: 1
                blurMultiplier: 8
                blurEnabled: true
                shadowEnabled: true
                shadowColor: "#ff0000"
            }

            Rectangle {
                color: "#caeff1f5"
                radius: 12

                anchors {
                    fill: parent
                }

                ColumnLayout {
                    anchors.fill: parent
                    anchors.topMargin: 20
                    anchors.bottomMargin: 20
                    spacing: 10

                    Rectangle {
                        Layout.preferredHeight: parent.width / 2
                        Layout.alignment: Qt.AlignTop | Qt.AlignCenter
                        Layout.preferredWidth: parent.width / 2
                        radius: 20000
                        color: "#dd7878"

                        IconImage {
                            source: Qt.resolvedUrl("file://///home/rfleuryleveso/.config/quickshell/archlinux-logo.svg")
                            asynchronous: true
                            anchors.fill: parent
                            anchors.margins: 5
                        }

                    }

                    Rectangle {
                        id: workspaces_list

                        color: "#d8bcc0cc"
                        radius: 12
                        Layout.alignment: Qt.AlignTop | Qt.AlignCenter
                        Layout.preferredWidth: parent.width / 2
                        Layout.preferredHeight: (Hyprland.workspaces.values.length - 1) * ((width) + 2) + (12 * 2)

                        Column {
                            Layout.preferredWidth: parent.width
                            spacing: 2

                            Repeater {
                                model: Hyprland.workspaces
                                Layout.preferredWidth: parent.width

                                Rectangle {
                                    required property HyprlandWorkspace modelData

                                    width: workspaces_list.width
                                    height: workspaces_list.width
                                    radius: workspaces_list.radius
                                    color: Hyprland.focusedWorkspace == modelData ? "#a07287fd" : "transparent"

                                    MouseArea {
                                        anchors.fill: parent
                                        onClicked: {
                                            Hyprland.dispatch(`workspace ${modelData.id}`);
                                        }
                                    }

                                    Text {
                                        horizontalAlignment: Text.AlignHCenter
                                        verticalAlignment: Text.AlignVCenter
                                        height: parent.height
                                        width: parent.width
                                        text: parent.modelData.id
                                    }

                                }

                            }

                            move: Transition {
                                NumberAnimation {
                                    properties: "x,y"
                                    duration: 10
                                }

                            }

                        }

                    }

                    Rectangle {
                        Layout.fillHeight: true
                    }

                }

            }

        }

    }

}
