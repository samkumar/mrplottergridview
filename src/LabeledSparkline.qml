import QtQuick 2.0
import "mr-plotter-layouts" as MrPlotterLayouts

Item {
    property alias uuid: plot.uuid
    property alias archiver: plot.archiver
    property alias autozoomOnLoad: plot.autozoomOnLoad
    property alias color: plot.color
    property alias timeDomain: plot.timeDomain
    property alias scrollZoomable: plot.scrollZoomable
    property alias label: label.text

    MrPlotterLayouts.Sparkline {
        id: plot
        x: 0
        y: 0
        width: parent.width
        height: parent.height - label.height
    }
    Text {
        id: label
        x: 0
        y: plot.height
        width: parent.width
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }
}
