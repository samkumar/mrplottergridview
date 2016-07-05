import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3
import MrPlotter 0.1
import "mr-plotter-layouts" as MrPlotterLayouts

Rectangle {
    id: toplevel
    color: "red"

    Component.onCompleted: {
        var uuids = ["e14bc2c9-e277-5239-9e60-8fa839394c01",
                     "7b79e5c6-43d4-5015-8069-5c2b59948b96",
                     "0ef84a93-ad79-5b8a-a540-49c0860f5c61",
                     "4c398fa2-0492-5980-a125-eb3fe162d788",
                     "5b0897db-365e-573c-bf6c-07f21b6add2b",
                     "932faf05-aa2a-5f2d-ae05-f5094ba61965",
                     "01e5d240-101b-5e8b-997a-745c4bb829a6",
                     "600321aa-f439-54ce-84d1-debbf4b525e9",
                     "3009c1db-0aad-5ddc-866b-13d2887ec14e",
                     "9383bf45-cbc6-5aca-9af0-a8c84851368f",
                     "e1a6abbc-ddbd-50da-896e-b8b27e1d5ff1",
                     "acc3d26e-1786-5812-aba0-9e5ec0d0d556",
                     "0c355e60-5a65-5164-a63e-e4f3b263aadc",
                     "9823fe2e-b4d3-5968-8c82-8db9f9d456e3",
                     "c6333250-9413-56b7-a7d6-6abde7795d2d",
                     "20b30d07-2c58-5a27-95fd-e4cec45dbe49",
                     "f4cdafc9-09c3-5e05-bb75-388caa2eba32",
                     "7df94068-27ad-5582-8fda-cb1dd5582f6c",
                     "579f3a15-c06f-5095-a42d-d0c5fa06ab58",
                     "6a0b6175-6e6e-561a-8456-5291bd07a015",
                     "ce561710-85e4-5234-b331-d0ee18c9fe68",
                     "7ddbf00b-81b8-5a43-b07a-758ab8b19f93",
                     "f8db9960-6a3c-5add-aefd-d84ce4b73794",
                     "b9e7fce8-dc1e-5522-9669-2a5f59e7e310",
                     "e622ff34-3b29-50e4-ae7a-f85aa2162b02",
                     "4d05b811-008f-53a9-a6cb-72873daed2ca",
                     "8e1d4960-b571-5d6e-8fa2-2b3366dae28b",
                     "9ddfda18-718a-515a-9b0a-61b0b25a36e6",
                     "9db7c7d0-af36-51c1-8179-48b2e75783da",
                     "21b6ec38-1ae7-525d-a277-c2fc6f7881cb",
                     "12c82020-e09c-5eef-a7ef-3d7da9165116",
                     "5f4f9a1e-6019-588c-989e-e6787cc83ae0",
                     "8a8ce93d-35bf-53df-92f0-d5467bd5c779",
                     "aa29ac7c-6372-50f6-bfbf-8e888e526402",
                     "9b8481fc-2029-5b33-8765-ab6b0d5636c7",
                     "517d1676-73c5-5fa1-801c-355c183fa587",
                     "6cff5973-4689-5d5b-b14b-91a76f7e3943",
                     "893abb4c-2ad0-522f-8683-f780d4d69fd7",
                     "53ae9644-0ad8-5010-86f5-acf7f466f0af",
                     "fbdf45b0-499a-578d-80e0-c94f50ce75af",
                     "e0ca5c25-09a1-51e6-9dca-03262243cb48",
                     "1a019f41-dd39-563d-9857-49a28e38385c",
                     "9a8bd1a0-52f9-5819-ae5b-7ef57d261ee2",
                     "8eb81bb1-c487-5213-bf09-6a7141941fdc",
                     "075b4170-e99f-543c-8182-b29612000d7a",
                     "a2a3b60e-764c-5fcd-9912-3095420e2ee4",
                     "3a1e6e89-b4ff-5f0e-bf72-ea6efad9b6d2",
                     "114e57ec-05e0-5fb6-8f21-77dc9c1da2f9",
                     "c3940359-3a9e-5945-86f2-a8e7c4cca444",
                     "4ad953aa-86d2-527d-98fb-d19bc05281a5",
                     "9caa2b81-a75c-594e-9b61-d25254725e47",
                     "bb41ba6e-a2a5-5994-90bb-66961e2e80b7",
                     "f06b6a1f-ed13-520f-9109-59281e206a28",
                     "78fe3cd9-57cb-5c8c-91bd-8f4d972e3c94",
                     "d9b86504-ccb6-58f5-b72e-193319d3d5f6",
                     "905b9cbc-5588-546f-87ec-86d3399abf7d",
                     "7abe02a9-498d-521b-b21b-37ff4c3585c3",
                     "c7b53d42-a1a1-5ac0-9a42-e6f6dfa1105c",
                     "d29e3467-9613-504f-a6fb-7cd5233f1f0b",
                     "00b4fe10-aa04-5234-925e-1d681533ea3c",
                     "97255941-7413-5de5-abf0-d03072866ad9",
                     "77636e12-f344-5d7c-9815-ed1b8a25e90c",
                     "0088ac5e-e07b-589f-90b2-e1d0f18020df",
                     "833a4cd9-c57e-55c1-a40b-75ad7036980d",
                     "9cdccf8b-ab3d-5c9a-9a68-1482f4a73eec",
                     "8f105a7c-6cf2-5f7f-b5c9-f8753a803051",
                     "81cf28e7-646b-5c61-a2dd-cb5e99d32e59",
                     "198dc12f-31f1-5545-94f9-211008fc4c8b",
                     "d4edcc9b-fc97-5015-87c1-1e0902d7b8d2",
                     "e5f220f0-56fa-50ba-a7d8-ff6ed20c3ed6",
                     "2766e74e-ecc4-5724-9693-8780a24c12a9",
                     "d719f517-4d1b-5053-b2f9-85f3cc762c85"];

        for (var i = 0; i < 10; i++)
        {
            streams.append({ "suuid": uuids[i] });
        }
    }

    ListModel {
        id: streams
    }

    GridView {
        id: view
        anchors.fill: parent
        cellWidth: 300
        cellHeight: 200

        model: streams
        delegate: MrPlotterLayouts.Sparkline {
            uuid: suuid
            archiver: "gabe.ns/s.giles/0/i.archiver"
            autozoomOnLoad: true
            color: "blue"
            scrollZoomable: true

            width: view.cellWidth
            height: view.cellHeight
        }
    }

}
