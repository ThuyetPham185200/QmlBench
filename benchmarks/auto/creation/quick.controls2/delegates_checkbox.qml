import QtQuick 2.0
import QmlBench 1.0
import QtQuick.Controls 2.0

// Tests the creation of QQC2's BusyIndicator type.
Benchmark {
    id: root
    BusyIndicator {
        x: QmlBench.getRandom() * root.width - width
        y: QmlBench.getRandom() * root.height - height
        running: 1000 % 2
    }
}
