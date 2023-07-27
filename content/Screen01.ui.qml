/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick
import QtQuick.Controls
import QtQuick3D
import Demo3dProject
import Quick3DAssets.Scene 1.0
import QtQuick.Timeline 1.0

Rectangle {
    width: Constants.width
    height: Constants.height

    color: Constants.backgroundColor

    View3D {
        id: view3D
        anchors.fill: parent
        camera: sceneCamera

        environment: sceneEnvironment

        SceneEnvironment {
            id: sceneEnvironment
            antialiasingMode: SceneEnvironment.MSAA
            antialiasingQuality: SceneEnvironment.High
        }

        Node {
            id: scene
            DirectionalLight {
                id: directionalLight
                x: -14555.514
                y: -4191.2
                eulerRotation.z: 0.00001
                eulerRotation.y: -32.32452
                eulerRotation.x: 0
                castsShadow: true
                brightness: 2.31
                z: -12572.0459
            }

            PerspectiveCamera {
                id: sceneCamera
                x: -17.303
                y: 78.905
                eulerRotation.z: -1.67222
                eulerRotation.y: 1.32378
                eulerRotation.x: -14.48843
                z: 251.98862
            }

            Scene {
                id: robot
                x: -46.721
                y: -11.946
                eulerRotation.y: slider.value
                eulerRotation.z: 0
                z: 5.91225
            }

            Model {
                id: cube
                x: 123.599
                y: 35.167
                opacity: 0.406
                source: "#Sphere"
                eulerRotation.z: -0
                eulerRotation.y:  slider.value
                eulerRotation.x: 0
                scale.z: 3
                scale.y: 3
                scale.x: 2
                z: -103.66416
                materials: cubeMaterial
                DefaultMaterial {
                    id: cubeMaterial
                    diffuseColor: "blue"
                }
            }
        }

        Slider {
            id: slider
            opacity: 0
            anchors.fill: parent
            to: 180
            from: -180
            value: 0.5
        }
    }


}

/*##^##
Designer {
    D{i:0;formeditorZoom:0.33}D{i:4}D{i:5}D{i:6}D{i:7}D{i:3}D{i:9}D{i:10}
}
##^##*/
