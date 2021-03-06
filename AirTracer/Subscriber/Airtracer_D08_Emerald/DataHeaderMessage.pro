<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Data Control Burst Messages">
	<ATHeader>
		<PrimaryKeyField Name="Data Control Burst Messages" Size="1">0x0007</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Unconfirmed Data Header" Size="24" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="DPF - Data Packet Format" Pos="0" Size="4" BitFlag="true" BitPos="0">
			<Comment>Is used for data packet identification </Comment>
			<Value Description="Unconfirmed Delivery">0x0002<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="0" Size="2" BitFlag="true" BitPos="1">
			<Comment>Reserved for future used</Comment>
			<Data/>
		</Field>
		<Field Name="A - Response Requested" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment>To indicate whether the confirmation of this packet is desired or not. </Comment>
			<Value Description="No Response">0x0000<Comment></Comment></Value>
			<Value Description="Response Required">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="G/I - Group/Individual Destination Address" Pos="0" Size="1" BitFlag="true" BitPos="3">
			<Comment>Group or Individual destination address</Comment>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
			<Value Description="Group">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="POC - Pad Octet Count" Pos="1" Size="4" BitFlag="true" BitPos="0">
			<Comment>Specifies the number of pad octets which have been appended to the user data octets to form an integer number of blocks</Comment>
			<Data/>
		</Field>
		<Field Name="SAP - Service Access Point Identifer" Pos="1" Size="4" BitFlag="true" BitPos="1">
			<Comment>Identifies the Service Access Point to which the data is directed.</Comment>
			<Value Description="Unified Data Transport (UDT)">0x0000<Comment></Comment></Value>
			<Value Description="TCP/IP Header Compression">0x0002<Comment></Comment></Value>
			<Value Description="UDP/IP Header Compression">0x0003<Comment></Comment></Value>
			<Value Description="IP Based Packet Data">0x0004<Comment></Comment></Value>
			<Value Description="Address Resolution Protocol (ARP)">0x0005<Comment></Comment></Value>
			<Value Description="Proprietary Packet Data">0x0009<Comment></Comment></Value>
			<Value Description="Short Data">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="Destination Logical Link ID" Pos="2" Size="3" BitFlag="false">
			<Comment>Identifies the destination address to which the packet is directed </Comment>
			<Data/>
		</Field>
		<Field Name="Source Logical Link ID" Pos="3" Size="3" BitFlag="false">
			<Comment>Identifiesthe source address which sent the packet </Comment>
			<Data/>
		</Field>
		<Field Name="BF - Blocks to Follow" Pos="4" Size="7" BitFlag="true" BitPos="0">
			<Comment>Specifies the number of blocks in the packet not including the header block </Comment>
			<Data/>
		</Field>
		<Field Name="F - Full Message Flag" Pos="4" Size="1" BitFlag="true" BitPos="1">
			<Comment>Used in the receiver to signify that the Pad Octet Count information element indicates the amount of data being transported in the complete packet</Comment>
			<Value Description="Subsequent tries">0x0000<Comment></Comment></Value>
			<Value Description="First try for the complete packet">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FSN - Fragment Sequence Number" Pos="5" Size="4" BitFlag="true" BitPos="0">
			<Comment>To consecutively number message fragments that together make up a longer data message </Comment>
			<Data/>
		</Field>
		<Field Name="NS - Send Sequence Number" Pos="5" Size="3" BitFlag="true" BitPos="1">
			<Comment>Specifies the send sequence number of the packet </Comment>
			<Data/>
		</Field>
		<Field Name="S - Re-Syncronise Flag" Pos="5" Size="1" BitFlag="true" BitPos="2">
			<Comment>To re-synchronise the physical sub-layer sequence numbers </Comment>
			<Value Description="The receiver should not sync its sequence numbers with those in the header">0x0000<Comment></Comment></Value>
			<Value Description="The receiver should sync its sequence numbers with those in the header">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Header CRC" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="7" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="8" Size="4" BitFlag="true" BitPos="1">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="9" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Data Second Header" Size="24" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="DPF - Data Packet Format" Pos="0" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Data Second Header">0x000F<Comment></Comment></Value>
		</Field>
		<Field Name="SAP - Service Access Point Identifier" Pos="0" Size="4" BitFlag="true" BitPos="1">
			<Comment>Identifies the Service Access Point to which the data is directed.</Comment>
			<Value Description="Unified Data Transport (UDP)">0x0000<Comment></Comment></Value>
			<Value Description="TCP/IP Header Compression">0x0002<Comment></Comment></Value>
			<Value Description="UDP/IP Header Compression">0x0003<Comment></Comment></Value>
			<Value Description="IP Based Packet Data">0x0004<Comment></Comment></Value>
			<Value Description="Address Resolution Protocol (ARP)">0x0005<Comment></Comment></Value>
			<Value Description="Proprietary Packet Data">0x0009<Comment></Comment></Value>
			<Value Description="Short Data">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Opcode" Pos="2" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Algorithm ID" Pos="2" Size="3" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved01" Pos="2" Size="1" BitFlag="true" BitPos="4">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Key ID" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved02" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="32-bit Long IV" Pos="5" Size="4" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Header CRC" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="7" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data type" Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="8" Size="4" BitFlag="true" BitPos="1">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="9" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Confirmed Data Header" Size="24" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="DPF - Data Packet Format" Pos="0" Size="4" BitFlag="true" BitPos="0">
			<Comment>Is used for data packet identification </Comment>
			<Value Description="Confirmed Delivery">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="0" Size="2" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="A - Response Requested" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment>To indicate whether the confirmation of this packet is desired or not. </Comment>
			<Value Description="No Response">0x0000<Comment></Comment></Value>
			<Value Description="Response Required">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="G/I - Group/Individual Destination Address" Pos="0" Size="1" BitFlag="true" BitPos="3">
			<Comment>Group or Individual destination address</Comment>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
			<Value Description="Group">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="POC - Pad Octet Count " Pos="1" Size="4" BitFlag="true" BitPos="0">
			<Comment>Specifies the number of pad octets which have been appended to the user data octets to form an integer number of blocks</Comment>
			<Data/>
		</Field>
		<Field Name="SAP - Service Access Point Identifier" Pos="1" Size="4" BitFlag="true" BitPos="1">
			<Comment>Identifies the Service Access Point to which the data is directed.</Comment>
			<Value Description="Unified Data Transport (UDT)">0x0000<Comment></Comment></Value>
			<Value Description="TCP/IP Header Compression">0x0002<Comment></Comment></Value>
			<Value Description="UDP/IP Header Compression">0x0003<Comment></Comment></Value>
			<Value Description="IP Based Packet data">0x0004<Comment></Comment></Value>
			<Value Description="Address Resolution Protocol (ARP)">0x0005<Comment></Comment></Value>
			<Value Description="Proprietary Packet Data">0x0009<Comment></Comment></Value>
			<Value Description="Short Data">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="Destination Logical Link ID" Pos="2" Size="3" BitFlag="false">
			<Comment>Identifies the destination address to which the packet is directed </Comment>
			<Data/>
		</Field>
		<Field Name="Source Logical Link ID" Pos="3" Size="3" BitFlag="false">
			<Comment>Identifiesthe source address which sent the packet </Comment>
			<Data/>
		</Field>
		<Field Name="BF - Blocks to Follow" Pos="4" Size="7" BitFlag="true" BitPos="0">
			<Comment>Specifies the number of blocks in the packet not including the header block </Comment>
			<Data/>
		</Field>
		<Field Name="F - Full Message Flag" Pos="4" Size="1" BitFlag="true" BitPos="1">
			<Comment>Used in the receiver to signify that the Pad Octet Count information element indicates the amount of data being transported in the complete packet</Comment>
			<Value Description="Subsequent tries">0x0000<Comment></Comment></Value>
			<Value Description="First try for the complete packet">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FSN - Fragment Sequence Number" Pos="5" Size="4" BitFlag="true" BitPos="0">
			<Comment>To consecutively number message fragments that together make up a longer data message </Comment>
			<Data/>
		</Field>
		<Field Name="NS - Send Sequence Number" Pos="5" Size="3" BitFlag="true" BitPos="1">
			<Comment>Specifies the send sequence number of the packet </Comment>
			<Data/>
		</Field>
		<Field Name="S - Re-Synchronise Flag" Pos="5" Size="1" BitFlag="true" BitPos="2">
			<Comment>To re-synchronise the physical sub-layer sequence numbers </Comment>
			<Value Description="The receiver should not sync its sequence numbers with those in the header">0x0000<Comment></Comment></Value>
			<Value Description="The receiver should sync its sequence numbers with those in the header">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Header CRC" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="7" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="8" Size="4" BitFlag="true" BitPos="1">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="9" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Response Data Header" Size="24" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="Format" Pos="0" Size="4" BitFlag="true" BitPos="0">
			<Comment>Is used for data packet identification </Comment>
			<Value Description="Response Header Block">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="0" Size="2" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="A - Response Required" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment>To indicate whether the confirmation of this packet is desired or not. </Comment>
			<Value Description="No Response">0x0000<Comment></Comment></Value>
			<Value Description="Response Required">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="G/I - Group/Individual" Pos="0" Size="1" BitFlag="true" BitPos="3">
			<Comment>Group or Individual destination address</Comment>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
			<Value Description="Group">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="POC - Pad Octet Count" Pos="1" Size="4" BitFlag="true" BitPos="0">
			<Comment>Specifies the number of pad octets which have been appended to the user data octets to form an integer number of blocks</Comment>
			<Data/>
		</Field>
		<Field Name="SAP - Service Access Point Identifier" Pos="1" Size="4" BitFlag="true" BitPos="4">
			<Comment>Identifies the Service Access Point to which the data is directed.</Comment>
			<Value Description="Unified Data Transport (UDT)">0x0000<Comment></Comment></Value>
			<Value Description="TCP/IP Header Compression">0x0002<Comment></Comment></Value>
			<Value Description="UDP/IP Header Compression">0x0003<Comment></Comment></Value>
			<Value Description="IP Based Packet Data">0x0004<Comment></Comment></Value>
			<Value Description="Address Resolution Protocol (ARP)">0x0005<Comment></Comment></Value>
			<Value Description="Proprietary Packet Data">0x0009<Comment></Comment></Value>
			<Value Description="Short Data">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="Destination Logical Link ID" Pos="2" Size="3" BitFlag="false">
			<Comment>Identifies the destination address to which the packet is directed </Comment>
			<Data/>
		</Field>
		<Field Name="Source Logical Link ID" Pos="3" Size="3" BitFlag="false">
			<Comment>Identifiesthe source address which sent the packet </Comment>
			<Data/>
		</Field>
		<Field Name="BF - Blocks to Follow" Pos="4" Size="7" BitFlag="true" BitPos="0">
			<Comment>Specifies the number of blocks in the packet not including the header block </Comment>
			<Data/>
		</Field>
		<Field Name="F - Full Message Flag" Pos="4" Size="1" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Value Description="Subsequent tries">0x0000<Comment></Comment></Value>
			<Value Description="First try for the complete packet">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="5" Size="3" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Class and Type" Pos="5" Size="5" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="All Blocks Successfully Received">0x0001<Comment></Comment></Value>
			<Value Description="Illegal Format">0x0008<Comment></Comment></Value>
			<Value Description="Packet Error Response">0x0009<Comment></Comment></Value>
			<Value Description="Memory Full">0x000A<Comment></Comment></Value>
			<Value Description="Out of Logical Sequence Response">0x000B<Comment></Comment></Value>
			<Value Description="Invalid SAP/Undelivered Packet">0x000C<Comment></Comment></Value>
			<Value Description="Out of Sequence Response">0x000D<Comment></Comment></Value>
			<Value Description="Invalid User, Disallowed by System">0x000E<Comment></Comment></Value>
			<Value Description="Selective Retry for Some Blocks">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Header CRC" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="7" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="8" Size="4" BitFlag="true" BitPos="1">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused3" Pos="9" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="C_UDTHU Short Data Header Uplink" Size="24" SecondaryKeyField="1,12">
		<Comment>Short Data call uses Unified Data Transport (UDT) format for data transport. A UDT header defines the LC information and the UDT format of the payload contained in the appended blocks</Comment>
		<Field Name="Format" Pos="0" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="UDT Header Format">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="0" Size="2" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Answer Response" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Not expected">0x0000<Comment></Comment></Value>
			<Value Description="Required">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Individual/Talkgroup" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
			<Value Description="TalkGroup">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="UDT Format" Pos="1" Size="4" BitFlag="true" BitPos="0">
			<Comment>Specifies the format of the user or system data carried in UDTs for the UDT mechanism</Comment>
			<Value Description="UDT format">0x0007<Comment></Comment></Value>
		</Field>
		<Field Name="Service Access Point" Pos="1" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Value Description="UDT">0x0000<Comment>SAP is 0000 for UDTs</Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="2" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="5" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="UDT Appended_Blocks" Pos="8" Size="2" BitFlag="true" BitPos="0">
			<Comment>Number of Blocks appended to this UDT Header</Comment>
			<Value Description="1 Appended Data UDT block">0x0000<Comment></Comment></Value>
			<Value Description="2 Appended Data UDT block">0x0001<Comment></Comment></Value>
			<Value Description="3 Appended Data UDT block">0x0002<Comment></Comment></Value>
			<Value Description="4 Appended Data UDT block">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved2" Pos="8" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Pad Nibble" Pos="8" Size="5" BitFlag="true" BitPos="3">
			<Comment>Determines no of PN appended to the data to form integer no of blocks</Comment>
			<Data/>
		</Field>
		<Field Name="OPCODE" Pos="9" Size="6" BitFlag="true" BitPos="0">
			<Comment>UDT Header Opcode</Comment>
			<Value Description="UDT Header _ Uplink">0x001B<Comment></Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="9" Size="1" BitFlag="true" BitPos="6">
			<Comment>Indicates if the UDT information is protected by encryption</Comment>
		</Field>
		<Field Name="Supplementary_Flag" Pos="9" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="User Initiated Service">0x0000<Comment>This UDT Header is carrying the data for a user initiated service (Short Data, Data Polling)</Comment></Value>
			<Value Description="Supplementary Data">0x0001<Comment>This UDT Header is carrying supplementary data, supporting another Tier III service</Comment></Value>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="12" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="13" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Esync Header">0x0000<Comment></Comment></Value>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Terminator with LC">0x0002<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
			<Value Description="MBC Header">0x0004<Comment></Comment></Value>
			<Value Description="MBC Continuation">0x0005<Comment></Comment></Value>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
			<Value Description="Unconfirmed Data Continuation">0x0007<Comment></Comment></Value>
			<Value Description="Confirmed Data Continuation">0x0008<Comment></Comment></Value>
			<Value Description="Idle">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="13" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="14" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="C_UDTHD Short Data Header Downlink" Size="24" SecondaryKeyField="1,13">
		<Comment>Short Data call uses Unified Data Transport (UDT) format for data transport. A UDT header defines the LC information and the UDT format of the payload contained in the appended blocks</Comment>
		<Field Name="Format" Pos="0" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="UDT Header Format">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="UDT_Option_Flag" Pos="0" Size="1" BitFlag="true" BitPos="4">
			<Comment>If Service_Kind = 0000 (Voice Service) or Service_Kind = 0010 (Packet Data Service) , 0 and 1 represent OACSU and FOACSU respectively. Other services will be treat this bit as reserved bit.</Comment>
			<Value Description="OACSU( for voice and packet data)/ Reserved( for other services)">0x0000<Comment>Check if called MS is in radio contact and can accept this call immediately. </Comment></Value>
			<Value Description="FOACSU( for voice and packet data)">0x0001<Comment>Checks whether called MS is ready to accept speech or data call. (FOACSU)</Comment></Value>
		</Field>
		<Field Name="Emergency" Pos="0" Size="1" BitFlag="true" BitPos="5">
			<Comment>Determine if UDT is for an emergency call</Comment>
			<Value Description="Non Emergency Call">0x0000<Comment>This PDU is not supporting an emergency priority call</Comment></Value>
			<Value Description="Emergency Call">0x0001<Comment>This PDU is supporting an emergency priority call</Comment></Value>
		</Field>
		<Field Name="Answer Response" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Required">0x0001<Comment></Comment></Value>
			<Value Description="Not expected">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Individual/Talkgroup" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
			<Value Description="TalkGroup">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="UDT Format" Pos="1" Size="4" BitFlag="true" BitPos="0">
			<Comment>Specifies the format of the user or system data carried in UDTs for the UDT mechanism</Comment>
			<Value Description="UDT format">0x0007<Comment></Comment></Value>
		</Field>
		<Field Name="Service Access Point" Pos="1" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Value Description="UDT">0x0000<Comment>SAP is 0000 for UDTs</Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="2" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="5" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="UDT Appended_Blocks" Pos="8" Size="2" BitFlag="true" BitPos="0">
			<Comment>Number of Blocks appended to this UDT Header</Comment>
			<Value Description="1 Appended Data UDT block">0x0000<Comment></Comment></Value>
			<Value Description="2 Appended Data UDT block">0x0001<Comment></Comment></Value>
			<Value Description="3 Appended Data UDT block">0x0002<Comment></Comment></Value>
			<Value Description="4 Appended Data UDT block">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved2" Pos="8" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Pad Nibble" Pos="8" Size="5" BitFlag="true" BitPos="3">
			<Comment>Determines no of PN appended to the data to form integer no of blocks</Comment>
			<Data/>
		</Field>
		<Field Name="OPCODE" Pos="9" Size="6" BitFlag="true" BitPos="0">
			<Comment>UDT Header Opcode</Comment>
			<Value Description="UDT Header_Downlink">0x001A<Comment></Comment></Value>
		</Field>
		<Field Name="Protect Flag" Pos="9" Size="1" BitFlag="true" BitPos="6">
			<Comment>Indicates if the UDT information is protected by encryption</Comment>
		</Field>
		<Field Name="Supplementary_Flag" Pos="9" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="User Initiated Service">0x0000<Comment>This UDT Header is carrying the data for a user initiated service (Short Data, Data Polling)</Comment></Value>
			<Value Description="Supplementary Data">0x0001<Comment>This UDT Header is carrying supplementary data, supporting another Tier III service</Comment></Value>
		</Field>
		<Field Name="CRC-CCITT" Pos="10" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="12" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="13" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Esync Header">0x0000<Comment></Comment></Value>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
			<Value Description="Terminator with LC">0x0002<Comment></Comment></Value>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
			<Value Description="MBC Header">0x0004<Comment></Comment></Value>
			<Value Description="MBC Continuation">0x0005<Comment></Comment></Value>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
			<Value Description="Unconfirmed Data Continuation">0x0007<Comment></Comment></Value>
			<Value Description="Confirmed Data Continuation">0x0008<Comment></Comment></Value>
			<Value Description="Idle">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="13" Size="4" BitFlag="true" BitPos="4">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="14" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="BSI Short Data Header" Size="24" SecondaryKeyField="1">
		<Comment></Comment>
		<Field Name="DPF - Data Packet Format" Pos="0" Size="4" BitFlag="true" BitPos="0">
			<Comment>Is used for data packet identification </Comment>
			<Value Description="Unconfirmed Delivery">0x000d<Comment></Comment></Value>
		</Field>
		<Field Name="AB - Apended Block High 2bit" Pos="0" Size="2" BitFlag="true" BitPos="1">
			<Comment>Apended Block High 2bit </Comment>
			<Data/>
		</Field>
		<Field Name="A - Response Requested" Pos="0" Size="1" BitFlag="true" BitPos="2">
			<Comment>To indicate whether the confirmation of this packet is desired or not. </Comment>
			<Value Description="No Response">0x0000<Comment></Comment></Value>
			<Value Description="Response Required">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="G/I - Group/Individual Destination Address" Pos="0" Size="1" BitFlag="true" BitPos="3">
			<Comment>Group or Individual destination address</Comment>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
			<Value Description="Group">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="AB - Apended Block Low 4 bit" Pos="1" Size="4" BitFlag="true" BitPos="0">
			<Comment>Apended Block Low 4 bit. </Comment>
			<Data/>
		</Field>				
		<Field Name="SAP - Service Access Point Identifer" Pos="1" Size="4" BitFlag="true" BitPos="1">
			<Comment>Identifies the Service Access Point to which the data is directed.</Comment>
			<Value Description="Unified Data Transport (UDT)">0x0000<Comment></Comment></Value>
			<Value Description="TCP/IP Header Compression">0x0002<Comment></Comment></Value>
			<Value Description="UDP/IP Header Compression">0x0003<Comment></Comment></Value>
			<Value Description="IP Based Packet Data">0x0004<Comment></Comment></Value>
			<Value Description="Address Resolution Protocol (ARP)">0x0005<Comment></Comment></Value>
			<Value Description="Proprietary Packet Data">0x0009<Comment></Comment></Value>
			<Value Description="Short Data">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="Destination Logical Link ID" Pos="2" Size="3" BitFlag="false">
			<Comment>Identifies the destination address to which the packet is directed </Comment>
			<Data/>
		</Field>
		<Field Name="Source Logical Link ID" Pos="3" Size="3" BitFlag="false">
			<Comment>Identifiesthe source address which sent the packet </Comment>
			<Data/>
		</Field>
		<Field Name="F - Full Message Flag" Pos="4" Size="1" BitFlag="true" BitPos="0">
			<Comment>Used in the receiver to signify that the Pad Octet Count information element indicates the amount of data being transported in the complete packet</Comment>
			<Value Description="Subsequent tries">0x0000<Comment></Comment></Value>
			<Value Description="First try for the complete packet">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="S - SARQ flag" Pos="4" Size="1" BitFlag="true" BitPos="1">
			<Comment>SARQ flag</Comment>
			<Value Description="Subsequent tries">0x0000<Comment></Comment></Value>
			<Value Description="First try for the complete packet">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="DD format - Defined Data Format" Pos="4" Size="6" BitFlag="true" BitPos="2">
			<Comment>Specifies the number of blocks in the packet not including the header block </Comment>
			<Data/>
		</Field>
		<Field Name="bit padding - bit padding" Pos="5" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Header CRC" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="7" Size="6" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Type" Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates the type of control or data that is being carried</Comment>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="8" Size="4" BitFlag="true" BitPos="1">
			<Comment>Differentiates signaling that originates at another site</Comment>
			<Data/>
		</Field>
		<Field Name="Unused2" Pos="9" Size="5" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>
