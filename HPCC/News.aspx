<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Default.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="HPCC.News" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContent" runat="server">
 <style type="text/css">
     #Content
     {
      width:980px;
      margin: 0 auto;
     
      min-height:400px;
         
      }
     #left
     {
        width:290px;
        float:left;
        
         min-height:600px;
         background-image:url(img/left.jpg);
      }
      #right
      {
          width:690px;
           float:right;
         min-height:400px;
      }
 .title
 {
     text-align:center;
     font-weight:bolder;
     margin-top:10px;
     border:2px dotted #006eb5;
      
     }
     .center
     {
  text-align:center;
        }
        table tr td
        {
            
         border-color:Black;
         border-style:solid;   
         border-width:2px;
         width:690px;
         }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PageContent" runat="server">
<div id="Content">
<div id="left">

</div>
<div id="right">
<div id="Title" class="title">
    <asp:Label ID="txtTitle" runat="server"></asp:Label>
</div>
<div id="Author" class="center">
   发布者: <asp:Label ID="txtAuthor" runat="server" ></asp:Label>&nbsp;&nbsp;
   点击次数: <asp:Label ID="txtClick" runat="server" ></asp:Label>次&nbsp;&nbsp;
   发布时间: <asp:Label ID="txtTime"   runat="server" ></asp:Label>
   <hr />
</div>
<div id="Text">
    <asp:Label ID="txtText" runat="server">
    <div class="clear"></div>
 <table align="left">
	<tbody>
		<tr>
			<td colspan="5" >
				<p align="center">
					<strong>硬件信息</strong></p>
			</td>
		</tr>
		<tr>
			<td colspan="2" >
				<p>
					&nbsp;</p>
			</td>
			<td >
				<p>
					&nbsp;Cpu&nbsp;&nbsp;</p>
			</td>
			<td >
				<p>
					硬盘</p>
			</td>
			<td >
				<p>
					内存</p>
			</td>
		</tr>
		<tr>
			<td >
				<p>
					<strong>登录节点</strong></p>
			</td>
			<td >
				<p>
					<strong>Node1</strong></p>
			</td>
			<td >
				<p>
					8&times;2.1GHz</p>
			</td>
			<td >
				<p>
					146G SAS</p>
			</td>
			<td >
				<p>
					8G</p>
			</td>
		</tr>
		<tr>
			<td >
				<p>
					<strong>I/O</strong><strong>节点</strong></p>
			</td>
			<td >
				<p>
					<strong>Node2</strong></p>
			</td>
			<td >
				<p>
					8&times;2.1GHz</p>
			</td>
			<td >
				<p>
					146G SAS</p>
			</td>
			<td >
				<p>
					8G</p>
			</td>
		</tr>
		<tr>
			<td >
				<p>
					<strong>文件服务器</strong></p>
			</td>
			<td >
				<p>
					<strong>Node3</strong></p>
			</td>
			<td >
				<p>
					4&times;2.0GHz</p>
			</td>
			<td >
				<p>
					4&times;500G SATA（RAID 5 剩余1500G）Windows分区（700G） LINUX分区（750G）</p>
			</td>
			<td >
				<p>
					4G</p>
			</td>
		</tr>
		<tr>
			<td >
				<p>
					<strong>胖节点</strong></p>
			</td>
			<td  >
				<p>
					<strong>Node4</strong></p>
			</td>
			<td  >
				<p>
					32&times;2.2GHz</p>
			</td>
			<td  >
				<p>
					3&times;146G SAS(RAID 5 剩余293G) Windows分区 100G&nbsp;&nbsp; LINUX分区 150G</p>
			</td>
			<td  >
				<p>
					32G</p>
			</td>
		</tr>
		<tr>
			<td >
				<p>
					<strong>计算节点</strong></p>
			</td>
			<td  >
				<p>
					<strong>Node5-16</strong></p>
			</td>
			<td  >
				<p>
					8&times;2.1GHz</p>
			</td>
			<td  >
				<p>
					146G SAS</p>
			</td>
			<td  >
				<p>
					8G</p>
			</td>
		</tr>
		<tr>
			<td >
				<p>
					<strong>磁盘阵列</strong></p>
			</td>
			<td  >
				<p>
					&nbsp;</p>
			</td>
			<td  >
				<p>
					&nbsp;</p>
			</td>
			<td  >
				<p>
					8&times;500G SATA（RAID 6＋1 剩余 2500G）700G接到node2 900G接到node4 800G接到node4</p>
			</td>
			<td  >
				<p>
					&nbsp;</p>
			</td>
		</tr>
	</tbody>
</table>
<p>
曙光集群系统由16个节点构成，node1为登陆/管理节点，cpu 8×2.1GHz 内存 8G，硬盘146G SAS，用于用户的登录，node2为I/O节点，cpu 8×2.1GHz 内存 8G，硬盘146G SAS，用于连接磁盘阵列，node3为ftp服务器，cpu 4×2.0GHz 内存 4G，硬盘4×500G SATA（RAID 5 剩余1500G）Windows分区（700G） LINUX分区（750G），供用户下载上传文件，node4是胖节点，cpu 32×2.2GHz 内存 32G，硬盘3×146G SAS(RAID 5 剩余293G) Windows分区 100G   LINUX分区 150G，node5-node16都是计算节点，cpu 8×2.1GHz 内存 8G，硬盘146G SAS，用于用户作业的计算，具有强大的计算能力和I/O能力。</p>
<table>
	<tbody>
		<tr>
			<td colspan="4">
				<p align="center">
					<strong>软件信息</strong></p>
			</td>
		</tr>
		<tr>
			<td >
				<p>
					<strong>分类</strong></p>
			</td>
			<td >
				<p>
					<strong>名称</strong></p>
			</td>
			<td >
				<p>
					<strong>安装路径</strong></p>
			</td>
			<td >
				<p>
					<strong>版本</strong></p>
			</td>
		</tr>
		<tr>
			<td >
				<p>
					<strong>操作系统</strong></p>
			</td>
			<td >
				<p>
					GNU/Linux</p>
			</td>
			<td>
				<p>
					&nbsp;</p>
			</td>
			<td >
				<p>
					2.6.9-67.ELsmp</p>
			</td>
		</tr>
		<tr>
			<td >
				<p>
					<strong>编辑器</strong></p>
			</td>
			<td >
				<p>
					pgi编译器</p>
			</td>
			<td >
				<p>
					/public1/software/pgi</p>
			</td>
			<td >
				<p>
					7.1.4</p>
			</td>
		</tr>
		<tr>
			<td rowspan="4">
				<p>
					&nbsp;</p>
				<p>
					<strong>MPI</strong></p>
			</td>
			<td >
				<p>
					openmpi-gnu</p>
			</td>
			<td >
				<p>
					/public1/software/mpi/openmpi128-gnu</p>
			</td>
			<td >
				<p>
					openmpi1.2.8</p>
			</td>
		</tr>
		<tr>
			<td >
				<p>
					openmpi-pgi</p>
			</td>
			<td >
				<p>
					/public1/software/mpi/openmpi128-pgi</p>
			</td>
			<td >
				<p>
					openmpi1.2.8</p>
			</td>
		</tr>
		<tr>
			<td >
				<p>
					mpich－gnu</p>
			</td>
			<td >
				<p>
					/public1/software/mpi/mpich-gnu</p>
			</td>
			<td>
				<p>
					mpich1.2.7</p>
			</td>
		</tr>
		<tr>
			<td >
				<p>
					mpich-pgi</p>
			</td>
			<td >
				<p>
					/public1/software/pgi/linux86-64/7.1/mpi/mpich/</p>
			</td>
			<td>
				<p>
					mpich1.2.7</p>
			</td>
		</tr>
		<tr>
			<td rowspan="4" >
				<p>
					<strong>mathlib</strong><strong>数学库</strong></p>
			</td>
			<td >
				<p>
					Gotoblas－gnu</p>
			</td>
			<td >
				<p>
					/public1/software/mathlib/llibgoto_barcelona-r1.26.a</p>
			</td>
			<td >
				<p>
					Gotoblas1.26</p>
			</td>
		</tr>
		<tr>
			<td >
				<p>
					lapack－gnu</p>
			</td>
			<td >
				<p>
					/public1/software/mathlib/lapack_LINUX.a</p>
			</td>
			<td >
				<p>
					&nbsp;</p>
			</td>
		</tr>
		<tr>
			<td >
				<p>
					fftw2-gnu</p>
			</td>
			<td >
				<p>
					/public1/software/mathlib/fftw215</p>
			</td>
			<td >
				<p>
					fftw2.1.5</p>
			</td>
		</tr>
		<tr>
			<td>
				<p>
					fftw3－gnu</p>
			</td>
			<td >
				<p>
					/public1/software/mathlib/fftw312</p>
			</td>
			<td >
				<p>
					fftw3.1.2</p>
			</td>
		</tr>
		<tr>
			<td >
				<p>
					<strong>应用软件</strong></p>
			</td>
			<td >
				<p>
					namd</p>
			</td>
			<td >
				<p>
					/public1/software/namd</p>
			</td>
			<td >
				<p>
					2.6</p>
			</td>
		</tr>
		<tr>
			<td >
				<p>
					<strong>作业调度系统</strong></p>
			</td>
			<td >
				<p>
					Torque（PBS）</p>
			</td>
			<td>
				<p>
					/usr/local &nbsp;&nbsp;2.6.9-67</p>
			</td>
			<td >
				<p>
					6.2</p>
			</td>
		</tr>
	</tbody>
</table>

    </asp:Label>
</div>
</div>

</div>
<div class="clear"></div>
</asp:Content>
