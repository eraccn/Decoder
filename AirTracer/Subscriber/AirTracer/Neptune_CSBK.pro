<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="Neptune CSBK">
	<ATHeader>
		<PrimaryKeyField Name="Neptune CSBK" Size="1">0x0005</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Neighbor Sites CSBK" Size="10" SecondaryKeyField="1">
	<Comment></Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune Neighbor Sites CSBK, denoted as: %000001</Comment>
			<Value Description="NEP_NEIGHBOR_SITES">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment>Invalid value</Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment>Should always be 1</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident Proprietary MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Adjacent RF Neighbor Site 1" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Adjacent RF Neighbor Site 2" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Adjacent RF Neighbor Site 3" Pos="4" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Adjacent RF Neighbor Site 4" Pos="5" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Adjacent RF Neighbor Site 5" Pos="6" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="7" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Site Reset Count" Pos="9" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="9" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Registration Request CSBK" Size="10" SecondaryKeyField="1">
	<Comment></Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune Registration Request CSBK, denoted as: %010100</Comment>
			<Value Description="NEP_REG_REQ">0x0014<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment>Invalid value</Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment>Should always be 1</Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident Proprietary MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Uint ID" Pos="2" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Group ID" Pos="5" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Flag" Pos="8" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="ESN Index" Pos="8" Size="2" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="ESN Byte Value" Pos="9" Size="1" BitFlag="false">
			<Comment>Four bytes of ESN shall be rotated</Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Registration Response CSBK" Size="10" SecondaryKeyField="1">
	<Comment></Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune Registration Response CSBK, denoted as: %011000</Comment>
			<Value Description="NEP_REG_RESP">0x0018<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment>Invalid value</Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment>Should always be 1</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident Proprietary MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Uint ID" Pos="2" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Group ID" Pos="5" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Response Parameters" Pos="8" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Radio Enable">0x0000<Comment>All IDs Valid</Comment></Value>
			<Value Description="Radio Disable">0x0001<Comment>Invalid UID</Comment></Value>
			<Value Description="Radio Disable">0x0002<Comment>Invalid GID</Comment></Value>
			<Value Description="Radio Disable">0x0003<Comment>Invalid ESN</Comment></Value>
			<Value Description="Request transmission of complete ESN">0x0004<Comment></Comment></Value>
			<Value Description="Site Access Denied">0x0005<Comment></Comment></Value>
			<Value Description="Group Access Denied">0x0006<Comment></Comment></Value>
			<Value Description="Radio Disable">0x0007<Comment>UID not in database</Comment></Value>
			<Value Description="Radio Disable">0x0008<Comment>GID not in database</Comment></Value>
		</Field>
		<Field Name="Site Reset Count" Pos="9" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="9" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="File Beacon CSBK" Size="10" SecondaryKeyField="1">
	<Comment></Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune File Beacon CSBK, denoted as: %001010</Comment>
			<Value Description="NEP_FILE_BEACON">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment>Invalid value</Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment>Should always be 1</Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident Proprietary MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="File Opcode" Pos="2" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="File Size in packets" Pos="5" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="File Flag" Pos="7" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="8" Size="3" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot" Pos="8" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Channel Index" Pos="8" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="9" Size="1" BitFlag="false">
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Channel Grant CSBK" Size="10" SecondaryKeyField="1">
	<Comment></Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune Channel Grant CSBK, denoted as: %000011</Comment>
			<Value Description="NEP_CHANNEL_GRANT">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment>Invalid value</Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment>Should always be 1</Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident Proprietary MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Source ID" Pos="2" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Destination ID" Pos="5" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="8" Size="3" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Timeslot" Pos="8" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Channel Index" Pos="8" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Call Details" Pos="9" Size="1" BitFlag="false">
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Control Channel Rollover CSBK" Size="10" SecondaryKeyField="1">
	<Comment></Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune Control Channel Rollover CSBK, denoted as: %001110</Comment>
			<Value Description="NEP_CONTROL_CHANNEL_ROLLOVER">0x000E<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment>Invalid value</Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment>Should always be 1</Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident Proprietary MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="TX Freq/10" Pos="2" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="RX Freq/10" Pos="5" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="DCC" Pos="8" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="9" Size="1" BitFlag="false">
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Negative Response CSBK" Size="10" SecondaryKeyField="1">
	<Comment></Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune Negative Response CSBK, denoted as: %010000</Comment>
			<Value Description="NEP_NEGATIVE_RESP">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment>Invalid value</Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment>Should always be 1</Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident Proprietary MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Source ID" Pos="2" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Destination ID" Pos="5" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Call Details" Pos="8" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reason for Denail or Negative acknowledgement" Pos="9" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Reserved">0x0000<Comment></Comment></Value>
			<Value Description="Invalid Source ID">0x0001<Comment>Source will be Disabled</Comment></Value>
			<Value Description="Invalid Destination ID">0x0002<Comment></Comment></Value>
			<Value Description="Insufficient Privileges for Source ID">0x0003<Comment></Comment></Value>
			<Value Description="Insufficient Privileges for Destination ID">0x0004<Comment></Comment></Value>
			<Value Description="Destination Group ID is Active">0x0005<Comment></Comment></Value>
			<Value Description="Destination Unit is Active">0x0006<Comment></Comment></Value>
			<Value Description="Service Not Available">0x0007<Comment></Comment></Value>
			<Value Description="Busy Queue Full">0x0008<Comment></Comment></Value>
			<Value Description="Destination ID in Busy Queue">0x0009<Comment></Comment></Value>
			<Value Description="Source ID is destination for Busy Queue Call">0x000A<Comment>This response not used</Comment></Value>
			<Value Description="Destination ID does not acknowledge">0x000B<Comment></Comment></Value>
			<Value Description="Destination ID not available">0x000C<Comment>"catch all" used for multiple scenarios, such as destination site busy, etc</Comment></Value>
			<Value Description="Destination Mailbox is full">0x000D<Comment></Comment></Value>	
			<Value Description="File Transfer Denied">0x000E<Comment>Unable to service request, Try again later</Comment></Value>
			<Value Description="File Transfer Denied">0x000F<Comment>Unable to service request, Do not try again(delete file)</Comment></Value>
			<Value Description="File Transfer Denied">0x0010<Comment>Watch for Beacon</Comment></Value>
			<Value Description="File Transfer Denied">0x0011<Comment>Reserved</Comment></Value>
			<Value Description="File Transfer Denied">0x0012<Comment>Reserved</Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Call Request CSBK" Size="10" SecondaryKeyField="1">
	<Comment></Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune Call Request CSBK, denoted as: %010001</Comment>
			<Value Description="NEP_CALL_REQ">0x0011<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment>Invalid value</Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment>Should always be 1</Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident Proprietary MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Source ID" Pos="2" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Destination ID" Pos="5" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Call Details" Pos="8" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="9" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Acknowledgement CSBK" Size="10" SecondaryKeyField="1">
	<Comment></Comment>
		<Field Name="CSBKO - CSBK Opcode" Pos="0" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune Acknowledgement CSBK, denoted as: %010010</Comment>
			<Value Description="NEP_ACK">0x0012<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="0" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="0" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment>Invalid value</Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment>Should always be 1</Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="1" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident Proprietary MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Source ID" Pos="2" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Destination ID" Pos="5" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Call Details" Pos="8" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="9" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
</Protocol>