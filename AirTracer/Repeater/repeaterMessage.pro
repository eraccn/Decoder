﻿<?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="ATA.tmp"?>
<Protocol Name="RepeaterBurstMessage">
	<ATHeader>
		<PrimaryKeyField Name="RepeaterBurstMessage" Size="1">0x00f0</PrimaryKeyField>
	</ATHeader>
	<Comment></Comment>
	<PDU Name="Inb CSBK Wake Up" Size="44" SecondaryKeyField="3,8,17">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the BS Downlink Activation command, denoted as: %111000</Comment>
			<Value Description="BS_DWN_ACT">0x0038<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="12" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="BS Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field defines the 24-bit base station identifier which uniquely defines a base station within a System.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Out CSBK Wake Up" Size="44" SecondaryKeyField="3,8,17">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the BS Downlink Activation command, denoted as: %111000</Comment>
			<Value Description="BS_DWN_ACT">0x0038<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="12" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="BS Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field defines the 24-bit base station identifier which uniquely defines a base station within a System.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="CSBK Window Request" Size="44" SecondaryKeyField="3,8">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Window Request CSBK command, denoted as: %101000.</Comment>
			<Value Description="Window Request">0x0028<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment>other CSBKs to follow for this packet</Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="SUID" Pos="12" Size="3" BitFlag="false">
			<Comment>Subscriber ID of radio making window request.</Comment>
			<Data/>
		</Field>
		<Field Name="Request Period" Pos="15" Size="4" BitFlag="true" BitPos="0">
			<Comment>Indicates if the request is for one time udpate (0x00), update rate (0x01-0x05) or de-allocation(0x0F).</Comment>
			<Value Description="De-allocation">0x000F<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved_1" Pos="15" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved_2" Pos="16" Size="4" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inb Acknowledge Response Unit" Size="44" SecondaryKeyField="3,8,19">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bit 5-0) indicates the Acknowledge Response. This is set to %100000</Comment>
			<Value Description="ACK_RSP_U">0x0020<Comment>This is the generic response supplied by a unit to acknowledge an action when there is no other expected response.</Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>This indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
			<Value Description="More CSBK">0x0000<Comment>other CSBKs to follow for this packet</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Service Type" Pos="12" Size="6" BitFlag="true" BitPos="0">
			<Comment>The 6-bit Service Type field indicates the service which is being identified. This is set equal to the appropriate "Opcode value" for the identified service.</Comment>
			<Value Description="ACK_RSP_U">0x0020<Comment></Comment></Value>
		</Field>
		<Field Name="Fixed value" Pos="12" Size="2" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Fixed Value">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="13" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Out Acknowledge Response Unit" Size="44" SecondaryKeyField="3,8">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bit 5-0) indicates the Acknowledge Response. This is set to %100000</Comment>
			<Value Description="ACK_RSP_U">0x0020<Comment>This is the generic response supplied by a unit to acknowledge an action when there is no other expected response.</Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>This indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
			<Value Description="More CSBK">0x0000<Comment>other CSBKs to follow for this packet</Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Service Type" Pos="12" Size="6" BitFlag="true" BitPos="0">
			<Comment>The 6-bit Service Type field indicates the service which is being identified. This is set equal to the appropriate "Opcode value" for the identified service.</Comment>
			<Value Description="ACK_RSP_U">0x0020<Comment></Comment></Value>
		</Field>
		<Field Name="Fixed value" Pos="12" Size="2" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Fixed Value">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="13" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inbound Call Alert Request" Size="44" SecondaryKeyField="3,8,17">
		<Comment>This transaction is used to command a radio to execute a Call Alert request operation.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bit 5-0) indicates the Call Alert Request. This is set to %011111</Comment>
			<Value Description="CALL_ALRT_REQ">0x001F<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment>other CSBKs to follow for this packet</Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="12" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Outbound Call Alert Request" Size="44" SecondaryKeyField="3,8,17">
		<Comment>This transaction is used to command a radio to execute a Call Alert request operation.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bit 5-0) indicates the Call Alert Request. This is set to %011111</Comment>
			<Value Description="CALL_ALRT_REQ">0x001F<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment>other CSBKs to follow for this packet</Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="12" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Emergency Alarm Request" Size="44" SecondaryKeyField="3,8">
		<Comment>This is a special status indication typically reserved for the "life threatening" situation.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bits 5-0) indicates this is the Emergency Alarm from an identified subscriber unit. This is set to the value of %100111</Comment>
			<Value Description="EMRG_ALRM_REQ">0x0027<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block " Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="EASN - Emeregency Alarm Sequence Number" Pos="12" Size="4" BitFlag="true" BitPos="0">
			<Comment>The Emergency Alarm Sequence Number field is a 4-bit value ranges from 0 to 15. This field shall only increment when an emergency is first initiated. Multiple attempts of the same emergency alarm message shall have the same Emergency Alarm Sequence Number. Default value shall be 0.</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved1" Pos="12" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved2" Pos="13" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Group Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field defines the 24-bit group identifier which uniquely defines a group within a System.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Radio Unit Remote Monitor Command" Size="44" SecondaryKeyField="3,8">
		<Comment>This transaction is used to command a radio to execute a Radio Unit Remote Monitor operation.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode field (octet 0, bit 5-0) indicates this is the radio unit remote monitor command. This is set to %011101</Comment>
			<Value Description="RAD_MON_CMD">0x001D<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved1" Pos="12" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="TX Multiplier" Pos="13" Size="2" BitFlag="true" BitPos="0">
			<Comment>The TX Multiplier is a 2-bit value ranging from 0 to 3. It multiplies a stored value programmed in the target radio to represent the requested time to key the transmitter during the monitor function. The zero value does not cause the radio to key.</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved2" Pos="13" Size="6" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inbound Extended Function Command" Size="44" SecondaryKeyField="3,8,18">
		<Comment>This is the transaction addressed to an SU for an extended function.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Extended Function command, denoted as %100100</Comment>
			<Value Description="EXT_FNCT_CMD">0x0024<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Class" Pos="12" Size="1" BitFlag="false">
			<Comment>Class will determine the type of extended function to be considered.</Comment>
			<Data/>
		</Field>
		<Field Name="Operand" Pos="13" Size="1" BitFlag="false">
			<Comment>Operand will determine the actual function being addressed based upon the Class designation.</Comment>
			<Value Description="Radio Check">0x0000<Comment></Comment></Value>
			<Value Description="Radio Uninhibit">0x007E<Comment></Comment></Value>
			<Value Description="Radio Inhibit">0x007F<Comment></Comment></Value>
		</Field>
		<Field Name="Source Address" Pos="14" Size="3" BitFlag="false">
			<Comment>Arguments will supply additional processing information. This may not be required for all extended functions, and will be set to "null" (0) if not required.</Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Outbound Extended Function Command" Size="44" SecondaryKeyField="3,8,18">
		<Comment>This is the transaction addressed to an SU for an extended function.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Extended Function command, denoted as %100100</Comment>
			<Value Description="EXT_FNCT_CMD">0x0024<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Class" Pos="12" Size="1" BitFlag="false">
			<Comment>Class will determine the type of extended function to be considered.</Comment>
			<Data/>
		</Field>
		<Field Name="Operand" Pos="13" Size="1" BitFlag="false">
			<Comment>Operand will determine the actual function being addressed based upon the Class designation.</Comment>
			<Value Description="Radio Check">0x0000<Comment></Comment></Value>
			<Value Description="Radio Uninhibit">0x007E<Comment></Comment></Value>
			<Value Description="Radio Inhibit">0x007F<Comment></Comment></Value>
		</Field>
		<Field Name="Source Address" Pos="14" Size="3" BitFlag="false">
			<Comment>Arguments will supply additional processing information. This may not be required for all extended functions, and will be set to "null" (0) if not required.</Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Negative Acknowledgement Response" Size="44" SecondaryKeyField="3,8">
		<Comment>This is the generic response supplied by a unit for negative acknowledgement when the requested service is not supported by the target.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Negative Acknowledgement Response command, denoted as: %100110.</Comment>
			<Value Description="NACK_RSP_U">0x0026<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Service Type" Pos="12" Size="6" BitFlag="true" BitPos="0">
			<Comment>The 6-bit Service Type field indicates the service which is being identified. This is set equal to the appropriate "Opcode value" for the identified service</Comment>
			<Value Description="NACK_RSP_U">0x0026<Comment></Comment></Value>
		</Field>
		<Field Name="Source Type" Pos="12" Size="1" BitFlag="true" BitPos="6">
			<Comment>The Source Type information element has a length of 1 bit.	                                                                                     Source Type = 0 ( BS Sourced )                Source Type = 1 ( MS Sourced )</Comment>
			<Value Description="BS Sourced">0x0000<Comment></Comment></Value>
			<Value Description="MS Sourced">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="AIV - Additional Information Valid Flag" Pos="12" Size="1" BitFlag="true" BitPos="7">
			<Comment>The AIV flag is used to indicate when the Additional Information field is to be considered valid. This flag is set to 1 if the Additional Information field is valid. Otherwise the information in the Additional Information field is to be ignored. Note: Additional Information Valid Flag field shall always be used for the 24 bit source address. Thus the AIV flag shall always be set to 1.</Comment>
		</Field>
		<Field Name="Reason Code" Pos="13" Size="1" BitFlag="false">
			<Comment>The reason code information element has a length of 8 bits. Reason Code = 00100001 --> Ms does not suppport this service or feature.</Comment>
			<Value Description="MS does not support this service or feature.">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Additional Information (Source Address)" Pos="14" Size="3" BitFlag="false">
			<Comment>it shall contain the 24-bit Source Address</Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inb Preamble CSBK" Size="44" SecondaryKeyField="3,8,14,24">
		<Comment>This preamble CSBK is normally sent before the actual CSBK to improve system reliability for features like scan or battery saver.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Preamble CSBK command, denoted as: %111101.</Comment>
			<Value Description="PREAMBLE_CSBK">0x003D<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturers Feature ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="12" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="P" Pos="12" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="L" Pos="12" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="LCP Bit">0x0000<Comment></Comment></Value>
			<Data/>
		</Field>
		<Field Name="V" Pos="12" Size="1" BitFlag="true" BitPos="4">
			<Comment>Voice LCP Bit</Comment>
			<Data/>
		</Field>
		<Field Name="E" Pos="12" Size="1" BitFlag="true" BitPos="5">
			<Comment>Emergency LCP Bit</Comment>
			<Data/>
		</Field>
		<Field Name="Group or Individual Call" Pos="12" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Individual Call">0x0000<Comment></Comment></Value>
			<Value Description="Group Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data or CSBK" Pos="12" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Blocks to Follow" Pos="13" Size="1" BitFlag="false">
			<Comment>Number of Preamble CSBK blocks to follow inclusive of this block.</Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Out Preamble CSBK" Size="44" SecondaryKeyField="3,8,14,24">
		<Comment>This preamble CSBK is normally sent before the actual CSBK to improve system reliability for features like scan or battery saver.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Preamble CSBK command, denoted as: %111101.</Comment>
			<Value Description="PREAMBLE_CSBK">0x003D<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturers Feature ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="12" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="P" Pos="12" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="L" Pos="12" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="LCP Bit">0x0000<Comment></Comment></Value>
			<Data/>
		</Field>
		<Field Name="V" Pos="12" Size="1" BitFlag="true" BitPos="4">
			<Comment>Voice LCP Bit</Comment>
			<Data/>
		</Field>
		<Field Name="E" Pos="12" Size="1" BitFlag="true" BitPos="5">
			<Comment>Emergency LCP Bit</Comment>
			<Data/>
		</Field>
		<Field Name="Group or Individual Call" Pos="12" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Individual Call">0x0000<Comment></Comment></Value>
			<Value Description="Group Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data or CSBK" Pos="12" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Blocks to Follow" Pos="13" Size="1" BitFlag="false">
			<Comment>Number of Preamble CSBK blocks to follow inclusive of this block.</Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inb LCP Preamble CSBK" Size="44" SecondaryKeyField="3,8,14,24">
		<Comment>This preamble CSBK is normally sent before the actual CSBK to improve system reliability for features like scan or battery saver.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Preamble CSBK command, denoted as: %111101.</Comment>
			<Value Description="PREAMBLE_CSBK">0x003D<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturers Feature ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="12" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="P" Pos="12" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="L" Pos="12" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="LCP Bit">0x0001<Comment></Comment></Value>
			<Data/>
		</Field>
		<Field Name="V" Pos="12" Size="1" BitFlag="true" BitPos="4">
			<Comment>Voice LCP Bit</Comment>
			<Data/>
		</Field>
		<Field Name="E" Pos="12" Size="1" BitFlag="true" BitPos="5">
			<Comment>Emergency LCP Bit</Comment>
			<Data/>
		</Field>
		<Field Name="Group or Individual Call" Pos="12" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Individual Call">0x0000<Comment></Comment></Value>
			<Value Description="Group Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data or CSBK" Pos="12" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Blocks to Follow" Pos="13" Size="1" BitFlag="false">
			<Comment>Number of Preamble CSBK blocks to follow inclusive of this block.</Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Out LCP Preamble CSBK" Size="44" SecondaryKeyField="3,8,14,24">
		<Comment>This preamble CSBK is normally sent before the actual CSBK to improve system reliability for features like scan or battery saver.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Preamble CSBK command, denoted as: %111101.</Comment>
			<Value Description="PREAMBLE_CSBK">0x003D<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturers Feature ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="12" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="P" Pos="12" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="L" Pos="12" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="LCP Bit">0x0001<Comment></Comment></Value>
			<Data/>
		</Field>
		<Field Name="V" Pos="12" Size="1" BitFlag="true" BitPos="4">
			<Comment>Voice LCP Bit</Comment>
			<Data/>
		</Field>
		<Field Name="E" Pos="12" Size="1" BitFlag="true" BitPos="5">
			<Comment>Emergency LCP Bit</Comment>
			<Data/>
		</Field>
		<Field Name="Group or Individual Call" Pos="12" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Individual Call">0x0000<Comment></Comment></Value>
			<Value Description="Group Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data or CSBK" Pos="12" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Blocks to Follow" Pos="13" Size="1" BitFlag="false">
			<Comment>Number of Preamble CSBK blocks to follow inclusive of this block.</Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inbound Unit to unit Service Request" Size="44" SecondaryKeyField="3,8,23">
		<Comment>This is the service request for a voice call between two specified SUs.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate unit-to-unit service request, denoted as: %000100.</Comment>
			<Value Description="UU_V_REQ">0x0004<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More Block">0x0000<Comment></Comment></Value>
			<Value Description="Last Block">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="12" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="No Priority">0x0000<Comment></Comment></Value>
			<Value Description="Priority 1 (Low)">0x0001<Comment></Comment></Value>
			<Value Description="Priority 2 (Medium)">0x0002<Comment></Comment></Value>
			<Value Description="Priority 3 (High)">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="OVCM - Open Voice Call Mode" Pos="12" Size="1" BitFlag="true" BitPos="2">
			<Comment>Open Voice Call Mode</Comment>
			<Value Description="Non-OVCM Call">0x0000<Comment></Comment></Value>
			<Value Description="OVCM Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast" Pos="12" Size="1" BitFlag="true" BitPos="3">
			<Comment>Reserved for Future Used</Comment>
			<Value Description="Non-broadcast Service">0x0000<Comment></Comment></Value>
			<Value Description="Broadcast Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved1" Pos="12" Size="2" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Privacy" Pos="12" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Non-secure">0x0000<Comment></Comment></Value>
			<Value Description="Secure">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency" Pos="12" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Non-emergency Service">0x0000<Comment></Comment></Value>
			<Value Description="Emergency Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved2" Pos="13" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Outbound Unit to unit Service Request" Size="44" SecondaryKeyField="3,8,23">
		<Comment>This is the service request for a voice call between two specified SUs.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate unit-to-unit service request, denoted as: %000100.</Comment>
			<Value Description="UU_V_REQ">0x0004<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More Block">0x0000<Comment></Comment></Value>
			<Value Description="Last Block">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="12" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="No Priority">0x0000<Comment></Comment></Value>
			<Value Description="Priority 1 (Low)">0x0001<Comment></Comment></Value>
			<Value Description="Priority 2 (Medium)">0x0002<Comment></Comment></Value>
			<Value Description="Priority 3 (High)">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="OVCM - Open Voice Call Mode" Pos="12" Size="1" BitFlag="true" BitPos="2">
			<Comment>Open Voice Call Mode</Comment>
			<Value Description="Non-OVCM Call">0x0000<Comment></Comment></Value>
			<Value Description="OVCM Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast" Pos="12" Size="1" BitFlag="true" BitPos="3">
			<Comment>Reserved for Future Used</Comment>
			<Value Description="Non-broadcast Service">0x0000<Comment></Comment></Value>
			<Value Description="Broadcast Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved1" Pos="12" Size="2" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Privacy" Pos="12" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Non-secure">0x0000<Comment></Comment></Value>
			<Value Description="Secure">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency" Pos="12" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Non-emergency Service">0x0000<Comment></Comment></Value>
			<Value Description="Emergency Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved2" Pos="13" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Target Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment>this is the CRC parity check. It provides error detection for the information of this CSBK</Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inbound Unit to unit Service Response" Size="44" SecondaryKeyField="3,8,23">
		<Comment>This is a transaction from the target unit responding to the private call to unit answer request. It is used, to express the target USER decision for this pending voice call.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate unit-to-unit service request, denoted as: %000101.</Comment>
			<Value Description="UU_ANS_RSP">0x0005<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="12" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="No Priority">0x0000<Comment></Comment></Value>
			<Value Description="Priority 1 (Low)">0x0001<Comment></Comment></Value>
			<Value Description="Priority 2 (Medium)">0x0002<Comment></Comment></Value>
			<Value Description="Priority 3 (High)">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="OVCM - Open Voice Call Mode" Pos="12" Size="1" BitFlag="true" BitPos="2">
			<Comment>Open Voice Call Mode</Comment>
			<Value Description="Non-OVCM Call">0x0000<Comment></Comment></Value>
			<Value Description="OVCM Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast" Pos="12" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="Non-broadcast Service">0x0000<Comment></Comment></Value>
			<Value Description="Broadcast Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="12" Size="2" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Privacy" Pos="12" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Non-secure">0x0000<Comment></Comment></Value>
			<Value Description="Secure">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency" Pos="12" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Non-emergency Service">0x0000<Comment></Comment></Value>
			<Value Description="Emergency Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Answer Response" Pos="13" Size="1" BitFlag="false">
			<Comment>The Answer Response field will contain the response of the target unit USER with regard to the pending call.</Comment>
			<Value Description="Proceed">0x0020<Comment></Comment></Value>
			<Value Description="Deny">0x0021<Comment></Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Outbound Unit to unit Service Response" Size="44" SecondaryKeyField="3,8,23">
		<Comment>This is a transaction from the target unit responding to the private call to unit answer request. It is used, to express the target USER decision for this pending voice call.</Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate unit-to-unit service request, denoted as: %000101.</Comment>
			<Value Description="UU_ANS_RSP">0x0005<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protected Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="12" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="No Priority">0x0000<Comment></Comment></Value>
			<Value Description="Priority 1 (Low)">0x0001<Comment></Comment></Value>
			<Value Description="Priority 2 (Medium)">0x0002<Comment></Comment></Value>
			<Value Description="Priority 3 (High)">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="OVCM - Open Voice Call Mode" Pos="12" Size="1" BitFlag="true" BitPos="2">
			<Comment>Open Voice Call Mode</Comment>
			<Value Description="Non-OVCM Call">0x0000<Comment></Comment></Value>
			<Value Description="OVCM Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast" Pos="12" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="Non-broadcast Service">0x0000<Comment></Comment></Value>
			<Value Description="Broadcast Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="12" Size="2" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Privacy" Pos="12" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Non-secure">0x0000<Comment></Comment></Value>
			<Value Description="Secure">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency" Pos="12" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Non-emergency Service">0x0000<Comment></Comment></Value>
			<Value Description="Emergency Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Answer Response" Pos="13" Size="1" BitFlag="false">
			<Comment>The Answer Response field will contain the response of the target unit USER with regard to the pending call.</Comment>
			<Value Description="Proceed">0x0020<Comment></Comment></Value>
			<Value Description="Deny">0x0021<Comment></Comment></Value>
		</Field>
		<Field Name="Target Address" Pos="14" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which is the target of the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="17" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction. This is a 24-bit vector which uniquely identifies the subscriber unit within the System. It shall utilize the Subscriber Unit address definitions.</Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Unused" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Carrier Detect" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Carrier Detect">0x0011<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Carrier Undetect" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Carrier Undetect">0x0012<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="SYNC Undetect" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="SYNC Undetect">0x0013<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Undefined Burst" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Undefined Burst">0x001F<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Reverse Channel" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Reverse Channel">0x0014<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="RSSI" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="RSSI">0x0021<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="IDLE" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="IDLE">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="EMB LC" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="EMB LC">0x0015<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Short LC: NULL Message" Size="45" SecondaryKeyField="3,8">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="LC In CACH">0x0016<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Cypher Burst Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Short LCO" Pos="10" Size="4" BitFlag="true" BitPos="0">
			<Comment>(4 bits) identifies the message type</Comment>
			<Value Description="NULL Message">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Blank" Pos="10" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Individual Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="0">
			<Comment>Indicates whether the advertised activity on timeslot 2 is an Individual Call transmission</Comment>
			<Value Description="Group">0x0000<Comment></Comment></Value>
			<Value Description="Individual">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="1">
			<Comment>Indicates whether the advertised activity on timeslot 2 is a Data transmission</Comment>
			<Value Description="Voice">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="2">
			<Comment>Indicates whether the advertised activity on timeslot 2 is an Emergency transmission</Comment>
			<Value Description="Non-emergency">0x0000<Comment></Comment></Value>
			<Value Description="Emergency">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Activity Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="3">
			<Comment>Indicates whether timeslot 2 is presently supporting a call or transmission.  If timeslot 2 is not supporting an active call or transmission, then E2, D2, I2, and the Hashed ID for TDMA Channel 2 are treated as reserved fields</Comment>
			<Value Description="Inactive">0x0000<Comment></Comment></Value>
			<Value Description="Active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="ATA_Reserved3" Pos="12" Size="4" BitFlag="true" BitPos="4">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
		</Field>
		<Field Name="Individual Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="4">
			<Comment>Indicates whether the advertised activity on timeslot 1 is an Individual Call transmission</Comment>
			<Value Description="Group">0x0000<Comment></Comment></Value>
			<Value Description="Individual">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="5">
			<Comment>Indicates whether the advertised activity on timeslot 1 is a Data transmission</Comment>
			<Value Description="Voice">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="6">
			<Comment>Indicates whether the advertised activity on timeslot 1 is an Emergency transmission</Comment>
			<Value Description="Non-emergency">0x0000<Comment></Comment></Value>
			<Value Description="Emergency">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Activity Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="7">
			<Comment>Indicates whether timeslot 1 is presently supporting a call or transmission.  If timeslot 1 is not supporting an active call or transmission, then E1, D1, I1, and the Hashed ID for TDMA Channel 1 are treated as reserved fields</Comment>
			<Value Description="Inactive">0x0000<Comment></Comment></Value>
			<Value Description="Active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="ATA_Reserved4" Pos="11" Size="4" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
		</Field>
		<Field Name="Data" Pos="13" Size="31" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Short LC: Activity Update" Size="45" SecondaryKeyField="3,8">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="LC In CACH">0x0016<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Cypher Burst Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Short LCO" Pos="10" Size="4" BitFlag="true" BitPos="0">
			<Comment>(4 bits) identifies the message type</Comment>
			<Value Description="Activity Update">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Blank" Pos="10" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Individual Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="0">
			<Comment>Indicates whether the advertised activity on timeslot 2 is an Individual Call transmission</Comment>
			<Value Description="Group">0x0000<Comment></Comment></Value>
			<Value Description="Individual">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="1">
			<Comment>Indicates whether the advertised activity on timeslot 2 is a Data transmission</Comment>
			<Value Description="Voice">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="2">
			<Comment>Indicates whether the advertised activity on timeslot 2 is an Emergency transmission</Comment>
			<Value Description="Non-emergency">0x0000<Comment></Comment></Value>
			<Value Description="Emergency">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Activity Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="3">
			<Comment>Indicates whether timeslot 2 is presently supporting a call or transmission.  If timeslot 2 is not supporting an active call or transmission, then E2, D2, I2, and the Hashed ID for TDMA Channel 2 are treated as reserved fields</Comment>
			<Value Description="Inactive">0x0000<Comment></Comment></Value>
			<Value Description="Active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="ATA_Reserved5" Pos="12" Size="4" BitFlag="true" BitPos="4">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
		</Field>
		<Field Name="Individual Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="4">
			<Comment>Indicates whether the advertised activity on timeslot 1 is an Individual Call transmission</Comment>
			<Value Description="Group">0x0000<Comment></Comment></Value>
			<Value Description="Individual">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="5">
			<Comment>Indicates whether the advertised activity on timeslot 1 is a Data transmission</Comment>
			<Value Description="Voice">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="6">
			<Comment>Indicates whether the advertised activity on timeslot 1 is an Emergency transmission</Comment>
			<Value Description="Non-emergency">0x0000<Comment></Comment></Value>
			<Value Description="Emergency">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Activity Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="7">
			<Comment>Indicates whether timeslot 1 is presently supporting a call or transmission.  If timeslot 1 is not supporting an active call or transmission, then E1, D1, I1, and the Hashed ID for TDMA Channel 1 are treated as reserved fields</Comment>
			<Value Description="Inactive">0x0000<Comment></Comment></Value>
			<Value Description="Active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="ATA_Reserved6" Pos="11" Size="4" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
		</Field>
		<Field Name="Data" Pos="13" Size="31" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Short LC: Capacity Plus Generic CACH" Size="46" SecondaryKeyField="3,11">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="LC In CACH">0x0016<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Cypher Burst Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Short LCO" Pos="13" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Value Description="Capacity Plus">0x000F<Comment></Comment></Value>
		</Field>
		<Field Name="ATA_Reserved7" Pos="13" Size="4" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
		</Field>
		<Field Name="Blank" Pos="10" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="ATA_Reserved8" Pos="10" Size="4" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
		</Field>
		<Field Name="Individual Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="0">
			<Comment>Indicates whether the advertised activity on timeslot 2 is an Individual Call transmission</Comment>
			<Value Description="Group">0x0000<Comment></Comment></Value>
			<Value Description="Individual">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="1">
			<Comment>Indicates whether the advertised activity on timeslot 2 is a Data transmission</Comment>
			<Value Description="Voice">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="2">
			<Comment>Indicates whether the advertised activity on timeslot 2 is an Emergency transmission</Comment>
			<Value Description="Non-emergency">0x0000<Comment></Comment></Value>
			<Value Description="Emergency">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Activity Slot 2" Pos="12" Size="1" BitFlag="true" BitPos="3">
			<Comment>Indicates whether timeslot 2 is presently supporting a call or transmission.  If timeslot 2 is not supporting an active call or transmission, then E2, D2, I2, and the Hashed ID for TDMA Channel 2 are treated as reserved fields</Comment>
			<Value Description="Inactive">0x0000<Comment></Comment></Value>
			<Value Description="Active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="ATA_Reserved9" Pos="12" Size="4" BitFlag="true" BitPos="4">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
		</Field>
		<Field Name="Individual Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="4">
			<Comment>Indicates whether the advertised activity on timeslot 1 is an Individual Call transmission</Comment>
			<Value Description="Group">0x0000<Comment></Comment></Value>
			<Value Description="Individual">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Data Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="5">
			<Comment>Indicates whether the advertised activity on timeslot 1 is a Data transmission</Comment>
			<Value Description="Voice">0x0000<Comment></Comment></Value>
			<Value Description="Data">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="6">
			<Comment>Indicates whether the advertised activity on timeslot 1 is an Emergency transmission</Comment>
			<Value Description="Non-emergency">0x0000<Comment></Comment></Value>
			<Value Description="Emergency">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Activity Slot 1" Pos="11" Size="1" BitFlag="true" BitPos="7">
			<Comment>Indicates whether timeslot 1 is presently supporting a call or transmission.  If timeslot 1 is not supporting an active call or transmission, then E1, D1, I1, and the Hashed ID for TDMA Channel 1 are treated as reserved fields</Comment>
			<Value Description="Inactive">0x0000<Comment></Comment></Value>
			<Value Description="Active">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="ATA_Reserved10" Pos="11" Size="4" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
		</Field>
		<Field Name="Data" Pos="13" Size="31" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Reverse Channel Encode" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Reverse Channel Encode">0x0017<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Options" Size="44" SecondaryKeyField="3,15">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Option">0x00F0<Comment></Comment></Value>
		</Field>
		<Field Name="Number of Options" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Option 1" Pos="3" Size="4" BitFlag="false">
			<Comment></Comment>
			<Value Description="Wakeup Option">0x280C0000<Comment>0x280C</Comment></Value>
			<Value Description="Transmitter State Option">0x280B0000<Comment>0x280B</Comment></Value>
			<Value Description="Repeater State Option">0x280A0000<Comment>0x280A</Comment></Value>
			<Value Description="ConvTRT Enable Option">0x29770000<Comment>0x2977</Comment></Value>
			<Value Description="DMM Mode Update Option">0x29750000<Comment>0x2975</Comment></Value>
			<Value Description="Enhance Privacy LEV Option">0x29690000<Comment>0x2969</Comment></Value>
			<Value Description="LMAC RX Acquire Sync Option">0x28010000<Comment>0x2801</Comment></Value>
			<Value Description="LMAC RX Data Flywheeling Option">0x28000000<Comment>0x2800</Comment></Value>
			<Value Description="RAS Option">0x29780000<Comment>0x2978</Comment></Value>
			<Value Description="RSSI Option">0x29720000<Comment>0x2972</Comment></Value>
			<Value Description="Slot Helper Option">0x29740000<Comment>0x2974</Comment></Value>
			<Value Description="Transmitter Interrupt Option">0x296B0000<Comment>0x296B</Comment></Value>
			<Value Description="Send CWID Option">0x59000000<Comment>0x5900</Comment></Value>
			<Value Description="Confirm OTA Timing Option">0x297D0000<Comment>0x5900</Comment></Value>
		</Field>
		<Field Name="Option 2" Pos="7" Size="4" BitFlag="false">
			<Comment></Comment>
			<Value Description="Wakeup Option">0x280C0000<Comment>0x280C</Comment></Value>
			<Value Description="Transmitter State Option">0x280B0000<Comment>0x280B</Comment></Value>
			<Value Description="Repeater State Option">0x280A0000<Comment>0x280A</Comment></Value>
			<Value Description="ConvTRT Enable Option">0x29770000<Comment>0x2977</Comment></Value>
			<Value Description="DMM Mode Update Option">0x29750000<Comment>0x2975</Comment></Value>
			<Value Description="Enhance Privacy LEV Option">0x29690000<Comment>0x2969</Comment></Value>
			<Value Description="LMAC RX Acquire Sync Option">0x28010000<Comment>0x2801</Comment></Value>
			<Value Description="LMAC RX Data Flywheeling Option">0x28000000<Comment>0x2800</Comment></Value>
			<Value Description="RAS Option">0x29780000<Comment>0x2978</Comment></Value>
			<Value Description="RSSI Option">0x29720000<Comment>0x2972</Comment></Value>
			<Value Description="Slot Helper Option">0x29740000<Comment>0x2974</Comment></Value>
			<Value Description="Transmitter Interrupt Option">0x296B0000<Comment>0x296B</Comment></Value>
			<Value Description="Send CWID Option">0x59000000<Comment>0x5900</Comment></Value>
			<Value Description="Confirm OTA Timing Option">0x297D0000<Comment>0x5900</Comment></Value>
		</Field>
		<Field Name="Option 3" Pos="11" Size="4" BitFlag="false">
			<Comment></Comment>
			<Value Description="Wakeup Option">0x280C0000<Comment>0x280C</Comment></Value>
			<Value Description="Transmitter State Option">0x280B0000<Comment>0x280B</Comment></Value>
			<Value Description="Repeater State Option">0x280A0000<Comment>0x280A</Comment></Value>
			<Value Description="ConvTRT Enable Option">0x29770000<Comment>0x2977</Comment></Value>
			<Value Description="DMM Mode Update Option">0x29750000<Comment>0x2975</Comment></Value>
			<Value Description="Enhance Privacy LEV Option">0x29690000<Comment>0x2969</Comment></Value>
			<Value Description="LMAC RX Acquire Sync Option">0x28010000<Comment>0x2801</Comment></Value>
			<Value Description="LMAC RX Data Flywheeling Option">0x28000000<Comment>0x2800</Comment></Value>
			<Value Description="RAS Option">0x29780000<Comment>0x2978</Comment></Value>
			<Value Description="RSSI Option">0x29720000<Comment>0x2972</Comment></Value>
			<Value Description="Slot Helper Option">0x29740000<Comment>0x2974</Comment></Value>
			<Value Description="Transmitter Interrupt Option">0x296B0000<Comment>0x296B</Comment></Value>
			<Value Description="Send CWID Option">0x59000000<Comment>0x5900</Comment></Value>
			<Value Description="Confirm OTA Timing Option">0x297D0000<Comment>0x5900</Comment></Value>
		</Field>
		<Field Name="Option 4" Pos="15" Size="4" BitFlag="false">
			<Comment></Comment>
			<Value Description="Wakeup Option">0x280C0000<Comment>0x280C</Comment></Value>
			<Value Description="Transmitter State Option">0x280B0000<Comment>0x280B</Comment></Value>
			<Value Description="Repeater State Option">0x280A0000<Comment>0x280A</Comment></Value>
			<Value Description="ConvTRT Enable Option">0x29770000<Comment>0x2977</Comment></Value>
			<Value Description="DMM Mode Update Option">0x29750000<Comment>0x2975</Comment></Value>
			<Value Description="Enhance Privacy LEV Option">0x29690000<Comment>0x2969</Comment></Value>
			<Value Description="LMAC RX Acquire Sync Option">0x28010000<Comment>0x2801</Comment></Value>
			<Value Description="LMAC RX Data Flywheeling Option">0x28000000<Comment>0x2800</Comment></Value>
			<Value Description="RAS Option">0x29780000<Comment>0x2978</Comment></Value>
			<Value Description="RSSI Option">0x29720000<Comment>0x2972</Comment></Value>
			<Value Description="Slot Helper Option">0x29740000<Comment>0x2974</Comment></Value>
			<Value Description="Transmitter Interrupt Option">0x296B0000<Comment>0x296B</Comment></Value>
			<Value Description="Send CWID Option">0x59000000<Comment>0x5900</Comment></Value>
			<Value Description="Confirm OTA Timing Option">0x297D0000<Comment>0x5900</Comment></Value>
		</Field>
		<Field Name="Option 5" Pos="19" Size="4" BitFlag="false">
			<Comment></Comment>
			<Value Description="Wakeup Option">0x280C0000<Comment>0x280C</Comment></Value>
			<Value Description="Transmitter State Option">0x280B0000<Comment>0x280B</Comment></Value>
			<Value Description="Repeater State Option">0x280A0000<Comment>0x280A</Comment></Value>
			<Value Description="ConvTRT Enable Option">0x29770000<Comment>0x2977</Comment></Value>
			<Value Description="DMM Mode Update Option">0x29750000<Comment>0x2975</Comment></Value>
			<Value Description="Enhance Privacy LEV Option">0x29690000<Comment>0x2969</Comment></Value>
			<Value Description="LMAC RX Acquire Sync Option">0x28010000<Comment>0x2801</Comment></Value>
			<Value Description="LMAC RX Data Flywheeling Option">0x28000000<Comment>0x2800</Comment></Value>
			<Value Description="RAS Option">0x29780000<Comment>0x2978</Comment></Value>
			<Value Description="RSSI Option">0x29720000<Comment>0x2972</Comment></Value>
			<Value Description="Slot Helper Option">0x29740000<Comment>0x2974</Comment></Value>
			<Value Description="Transmitter Interrupt Option">0x296B0000<Comment>0x296B</Comment></Value>
			<Value Description="Send CWID Option">0x59000000<Comment>0x5900</Comment></Value>
			<Value Description="Confirm OTA Timing Option">0x297D0000<Comment>0x5900</Comment></Value>
		</Field>
		<Field Name="Option 6" Pos="23" Size="4" BitFlag="false">
			<Comment></Comment>
			<Value Description="Wakeup Option">0x280C0000<Comment>0x280C</Comment></Value>
			<Value Description="Transmitter State Option">0x280B0000<Comment>0x280B</Comment></Value>
			<Value Description="Repeater State Option">0x280A0000<Comment>0x280A</Comment></Value>
			<Value Description="ConvTRT Enable Option">0x29770000<Comment>0x2977</Comment></Value>
			<Value Description="DMM Mode Update Option">0x29750000<Comment>0x2975</Comment></Value>
			<Value Description="Enhance Privacy LEV Option">0x29690000<Comment>0x2969</Comment></Value>
			<Value Description="LMAC RX Acquire Sync Option">0x28010000<Comment>0x2801</Comment></Value>
			<Value Description="LMAC RX Data Flywheeling Option">0x28000000<Comment>0x2800</Comment></Value>
			<Value Description="RAS Option">0x29780000<Comment>0x2978</Comment></Value>
			<Value Description="RSSI Option">0x29720000<Comment>0x2972</Comment></Value>
			<Value Description="Slot Helper Option">0x29740000<Comment>0x2974</Comment></Value>
			<Value Description="Transmitter Interrupt Option">0x296B0000<Comment>0x296B</Comment></Value>
			<Value Description="Send CWID Option">0x59000000<Comment>0x5900</Comment></Value>
			<Value Description="Confirm OTA Timing Option">0x297D0000<Comment>0x5900</Comment></Value>
		</Field>
		<Field Name="Option 7" Pos="27" Size="4" BitFlag="false">
			<Comment></Comment>
			<Value Description="Wakeup Option">0x280C0000<Comment>0x280C</Comment></Value>
			<Value Description="Transmitter State Option">0x280B0000<Comment>0x280B</Comment></Value>
			<Value Description="Repeater State Option">0x280A0000<Comment>0x280A</Comment></Value>
			<Value Description="ConvTRT Enable Option">0x29770000<Comment>0x2977</Comment></Value>
			<Value Description="DMM Mode Update Option">0x29750000<Comment>0x2975</Comment></Value>
			<Value Description="Enhance Privacy LEV Option">0x29690000<Comment>0x2969</Comment></Value>
			<Value Description="LMAC RX Acquire Sync Option">0x28010000<Comment>0x2801</Comment></Value>
			<Value Description="LMAC RX Data Flywheeling Option">0x28000000<Comment>0x2800</Comment></Value>
			<Value Description="RAS Option">0x29780000<Comment>0x2978</Comment></Value>
			<Value Description="RSSI Option">0x29720000<Comment>0x2972</Comment></Value>
			<Value Description="Slot Helper Option">0x29740000<Comment>0x2974</Comment></Value>
			<Value Description="Transmitter Interrupt Option">0x296B0000<Comment>0x296B</Comment></Value>
			<Value Description="Send CWID Option">0x59000000<Comment>0x5900</Comment></Value>
			<Value Description="Confirm OTA Timing Option">0x297D0000<Comment>0x5900</Comment></Value>
		</Field>
		<Field Name="Option 8" Pos="31" Size="4" BitFlag="false">
			<Comment></Comment>
			<Value Description="Wakeup Option">0x280C0000<Comment>0x280C</Comment></Value>
			<Value Description="Transmitter State Option">0x280B0000<Comment>0x280B</Comment></Value>
			<Value Description="Repeater State Option">0x280A0000<Comment>0x280A</Comment></Value>
			<Value Description="ConvTRT Enable Option">0x29770000<Comment>0x2977</Comment></Value>
			<Value Description="DMM Mode Update Option">0x29750000<Comment>0x2975</Comment></Value>
			<Value Description="Enhance Privacy LEV Option">0x29690000<Comment>0x2969</Comment></Value>
			<Value Description="LMAC RX Acquire Sync Option">0x28010000<Comment>0x2801</Comment></Value>
			<Value Description="LMAC RX Data Flywheeling Option">0x28000000<Comment>0x2800</Comment></Value>
			<Value Description="RAS Option">0x29780000<Comment>0x2978</Comment></Value>
			<Value Description="RSSI Option">0x29720000<Comment>0x2972</Comment></Value>
			<Value Description="Slot Helper Option">0x29740000<Comment>0x2974</Comment></Value>
			<Value Description="Transmitter Interrupt Option">0x296B0000<Comment>0x296B</Comment></Value>
			<Value Description="Send CWID Option">0x59000000<Comment>0x5900</Comment></Value>
			<Value Description="Confirm OTA Timing Option">0x297D0000<Comment>0x5900</Comment></Value>
		</Field>
		<Field Name="Option 9" Pos="35" Size="4" BitFlag="false">
			<Comment></Comment>
			<Value Description="Wakeup Option">0x280C0000<Comment>0x280C</Comment></Value>
			<Value Description="Transmitter State Option">0x280B0000<Comment>0x280B</Comment></Value>
			<Value Description="Repeater State Option">0x280A0000<Comment>0x280A</Comment></Value>
			<Value Description="ConvTRT Enable Option">0x29770000<Comment>0x2977</Comment></Value>
			<Value Description="DMM Mode Update Option">0x29750000<Comment>0x2975</Comment></Value>
			<Value Description="Enhance Privacy LEV Option">0x29690000<Comment>0x2969</Comment></Value>
			<Value Description="LMAC RX Acquire Sync Option">0x28010000<Comment>0x2801</Comment></Value>
			<Value Description="LMAC RX Data Flywheeling Option">0x28000000<Comment>0x2800</Comment></Value>
			<Value Description="RAS Option">0x29780000<Comment>0x2978</Comment></Value>
			<Value Description="RSSI Option">0x29720000<Comment>0x2972</Comment></Value>
			<Value Description="Slot Helper Option">0x29740000<Comment>0x2974</Comment></Value>
			<Value Description="Transmitter Interrupt Option">0x296B0000<Comment>0x296B</Comment></Value>
			<Value Description="Send CWID Option">0x59000000<Comment>0x5900</Comment></Value>
			<Value Description="Confirm OTA Timing Option">0x297D0000<Comment>0x5900</Comment></Value>
		</Field>
		<Field Name="Padding" Pos="39" Size="3" BitFlag="false">
		<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Window Announcement" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Window Announcement">0x0029<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Status CSBK" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Option">0x0022<Comment></Comment></Value>
		</Field>
		<Field Name="Not Specified" Pos="4" Size="7" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="CSBK Opcode" Pos="11" Size="6" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="PF" Pos="11" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="LB" Pos="11" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="FID" Pos="12" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Rest Channel ID" Pos="13" Size="5" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot #" Pos="13" Size="1" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="FL" Pos="13" Size="2" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Channel Usage" Pos="14" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Talkgroup 1" Pos="15" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Talkgroup 2" Pos="16" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Talkgroup 3" Pos="15" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Talkgroup 4" Pos="16" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="15" Size="25" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Cap Plus LC Cach" Size="48" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="2" BitFlag="false">
			<Comment></Comment>
			<Value Description="Option">0x2300<Comment></Comment></Value>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Cypher Burst Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="SLCO" Pos="9" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Option">0x0023<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="9" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Value Description="Option">0x0023<Comment></Comment></Value>
		</Field>
		<Field Name="FID" Pos="9" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="IDofRestChannel" Pos="10" Size="5" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="LBusy" Pos="10" Size="1" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Opcode" Pos="10" Size="2" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Reserved2" Pos="11" Size="3" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="My Site ID" Pos="11" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="ABusy" Pos="11" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="12" Size="33" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="40" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="MDC Header" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="MDC Header">0x0004<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="MBC Cont" Size="44" SecondaryKeyField="3">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="MBC Cont">0x0005<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inb Data Header" Size="44" SecondaryKeyField="3,10,27">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 1" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Status-CRC" Pos="3" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="CRC pass">0x0000<Comment></Comment></Value>
			<Value Description="CRC fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 2" Pos="3" Size="6" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Sig Bits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Burst Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="DPF - Data Packet Format" Pos="10" Size="4" BitFlag="true" BitPos="0">
			<Comment>Is used for data packet identification </Comment>
			<Value Description="Response Header Block">0x0001<Comment></Comment></Value>
			<Value Description="Unconfirmed Data Header">0x0002<Comment></Comment></Value>
			<Value Description="Confirmed Data Header">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="POC - MSB" Pos="10" Size="1" BitFlag="true" BitPos="1">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="10" Size="1" BitFlag="true" BitPos="2">
			<Comment>Reserved for future used</Comment>
			<Data/>
		</Field>
		<Field Name="A - Response Requested" Pos="10" Size="1" BitFlag="true" BitPos="3">
			<Comment>To indicate whether the confirmation of this packet is desired or not. </Comment>
			<Value Description="No Response">0x0000<Comment></Comment></Value>
			<Value Description="Response Required">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="G/I - Group/Individual Destination Address" Pos="10" Size="1" BitFlag="true" BitPos="4">
			<Comment>Group or Individual destination address</Comment>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
			<Value Description="Group">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="POC - Pad Octet Count" Pos="11" Size="4" BitFlag="true" BitPos="0">
			<Comment>Specifies the number of pad octets which have been appended to the user data octets to form an integer number of blocks</Comment>
			<Data/>
		</Field>
		<Field Name="SAP - Service Access Point Identifer" Pos="11" Size="4" BitFlag="true" BitPos="1">
			<Comment>Identifies the Service Access Point to which the data is directed.</Comment>
			<Value Description="Unified Data Transport (UDT)">0x0000<Comment></Comment></Value>
			<Value Description="TCP/IP Header Compression">0x0002<Comment></Comment></Value>
			<Value Description="UDP/IP Header Compression">0x0003<Comment></Comment></Value>
			<Value Description="IP Based Packet Data">0x0004<Comment></Comment></Value>
			<Value Description="Address Resolution Protocol (ARP)">0x0005<Comment></Comment></Value>
			<Value Description="Proprietary Packet Data">0x0009<Comment></Comment></Value>
			<Value Description="Short Data">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="Target" Pos="12" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Source" Pos="15" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="BTF - Blocks to Follow" Pos="18" Size="7" BitFlag="true" BitPos="0">
			<Comment>Specifies the number of blocks in the packet not including the header block </Comment>
			<Data/>
		</Field>
		<Field Name="F - Full Message Flag" Pos="18" Size="1" BitFlag="true" BitPos="7">
			<Comment>Used in the receiver to signify that the Pad Octet Count information element indicates the amount of data being transported in the complete packet</Comment>
			<Value Description="Subsequent tries">0x0000<Comment></Comment></Value>
			<Value Description="First try for the complete packet">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FsnAndOthers" Pos="19" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="44" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EMB" Pos="45" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot Type Bits" Pos="46" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Color Code" Pos="46" Size="4" BitFlag="true" BitPos="4">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="47" Size="19" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="48" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Out Data Header" Size="44" SecondaryKeyField="3,10,27">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 1" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Status-CRC" Pos="3" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="CRC pass">0x0000<Comment></Comment></Value>
			<Value Description="CRC fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 2" Pos="3" Size="6" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Sig Bits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Burst Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="DPF - Data Packet Format" Pos="10" Size="4" BitFlag="true" BitPos="0">
			<Comment>Is used for data packet identification </Comment>
			<Value Description="Response Header Block">0x0001<Comment></Comment></Value>
			<Value Description="Unconfirmed Data Header">0x0002<Comment></Comment></Value>
			<Value Description="Confirmed Data Header">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="POC - MSB" Pos="10" Size="1" BitFlag="true" BitPos="1">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Reserved" Pos="10" Size="1" BitFlag="true" BitPos="2">
			<Comment>Reserved for future used</Comment>
			<Data/>
		</Field>
		<Field Name="A - Response Requested" Pos="10" Size="1" BitFlag="true" BitPos="3">
			<Comment>To indicate whether the confirmation of this packet is desired or not. </Comment>
			<Value Description="No Response">0x0000<Comment></Comment></Value>
			<Value Description="Response Required">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="G/I - Group/Individual Destination Address" Pos="10" Size="1" BitFlag="true" BitPos="4">
			<Comment>Group or Individual destination address</Comment>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
			<Value Description="Group">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="POC - Pad Octet Count" Pos="11" Size="4" BitFlag="true" BitPos="0">
			<Comment>Specifies the number of pad octets which have been appended to the user data octets to form an integer number of blocks</Comment>
			<Data/>
		</Field>
		<Field Name="SAP - Service Access Point Identifer" Pos="11" Size="4" BitFlag="true" BitPos="1">
			<Comment>Identifies the Service Access Point to which the data is directed.</Comment>
			<Value Description="Unified Data Transport (UDT)">0x0000<Comment></Comment></Value>
			<Value Description="TCP/IP Header Compression">0x0002<Comment></Comment></Value>
			<Value Description="UDP/IP Header Compression">0x0003<Comment></Comment></Value>
			<Value Description="IP Based Packet Data">0x0004<Comment></Comment></Value>
			<Value Description="Address Resolution Protocol (ARP)">0x0005<Comment></Comment></Value>
			<Value Description="Proprietary Packet Data">0x0009<Comment></Comment></Value>
			<Value Description="Short Data">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="Target" Pos="12" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Source" Pos="15" Size="3" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="BTF - Blocks to Follow" Pos="18" Size="7" BitFlag="true" BitPos="0">
			<Comment>Specifies the number of blocks in the packet not including the header block </Comment>
			<Data/>
		</Field>
		<Field Name="F - Full Message Flag" Pos="18" Size="1" BitFlag="true" BitPos="7">
			<Comment>Used in the receiver to signify that the Pad Octet Count information element indicates the amount of data being transported in the complete packet</Comment>
			<Value Description="Subsequent tries">0x0000<Comment></Comment></Value>
			<Value Description="First try for the complete packet">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FsnAndOthers" Pos="19" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="CRC" Pos="44" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EMB" Pos="45" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot Type Bits" Pos="46" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Color Code" Pos="46" Size="4" BitFlag="true" BitPos="4">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="47" Size="19" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="44" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inb Encryption Data Header" Size="44" SecondaryKeyField="3,10,13">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 1" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Status-CRC" Pos="3" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="CRC pass">0x0000<Comment></Comment></Value>
			<Value Description="CRC fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 2" Pos="3" Size="6" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Sig Bits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Burst Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="DPF - Data Packet Format" Pos="10" Size="4" BitFlag="true" BitPos="0">
			<Comment>Is used for data packet identification </Comment>
			<Value Description="Encryption Data Header">0x000F<Comment></Comment></Value>
		</Field>
		<Field Name="DPF - Other Bits" Pos="10" Size="4" BitFlag="true" BitPos="2">
			<Comment>Reserved for future used</Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="47" Size="32" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="48" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Out Encryption Data Header" Size="44" SecondaryKeyField="3,10,13">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 1" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Status-CRC" Pos="3" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="CRC pass">0x0000<Comment></Comment></Value>
			<Value Description="CRC fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 2" Pos="3" Size="6" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Sig Bits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Burst Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="DPF - Data Packet Format" Pos="10" Size="4" BitFlag="true" BitPos="0">
			<Comment>Is used for data packet identification </Comment>
			<Value Description="Encryption Data Header">0x000F<Comment></Comment></Value>
		</Field>
		<Field Name="DPF - Other Bits" Pos="10" Size="4" BitFlag="true" BitPos="1">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="47" Size="32" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="44" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inb Unconfirm Data Cont" Size="44" SecondaryKeyField="3,8">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Unconfirm Data Cont">0x0007<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 1" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Status-CRC" Pos="3" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="CRC pass">0x0000<Comment></Comment></Value>
			<Value Description="CRC fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 2" Pos="3" Size="6" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Out Unconfirm Data Cont" Size="44" SecondaryKeyField="3,8">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Unconfirm Data Cont">0x0007<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 1" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Status-CRC" Pos="3" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="CRC pass">0x0000<Comment></Comment></Value>
			<Value Description="CRC fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 2" Pos="3" Size="6" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inb Confirm Data" Size="44" SecondaryKeyField="3,8">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Confirm Data">0x0008<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 1" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Status-CRC" Pos="3" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="CRC pass">0x0000<Comment></Comment></Value>
			<Value Description="CRC fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 2" Pos="3" Size="6" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Out Confirm Data" Size="44" SecondaryKeyField="3,8">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Confirm Data">0x0008<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 1" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Status-CRC" Pos="3" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="CRC pass">0x0000<Comment></Comment></Value>
			<Value Description="CRC fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 2" Pos="3" Size="6" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inb Voice Header" Size="44" SecondaryKeyField="3,28">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 1" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Status-CRC" Pos="3" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="CRC pass">0x0000<Comment></Comment></Value>
			<Value Description="CRC fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 2" Pos="3" Size="6" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="FLCO - Full Link Control Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>This indicates the Link Control Format opcode.This has values of 0 through 31 and is set appropriately for the different commands or information and shall be determined by the manufacturer since this is a non-standard format.</Comment>
			<Value Description="Group Voice Channel User Opcode">0X00<Comment>both inbound and outbound messages.</Comment></Value>
		</Field>
		<Field Name="R - Reserved" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>This indicates that the information is protected or not.</Comment>
			<Value Description="Non-protect Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protect Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>This is the Manufacturers ID.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="12" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="No Priority">0x0000<Comment></Comment></Value>
			<Value Description="Priority 1 (Low)">0x0001<Comment></Comment></Value>
			<Value Description="Priority 2 (Medium)">0x0002<Comment></Comment></Value>
			<Value Description="Priority 3 (High)">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="OVCM - Open Voice Call Mode" Pos="12" Size="1" BitFlag="true" BitPos="2">
			<Comment>Open Voice Call Mode</Comment>
			<Value Description="Non-OVCM Call">0x0000<Comment></Comment></Value>
			<Value Description="OVCM Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast" Pos="12" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="Non-broadcast Service">0x0000<Comment></Comment></Value>
			<Value Description="Broadcast Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved01" Pos="12" Size="2" BitFlag="true" BitPos="4">
			<Comment>Reserved for Future Used</Comment>
			<Data/>
		</Field>
		<Field Name="Privacy" Pos="12" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Non Secure">0x0000<Comment></Comment></Value>
			<Value Description="Secure">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency" Pos="12" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Non-emergency Service">0x0000<Comment></Comment></Value>
			<Value Description="Emergency Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Group Address" Pos="13" Size="3" BitFlag="false">
			<Comment>This field defines the 24-bit group identifier which uniquely defines a group within a System.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="16" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction.</Comment>
			<Data/>
		</Field>
		<Field Name="Insignificant Data 1" Pos="19" Size="4" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot Type - Data Type" Pos="23" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot Type - Color Code" Pos="23" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Insignificant Data 2" Pos="24" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="RSSI" Pos="26" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Insignificant Data 3" Pos="28" Size="15" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Out Voice Header" Size="44" SecondaryKeyField="3,28">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Voice Header">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 1" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Status-CRC" Pos="3" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="CRC pass">0x0000<Comment></Comment></Value>
			<Value Description="CRC fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 2" Pos="3" Size="6" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="FLCO - Full Link Control Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>This indicates the Link Control Format opcode.This has values of 0 through 31 and is set appropriately for the different commands or information and shall be determined by the manufacturer since this is a non-standard format.</Comment>
			<Value Description="Group Voice Channel User Opcode">0X00<Comment>both inbound and outbound messages.</Comment></Value>
		</Field>
		<Field Name="R - Reserved" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>This indicates that the information is protected or not.</Comment>
			<Value Description="Non-protect Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protect Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>This is the Manufacturers ID.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Priority Level" Pos="12" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="No Priority">0x0000<Comment></Comment></Value>
			<Value Description="Priority 1 (Low)">0x0001<Comment></Comment></Value>
			<Value Description="Priority 2 (Medium)">0x0002<Comment></Comment></Value>
			<Value Description="Priority 3 (High)">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="OVCM - Open Voice Call Mode" Pos="12" Size="1" BitFlag="true" BitPos="2">
			<Comment>Open Voice Call Mode</Comment>
			<Value Description="Non-OVCM Call">0x0000<Comment></Comment></Value>
			<Value Description="OVCM Call">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Broadcast" Pos="12" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="Non-broadcast Service">0x0000<Comment></Comment></Value>
			<Value Description="Broadcast Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved01" Pos="12" Size="2" BitFlag="true" BitPos="4">
			<Comment>Reserved for Future Used</Comment>
			<Data/>
		</Field>
		<Field Name="Privacy" Pos="12" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="Non Secure">0x0000<Comment></Comment></Value>
			<Value Description="Secure">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Emergency" Pos="12" Size="1" BitFlag="true" BitPos="7">
			<Comment></Comment>
			<Value Description="Non-emergency Service">0x0000<Comment></Comment></Value>
			<Value Description="Emergency Service">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Group Address" Pos="13" Size="3" BitFlag="false">
			<Comment>This field defines the 24-bit group identifier which uniquely defines a group within a System.</Comment>
			<Data/>
		</Field>
		<Field Name="Source Address" Pos="16" Size="3" BitFlag="false">
			<Comment>This field identifies the individual subscriber unit which originates the transaction.</Comment>
			<Data/>
		</Field>
		<Field Name="Insignificant Data 1" Pos="19" Size="4" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot Type - Data Type" Pos="23" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot Type - Color Code" Pos="23" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Insignificant Data 2" Pos="24" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="RSSI" Pos="26" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Insignificant Data 3" Pos="28" Size="15" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inb ESYNC Header" Size="44" SecondaryKeyField="3,8">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="ESYNC">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 1" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Status-CRC" Pos="3" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="CRC pass">0x0000<Comment></Comment></Value>
			<Value Description="CRC fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 2" Pos="3" Size="6" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Out ESYNC Header" Size="44" SecondaryKeyField="3,8">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="ESYNC">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 1" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Status-CRC" Pos="3" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="CRC pass">0x0000<Comment></Comment></Value>
			<Value Description="CRC fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 2" Pos="3" Size="6" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inb Voice Terminator" Size="44" SecondaryKeyField="3,8">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 1" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Status-CRC" Pos="3" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="CRC pass">0x0000<Comment></Comment></Value>
			<Value Description="CRC fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 2" Pos="3" Size="6" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Out Voice Terminator" Size="44" SecondaryKeyField="3,8">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Voice Terminator">0x0002<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 1" Pos="3" Size="1" BitFlag="true" BitPos="0">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Status-CRC" Pos="3" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="CRC pass">0x0000<Comment></Comment></Value>
			<Value Description="CRC fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits 2" Pos="3" Size="6" BitFlag="true" BitPos="8">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inbound Bad Voice frame, Error!!!" Size="44" SecondaryKeyField="3,6,17">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Voice Burst Type">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Bad Voice Bit" Pos="5" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Bad Voice">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits 1" Pos="5" Size="2" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Voice Flywheel Bit" Pos="5" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="sync loss, voice flywheel in DSP">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits 2" Pos="5" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Sync Pattern" Pos="6" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Voice Sync">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-EMB Bit" Pos="6" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="No EMB">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits 3" Pos="6" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-LC Bit" Pos="6" Size="1" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Value Description="embeded LC">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits4" Pos="6" Size="3" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="VoiceSizeAndVoice" Pos="7" Size="10" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Other Data" Pos="8" Size="25" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="9" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inbound DSP Flywheeling Voice frame, Error!!!" Size="44" SecondaryKeyField="3,8,17">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Voice Burst Type">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Bad Voice Bit" Pos="5" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Bad Voice">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits 1" Pos="5" Size="2" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Voice Flywheel Bit" Pos="5" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="sync loss, voice flywheel in DSP">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits 2" Pos="5" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Sync Pattern" Pos="6" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Voice Sync">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-EMB Bit" Pos="6" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="No EMB">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits 3" Pos="6" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-LC Bit" Pos="6" Size="1" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Value Description="embeded LC">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits4" Pos="6" Size="3" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="VoiceSizeAndVoice" Pos="7" Size="10" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Other Data" Pos="8" Size="25" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="9" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inbound Voice Burst E EMB_LC Fail, Error!!!" Size="44" SecondaryKeyField="3,4,14,20">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Voice Burst Type">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Embeded LC CRC" Pos="5" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Embeded LC CRC Fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits" Pos="5" Size="7" BitFlag="true" BitPos="1">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Bad Voice Bit" Pos="7" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Bad Voice">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits 1" Pos="7" Size="2" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Voice Flywheel Bit" Pos="7" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="sync loss, voice flywheel in DSP">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits 2" Pos="7" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Sync Pattern" Pos="8" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Voice Sync">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-EMB Bit" Pos="8" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Other Bits 3" Pos="8" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-LC Bit" Pos="8" Size="1" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Value Description="embeded LC">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits4" Pos="8" Size="3" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="VoiceSizeAndVoice" Pos="9" Size="10" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EMB-Other Bits" Pos="10" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EMB-Color Code" Pos="10" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Other Data" Pos="11" Size="24" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="12" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inbound Voice Burst A" Size="44" SecondaryKeyField="3,10,17">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Voice Burst Type">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
			<Value Description="load voice only">0x0007<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Bad Voice Bit" Pos="5" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Bad Voice">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits 1" Pos="5" Size="2" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Voice Flywheel Bit" Pos="5" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="sync loss, voice flywheel in DSP">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits 2" Pos="5" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
		</Field>
		<Field Name="EmbSigBits-Sync Pattern" Pos="6" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Voice Sync">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-EMB Bit" Pos="6" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Other Bits 3" Pos="6" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-LC Bit" Pos="6" Size="1" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Value Description="embeded LC">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits4" Pos="6" Size="3" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="VoiceSizeAndVoice" Pos="7" Size="10" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Other Data" Pos="10" Size="25" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="11" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inbound Voice Burst E frame 1" Size="44" SecondaryKeyField="3,14,20">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Voice Burst Type">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Embeded LC CRC" Pos="5" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Embeded LC CRC Fail">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Status-Other Bits" Pos="5" Size="7" BitFlag="true" BitPos="1">
			<Comment>Reserved field inserted by Motorola Internal AirTracer</Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Bad Voice Bit" Pos="7" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Bad Voice">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits 1" Pos="7" Size="2" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Voice Flywheel Bit" Pos="7" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="sync loss, voice flywheel in DSP">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits 2" Pos="7" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Sync Pattern" Pos="8" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Voice Sync">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-EMB Bit" Pos="8" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Other Bits 3" Pos="8" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-LC Bit" Pos="8" Size="1" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Value Description="embeded LC">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits4" Pos="8" Size="3" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="VoiceSizeAndVoice" Pos="9" Size="10" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EMB-Other Bits" Pos="10" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EMB-Color Code" Pos="10" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Other Data" Pos="11" Size="24" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="12" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inbound Voice Burst B,C,D,F frame 1" Size="44" SecondaryKeyField="3,11,19">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Voice Burst Type">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Bad Voice Bit" Pos="5" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Bad Voice">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits 1" Pos="5" Size="2" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Voice Flywheel Bit" Pos="5" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="sync loss, voice flywheel in DSP">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits 2" Pos="5" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Sync Pattern" Pos="6" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Voice Sync">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-EMB Bit" Pos="6" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="EMB">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits 3" Pos="6" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-LC Bit" Pos="6" Size="1" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Value Description="embeded LC">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits4" Pos="6" Size="3" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="VoiceSizeAndVoice" Pos="7" Size="10" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EMB-Other Bits" Pos="8" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EMB-Color Code" Pos="8" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Other Data" Pos="9" Size="24" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="10" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inbound Voice Burst frame 2 or 3" Size="44" SecondaryKeyField="3,11,17">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Voice Burst Type">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Bad Voice Bit" Pos="5" Size="1" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Bad Voice">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits 1" Pos="5" Size="2" BitFlag="true" BitPos="1">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Voice Flywheel Bit" Pos="5" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Value Description="sync loss, voice flywheel in DSP">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits 2" Pos="5" Size="4" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-Sync Pattern" Pos="6" Size="2" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Voice Sync">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-EMB Bit" Pos="6" Size="1" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="No EMB">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits 3" Pos="6" Size="1" BitFlag="true" BitPos="3">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="EmbSigBits-LC Bit" Pos="6" Size="1" BitFlag="true" BitPos="4">
			<Comment></Comment>
			<Value Description="embeded LC">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits-Other Bits4" Pos="6" Size="3" BitFlag="true" BitPos="5">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="VoiceSizeAndVoice" Pos="7" Size="10" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Other Data" Pos="8" Size="25" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="9" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Outbound Voice Burst" Size="44" SecondaryKeyField="3,6">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Voice Burst Type">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inbound TI Bogus Frame" Size="44" SecondaryKeyField="3,6">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="BOGUS FRAME Type">0x0024<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Outbound TI Bogus Frame" Size="44" SecondaryKeyField="3,6">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="BOGUS FRAME Type">0x0024<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data" Pos="4" Size="39" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Outbound BSI Short Data Header" Size="44" SecondaryKeyField="3,8,13,18,22,25">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Slot" Pos="3" Size="1" BitFlag="false">
			<Value Description="Slot One">0x0000<Comment></Comment></Value>
			<Value Description="Slot Two">0x0080<Comment></Comment></Value>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
			<Value Description="Frame Length">0x0009<Comment></Comment></Value>
		</Field>
		<Field Name="EmbSigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
			<Value Description="Header Data Size">0x0060<Comment></Comment></Value>
		</Field>
		<Field Name="DPF - Data Packet Format" Pos="10" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Short Data : Defined">0x000D<Comment></Comment></Value>
		</Field>
		<Field Name="AB - Appended Blocks" Pos="10" Size="2" BitFlag="true" BitPos="4">
			<Comment></Comment>
		</Field>
		<Field Name="A - Response Requested" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
			<Value Description="No Response">0x0000<Comment></Comment></Value>
			<Value Description="Need Response">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="G/I - Group/Individual Destination Address" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>Group or Individual destination address</Comment>
			<Value Description="Individual">0x0000<Comment></Comment></Value>
			<Value Description="Group">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="BTF - Block To Follow" Pos="11" Size="4" BitFlag="true" BitPos="0">
			<Data/>
		</Field>
		<Field Name="SAP - Service Access Point ID" Pos="11" Size="4" BitFlag="true" BitPos="4">
			<Value Description="Short Data">0x000A<Comment></Comment></Value>
		</Field>
		<Field Name="Target" Pos="12" Size="3" BitFlag="false">
			<Comment></Comment>
			<Value Description="Destination Logical Link ID">0xFFFEF0<Comment></Comment></Value>
		</Field>
		<Field Name="Source" Pos="15" Size="3" BitFlag="false">
			<Comment></Comment>
			<Value Description="Source Logical Link ID">0XFFFECA<Comment></Comment></Value>
		</Field>
		<Field Name="F - Full Message Flag" Pos="18" Size="1" BitFlag="true" BitPos="0">
			<Comment>Used in the receiver to signify that the Pad Octet Count information element indicates the amount of data being transported in the complete packet</Comment>
			<Value Description="Subsequent tries">0x0000<Comment></Comment></Value>
			<Value Description="First try for the complete packet">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="S - SAQ" Pos="18" Size="1" BitFlag="true" BitPos="1">
			<Data/>
		</Field>
		<Field Name="DD Format" Pos="18" Size="6" BitFlag="true" BitPos="2">
			<Comment></Comment>
			<Value Description="Unicode UTF-16BE">0x0014<Comment></Comment></Value>
		</Field>
		<Field Name="Bit Padding 0" Pos="19" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="CRC Value" Pos="20" Size="2" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Bit Padding 1" Pos="22" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Burst Type" Pos="23" Size="4" BitFlag="true" BitPos="0">
			<Comment></Comment>
			<Value Description="Data Header">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Color Code" Pos="23" Size="4" BitFlag="true" BitPos="4">
			<Data/>
		</Field>
		<Field Name="Data" Pos="24" Size="19" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Outbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Outbound DBH SyncBeacon" Size="44" SecondaryKeyField="3,20">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="DBH Sync Beacon">0x000B<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Value Description="SyncBeacon">0x0017</Value>
		</Field>
		<Field Name="LE Bit" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Hop Count" Pos="12" Size="4" BitFlag="true" BitPos="0">
			<Data/>
		</Field>
		<Field Name="SLOT" Pos="12" Size="1" BitFlag="true" BitPos="4">
			<Value Description="Slot One">0x0000<Comment></Comment></Value>
			<Value Description="Slot Two">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Original Fork Number" Pos="12" Size="3" BitFlag="true" BitPos="5">
			<Data/>
		</Field>
		<Field Name="Source Repeater ID" Pos="13" Size="2" BitFlag="false">
			<Data/>
		</Field>
		<Field Name="Repeater Mode Bit" Pos="15" Size="2" BitFlag="false">
			<Data/>
		</Field>
		<Field Name="Repeater Service Bit" Pos="17" Size="3" BitFlag="false">
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Data/>
		</Field>
		<Field Name="Data" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Outbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inbound DBH SyncBeacon" Size="44" SecondaryKeyField="3,20">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="DBH Sync Beacon">0x000B<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Value Description="SyncBeacon">0x0017</Value>
		</Field>
		<Field Name="LE Bit" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment></Comment>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Manufacturer's ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Standard MFID">0x0000<Comment></Comment></Value>
			<Value Description="Motorola Proprietary MFID">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="Hop Count" Pos="12" Size="4" BitFlag="true" BitPos="0">
			<Data/>
		</Field>
		<Field Name="SLOT" Pos="12" Size="1" BitFlag="true" BitPos="4">
			<Value Description="Slot One">0x0000<Comment></Comment></Value>
			<Value Description="Slot Two">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="Original Fork Number" Pos="12" Size="3" BitFlag="true" BitPos="5">
			<Data/>
		</Field>
		<Field Name="Source Repeater ID" Pos="13" Size="2" BitFlag="false">
			<Data/>
		</Field>
		<Field Name="Repeater Mode Bit" Pos="15" Size="2" BitFlag="false">
			<Data/>
		</Field>
		<Field Name="Repeater Service Bit" Pos="17" Size="3" BitFlag="false">
			<Data/>
		</Field>
		<Field Name="CRC" Pos="20" Size="2" BitFlag="false">
			<Data/>
		</Field>
		<Field Name="Data" Pos="22" Size="21" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Neptune Control Channel Short LC" Size="44" SecondaryKeyField="3,7">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Type" Pos="2" Size="2" BitFlag="false">
			<Comment></Comment>
			<Value Description="NEP_SLC">0x3000<Comment></Comment></Value>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment>Content of the length which is 6</Comment>
			<Value Description="CACH Message Length">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="6" Size="2" BitFlag="false">
			<Comment>Content of CypherBurstEmbSigBits</Comment>
			<Value Description="NULL">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Data Bits" Pos="8" Size="2" BitFlag="false">
			<Comment>Size in bits which 0x1C(28) bits of CACH information</Comment>
			<Value Description="Trident Data Bits">0x001C<Comment></Comment></Value>
		</Field>
		<Field Name="Short LC OpCode" Pos="10" Size="1" BitFlag="false">
			<Value Description="Neptune Control Channel SLC">0x0A<Comment></Comment></Value>
			<Data/>
		</Field>
		<Field Name="Short LC Value" Pos="11" Size="3" BitFlag="false">
			<Data/>
		</Field>
		<Field Name="CACH Array Pos 6" Pos="14" Size="2" BitFlag="false">
			<Comment></Comment>
			<Value Description="NULL">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="CACH Array Pos 7" Pos="16" Size="2" BitFlag="false">
			<Comment></Comment>
			<Value Description="NULL">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="DATA" Pos="18" Size="26" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Neptune Trunking Channel Short LC" Size="44" SecondaryKeyField="3,7">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Type" Pos="2" Size="2" BitFlag="false">
			<Comment></Comment>
			<Value Description="NEP_SLC">0x3000<Comment></Comment></Value>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment>Content of the length which is 6</Comment>
			<Value Description="CACH Message Length">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="6" Size="2" BitFlag="false">
			<Comment>Content of CypherBurstEmbSigBits</Comment>
			<Value Description="NULL">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Data Bits" Pos="8" Size="2" BitFlag="false">
			<Comment>Size in bits which 0x1C(28) bits of CACH information</Comment>
			<Value Description="Trident Data Bits">0x001C<Comment></Comment></Value>
		</Field>
		<Field Name="Short LC OpCode" Pos="10" Size="1" BitFlag="false">
			<Value Description="Neptune Trunking Channel SLC">0x09<Comment></Comment></Value>
			<Data/>
		</Field>
		<Field Name="Short LC Value" Pos="11" Size="3" BitFlag="false">
			<Data/>
		</Field>
		<Field Name="CACH Array Pos 6" Pos="14" Size="2" BitFlag="false">
			<Comment></Comment>
			<Value Description="NULL">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="CACH Array Pos 7" Pos="16" Size="2" BitFlag="false">
			<Comment></Comment>
			<Value Description="NULL">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="DATA" Pos="18" Size="26" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Neptune PMON Trunking Channel Short LC" Size="44" SecondaryKeyField="3,7">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Type" Pos="2" Size="2" BitFlag="false">
			<Comment></Comment>
			<Value Description="NEP_SLC">0x3000<Comment></Comment></Value>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment>Content of the length which is 6</Comment>
			<Value Description="CACH Message Length">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="6" Size="2" BitFlag="false">
			<Comment>Content of CypherBurstEmbSigBits</Comment>
			<Value Description="NULL">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Data Bits" Pos="8" Size="2" BitFlag="false">
			<Comment>Size in bits which 0x1C(28) bits of CACH information</Comment>
			<Value Description="Trident Data Bits">0x001C<Comment></Comment></Value>
		</Field>
		<Field Name="Short LC OpCode" Pos="10" Size="1" BitFlag="false">
			<Value Description="Neptune PMON Control Channel SLC">0x0F<Comment></Comment></Value>
			<Data/>
		</Field>
		<Field Name="Short LC Value" Pos="11" Size="3" BitFlag="false">
			<Data/>
		</Field>
		<Field Name="CACH Array Pos 6" Pos="14" Size="2" BitFlag="false">
			<Comment></Comment>
			<Value Description="NULL">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="CACH Array Pos 7" Pos="16" Size="2" BitFlag="false">
			<Comment></Comment>
			<Value Description="NULL">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="DATA" Pos="18" Size="26" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Neptune PMON Control Channel Short LC" Size="44" SecondaryKeyField="3,7">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Type" Pos="2" Size="2" BitFlag="false">
			<Comment></Comment>
			<Value Description="NEP_SLC">0x3000<Comment></Comment></Value>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment>Content of the length which is 6</Comment>
			<Value Description="CACH Message Length">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Reserved" Pos="6" Size="2" BitFlag="false">
			<Comment>Content of CypherBurstEmbSigBits</Comment>
			<Value Description="NULL">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="Data Bits" Pos="8" Size="2" BitFlag="false">
			<Comment>Size in bits which 0x1C(28) bits of CACH information</Comment>
			<Value Description="Trident Data Bits">0x001C<Comment></Comment></Value>
		</Field>
		<Field Name="Short LC OpCode" Pos="10" Size="1" BitFlag="false">
			<Value Description="Neptune PMON Control Channel SLC">0x0E<Comment></Comment></Value>
			<Data/>
		</Field>
		<Field Name="Short LC Value" Pos="11" Size="3" BitFlag="false">
			<Data/>
		</Field>
		<Field Name="CACH Array Pos 6" Pos="14" Size="2" BitFlag="false">
			<Comment></Comment>
			<Value Description="NULL">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="CACH Array Pos 7" Pos="16" Size="2" BitFlag="false">
			<Comment></Comment>
			<Value Description="NULL">0x0000<Comment></Comment></Value>
		</Field>
		<Field Name="DATA" Pos="18" Size="26" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
	</PDU>
	<PDU Name="Outb Neptune CSBK Neighbor Site" Size="44" SecondaryKeyField="3,8,11,13">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Neptune CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune Neighbor Site CSBK, denoted as: %000001</Comment>
			<Value Description="NEP_NEIGHBOR_SITE_CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Data" Pos="12" Size="31" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Outbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Outb Neptune CSBK Channel Grant" Size="44" SecondaryKeyField="3,8,11,13">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Neptune CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune Channel Grant CSBK, denoted as: %000011</Comment>
			<Value Description="NEP_CHNL_GRANT_CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Data" Pos="12" Size="31" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Outbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inb Neptune CSBK Call Req" Size="44" SecondaryKeyField="3,8,11,13">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Neptune CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune Call Request CSBK, denoted as: %010001</Comment>
			<Value Description="NEP_CALL_REQ_CSBK">0x0011<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Data" Pos="12" Size="31" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Outb Neptune CSBK Call Req" Size="44" SecondaryKeyField="3,8,11,13">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Neptune CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune Call Request CSBK, denoted as: %010001</Comment>
			<Value Description="NEP_CALL_REQ_CSBK">0x0011<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Data" Pos="12" Size="31" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Outbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Outb Neptune CSBK NAK RESP" Size="44" SecondaryKeyField="3,8,11,13">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Neptune CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune NAK RESP CSBK, denoted as: %010000</Comment>
			<Value Description="NEP_NAK_RESP_CSBK">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Data" Pos="12" Size="31" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Outbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inb Neptune CSBK NAK RESP" Size="44" SecondaryKeyField="3,8,11,13">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Neptune CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune NAK RESP CSBK, denoted as: %010000</Comment>
			<Value Description="NEP_NAK_RESP_CSBK">0x0010<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Data" Pos="12" Size="31" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Outb Neptune CSBK ACK RESP" Size="44" SecondaryKeyField="3,8,11,13">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Neptune CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune ACK RESP CSBK, denoted as: %010010</Comment>
			<Value Description="NEP_ACK_RESP_CSBK">0x0012<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Data" Pos="12" Size="31" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Outbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inb Neptune CSBK ACK RESP" Size="44" SecondaryKeyField="3,8,11,13">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Neptune CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune ACK RESP CSBK, denoted as: %010010</Comment>
			<Value Description="NEP_ACK_RESP_CSBK">0x0012<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Data" Pos="12" Size="31" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inb Neptune CSBK Registration Request" Size="44" SecondaryKeyField="3,8,11,13">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Neptune CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune Registration Request CSBK, denoted as: %010100</Comment>
			<Value Description="NEP_REG_REQ_CSBK">0x0014<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Data" Pos="12" Size="31" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Outb Neptune CSBK Registration Request" Size="44" SecondaryKeyField="3,8,11,13">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Neptune CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune Registration Request CSBK, denoted as: %010100</Comment>
			<Value Description="NEP_REG_REQ_CSBK">0x0014<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Data" Pos="12" Size="31" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Outbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Inb Neptune CSBK DeRegistration Request" Size="44" SecondaryKeyField="3,8,11,13">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Neptune CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune DeRegistration Request CSBK, denoted as: %010101</Comment>
			<Value Description="NEP_DEREG_REQ_CSBK">0x0015<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Data" Pos="12" Size="31" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Inbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Inbound">0x0001<Comment></Comment></Value>
		</Field>
	</PDU>
	<PDU Name="Outb Neptune CSBK DeRegistration Request" Size="44" SecondaryKeyField="3,8,11,13">
		<Comment></Comment>
		<Field Name="Peer ID" Pos="0" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Slot ID" Pos="1" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Type" Pos="2" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Neptune CSBK">0x0003<Comment></Comment></Value>
		</Field>
		<Field Name="Status" Pos="3" Size="1" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Length" Pos="4" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="SigBits" Pos="6" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="Data Size" Pos="8" Size="2" BitFlag="false">
			<Comment></Comment>
		</Field>
		<Field Name="CSBKO - CSBK Opcode" Pos="10" Size="6" BitFlag="true" BitPos="0">
			<Comment>The Opcode will indicate the Neptune DeRegistration Request CSBK, denoted as: %010101</Comment>
			<Value Description="NEP_DEREG_REQ_CSBK">0x0015<Comment></Comment></Value>
		</Field>
		<Field Name="PF - Protect Flag" Pos="10" Size="1" BitFlag="true" BitPos="6">
			<Comment>this designates the protection mode for this CSBK</Comment>
			<Value Description="Non-protected Mode">0x0000<Comment></Comment></Value>
			<Value Description="Protected Mode">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="LB - Last Block" Pos="10" Size="1" BitFlag="true" BitPos="7">
			<Comment>this indicates whether more CSBKs should be expected in this packet</Comment>
			<Value Description="More CSBK">0x0000<Comment></Comment></Value>
			<Value Description="Last CSBK">0x0001<Comment></Comment></Value>
		</Field>
		<Field Name="FID - Feature Set ID" Pos="11" Size="1" BitFlag="false">
			<Comment>identifies the manufacturer for non-standard control channel messaging.</Comment>
			<Value Description="Trident MFID">0x0006<Comment></Comment></Value>
		</Field>
		<Field Name="Data" Pos="12" Size="31" BitFlag="false">
			<Comment></Comment>
			<Data/>
		</Field>
		<Field Name="Outbound Flag" Pos="43" Size="1" BitFlag="false">
			<Comment></Comment>
			<Value Description="Outbound">0x0000<Comment></Comment></Value>
		</Field>
	</PDU>
</Protocol>
