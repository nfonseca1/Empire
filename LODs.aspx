<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LODs.aspx.cs" Inherits="LODs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="cphBody" Runat="Server">
    <!--Divs with images and text-->
    <img src="/images/debris.png" id="img-debris" alt="" />
    <div id="headerLODs"><p style="font-size:65px;color:#e0b311;font-weight:900;">&emsp;&emsp;&emsp;&emsp;LOCATIONS OF DEPLOYMENT</p></div>
    <div class="LOD">
        <div class="divLOD" style="height:70%;"><img src="/images/deathStarLOD.jpg" class="imgLOD" alt="" /></div>
        <div class="divLOD"><p class="titleLOD">&emsp;&emsp; Death Star II</p><p class="textLOD">Imperials are obligated to perform various training, data analytics and communication maneuvers among the massive, nearly completed station.</p></div>
    </div>
    <div class="LOD">
        <div class="divLOD" style="height:70%;"><img src="/images/endorLOD.jpg" class="imgLOD" alt="" /></div>
        <div class="divLOD"><p class="titleLOD">Forest Moon of Endor</p><p class="textLOD">Troopers are stationed in camps with 74-Z Speeder Bikes and are tasked to protect the various shield generators on the Moon.</p></div>
    </div>
    <div class="LOD">
        <div class="divLOD" style="height:70%;"><img src="/images/tatooineLOD.jpg" class="imgLOD" alt="" /></div>
        <div class="divLOD"><p class="titleLOD">&emsp;&emsp;&nbsp; Tatooine</p><p class="textLOD">Soldiers are placed in squads among the desert planet to help mine resources and watch over the town of Mos Eisley.</p></div>
    </div>
    <div class="LOD">
        <div class="divLOD" style="height:70%;"><img src="/images/nabooLOD.jpg" class="imgLOD" alt="" /></div>
        <div class="divLOD"><p class="titleLOD">&emsp;&emsp;&emsp;Naboo</p><p class="textLOD">Military personnel are placed in headquarters to perform mission critical analytics and training.</p></div>
    </div>
    <div class="LOD">
        <div class="divLOD" style="height:70%;"><img src="/images/hothLOD.jpg" class="imgLOD" alt="" /></div>
        <div class="divLOD"><p class="titleLOD">&emsp;&emsp;&emsp;Hoth</p><p class="textLOD">Squads are stationed in various camps to collect data and remaining resources from the Battle of Hoth.</p></div>
    </div>
    <div class="LOD">
        <div class="divLOD" style="height:70%;"><img src="/images/cloudCityLOD.png" class="imgLOD" alt="" /></div>
        <div class="divLOD"><p class="titleLOD">&emsp;&emsp;Cloud City</p><p class="textLOD">Platoons monitor Bespin's Cloud City and use it as a research and development station.</p></div>
    </div>
    <div class="LOD">
        <div class="divLOD" style="height:70%;"><img src="/images/sullustLOD.png" class="imgLOD" alt="" /></div>
        <div class="divLOD"><p class="titleLOD">&emsp;&emsp;Sullust</p><p class="textLOD">Those among the scorching planet help to acquire fuel and resources from mining and development facilities to support the military.</p></div>
    </div>
</asp:Content>

